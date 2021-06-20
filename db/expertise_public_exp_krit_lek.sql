create table exp_krit_lek
(
    id          serial not null
        constraint exp_krit_lek_pk
            primary key,
    id_krit     integer
        constraint exp_krit_lek_exp_krit_str_id_fk
            references exp_krit_str,
    id_std_prep integer
        constraint exp_krit_lek_exp_std_prep_id_fk
            references exp_std_prep
);

alter table exp_krit_lek
    owner to exp_user;

create unique index exp_krit_lek_id_uindex
    on exp_krit_lek (id);

create index exp_krit_lek_id_std_prep_index
    on exp_krit_lek (id_std_prep);

INSERT INTO public.exp_krit_lek (id, id_krit, id_std_prep) VALUES (5, 291, 80);
INSERT INTO public.exp_krit_lek (id, id_krit, id_std_prep) VALUES (1, 291, 76);
INSERT INTO public.exp_krit_lek (id, id_krit, id_std_prep) VALUES (6, 291, 81);
INSERT INTO public.exp_krit_lek (id, id_krit, id_std_prep) VALUES (4, 291, 79);
INSERT INTO public.exp_krit_lek (id, id_krit, id_std_prep) VALUES (2, 291, 77);
INSERT INTO public.exp_krit_lek (id, id_krit, id_std_prep) VALUES (7, 291, 82);
INSERT INTO public.exp_krit_lek (id, id_krit, id_std_prep) VALUES (3, 291, 78);
INSERT INTO public.exp_krit_lek (id, id_krit, id_std_prep) VALUES (8, 292, 76);
INSERT INTO public.exp_krit_lek (id, id_krit, id_std_prep) VALUES (9, 292, 77);
INSERT INTO public.exp_krit_lek (id, id_krit, id_std_prep) VALUES (10, 293, 136);
INSERT INTO public.exp_krit_lek (id, id_krit, id_std_prep) VALUES (11, 293, 137);
INSERT INTO public.exp_krit_lek (id, id_krit, id_std_prep) VALUES (12, 293, 138);