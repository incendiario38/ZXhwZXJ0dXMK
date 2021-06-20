create table exp_std
(
    id_std integer not null
        constraint exp_std_id_pk
            primary key,
    std    varchar(400),
    vz_kat varchar(10),
    prikaz varchar(200),
    phase  integer,
    doc    varchar(200),
    vid    integer
);

comment on column exp_std.doc is 'Ссылка на документ';

alter table exp_std
    owner to exp_user;

create unique index exp_std_id_uindex
    on exp_std (id_std);

INSERT INTO public.exp_std (id_std, std, vz_kat, prikaz, phase, doc, vid) VALUES (2, 'Стандарт специализированной медицинской помощи при остром инфаркте миокарда (с подъемом сегмента ST электрокардиограммы)', 'взрослые', 'Приказ Минздрава России от 01.07.2015 N 404ан', 1, '/docs/Приказ 404ан.docx', 0);
INSERT INTO public.exp_std (id_std, std, vz_kat, prikaz, phase, doc, vid) VALUES (1, 'Стандарт медицинской помощи взрослым при остром коронарном синдроме без подъема сегмента ST электрокардиограммы (диагностика, лечение и диспансерное наблюдение)', 'взрослые', 'Приказ Минздрава России от 02.03.2021 N 158н', 0, '/docs/Приказ 158н.docx', 0);