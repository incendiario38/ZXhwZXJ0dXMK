create table exp_krit_usl
(
    id         serial not null
        constraint exp_krit_usl_pk
            primary key,
    id_krit    integer
        constraint exp_krit_usl_exp_krit_str_id_fk
            references exp_krit_str,
    period     integer,
    id_std_usl integer
        constraint exp_krit_usl_exp_std_usl_id_fk
            references exp_std_usl
);

alter table exp_krit_usl
    owner to exp_user;

create unique index exp_krit_usl_id_uindex
    on exp_krit_usl (id);

create index exp_krit_usl_id_std_usl_index
    on exp_krit_usl (id_std_usl);

INSERT INTO public.exp_krit_usl (id, id_krit, period, id_std_usl) VALUES (1, 287, 5, 39);
INSERT INTO public.exp_krit_usl (id, id_krit, period, id_std_usl) VALUES (3, 288, 10, 125);
INSERT INTO public.exp_krit_usl (id, id_krit, period, id_std_usl) VALUES (2, 288, 10, 64);
INSERT INTO public.exp_krit_usl (id, id_krit, period, id_std_usl) VALUES (4, 289, null, 44);