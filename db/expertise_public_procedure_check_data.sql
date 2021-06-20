create procedure check_data(sluch_id integer)
    language sql
as $$
update exp_sluch set status = 0 where id = sluch_id;
/*Заполнение номера стандарта и критерия*/
update exp_sluch set id_std = (select s.id_std from exp_sluch m, exp_patient p,  exp_std s where m.id = sluch_id
                                                                                             and p.id_pers = m.id_pers and m.usl_ok = s.vid and m.phase = s.phase
                                                                                             and (case when date_part('year',age(current_date, p.dr)) >= 18 then 'взрослые' else 'дети' end) =  s.vz_kat),
                     id_krit = (select z.id from exp_sluch m, exp_patient p, exp_krit_zag z where m.id = sluch_id
                                                                                              and p.id_pers = m.id_pers and m.usl_ok = z.vid and m.phase = z.phase
                                                                                              and strpos(z.mkb,m.mkb) > 0
                                                                                              and (case when date_part('year',age(current_date, p.dr)) >= 18 then 'взрослые' else 'дети' end) =  z.vz)
where id = sluch_id;

/*Обнуление протокола*/
update exp_sluch_usl set no_std = 0 where id_sluch = sluch_id;
update exp_sluch_lek set no_std = 0 where id_sluch = sluch_id;
delete from exp_result where id_sluch = sluch_id;

/*Проверка услуг и лек на вхождение в стандарт*/
update exp_sluch_usl set no_std = 1
where id in (select u.id from exp_sluch_usl u, exp_sluch s where s.id = sluch_id
                                                             and u.id_sluch = s.id
                                                             and not exists (select 1 from exp_std_usl p where p.id_std = s.id_std and p.kod_usl = u.usl_code));

update exp_sluch_lek set no_std = 1
where id in (select l.id from exp_sluch_lek l, exp_sluch s where s.id = sluch_id
                                                             and l.id_sluch = s.id
                                                             and not exists (select 1 from exp_std_prep p where p.id_std = s.id_std and p.name = l.lek_name));

/* Добавление критериев для контроля */
insert into exp_result --(sluch_id, id_krit_str)
select nextval('exp_result_id_seq'::regclass), s.id, k.id, 0 from exp_krit_str k, exp_sluch s where k.id_zag = s.id_krit and s.id = sluch_id;

update exp_result e
set status = case when (select count(*)
                        from exp_sluch s,
                             exp_sluch_usl u,
                             exp_krit_usl d,
                             exp_std_usl t
                        where s.id = u.id_sluch
                          and u.usl_code = t.kod_usl
                          and t.id = d.id_std_usl
                          and d.id_krit = e.id_krit_str
                          and s.id = e.id_sluch)  = 0 then 0 else 1 end
where id_sluch = sluch_id;

update exp_result e
set status = case when (select count(*)
                        from exp_sluch s,
                             exp_sluch_lek u,
                             exp_krit_lek d,
                             exp_std_prep t
                        where s.id = u.id_sluch
                          and u.lek_name = t.name
                          and t.id = d.id_std_prep
                          and d.id_krit = e.id_krit_str
                          and s.id = e.id_sluch) = 0 then 0 else 1 end
where id_sluch = sluch_id
  and e.status = 0;

update exp_result e
set status = 2
where
        e.id_sluch = sluch_id
  and e.status = 0
  and not exists (select 1 from exp_krit_usl d, exp_std_usl t
                  where t.id = d.id_std_usl
                    and d.id_krit = e.id_krit_str)
  and not exists (select 1 from
                               exp_krit_lek d,
                               exp_std_prep t
                  where t.id = d.id_std_prep
                    and d.id_krit = e.id_krit_str);

update exp_sluch set status = (case when (select count(*) from exp_result e where id_sluch = sluch_id and e.status = 0) = 0 then 1 else 2 end)
where id = sluch_id;


$$;

alter procedure check_data(integer) owner to exp_user;

