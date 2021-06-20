create table exp_sluch_usl
(
    id       serial not null
        constraint exp_sluch_usl_pk
            primary key,
    id_sluch integer
        constraint exp_sluch_usl_exp_sluch_id_fk
            references exp_sluch,
    usl_code varchar(255)
        constraint exp_sluch_usl_exp_usl_usl_code_fk
            references exp_usl,
    date_usl timestamp,
    krit_zag varchar(255),
    krit_str varchar(255),
    no_std   integer default 0
);

comment on column exp_sluch_usl.no_std is 'Признак отсутствия в стандарте';

alter table exp_sluch_usl
    owner to exp_user;

create unique index exp_sluch_usl_id_uindex
    on exp_sluch_usl (id);

INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (55, null, 'A05.23.009', '2021-06-26 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (56, null, 'A05.23.009', '2021-06-25 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (50, 27, 'B01.015.001', '2021-06-02 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (48, 27, 'B03.016.003', '2021-06-24 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (49, 27, 'B03.016.002', '2021-06-25 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (86, 28, 'A09.05.193', '2021-06-01 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (87, 28, 'A05.10.006', '2021-06-01 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (53, 28, 'B01.015.001', '2021-06-27 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (54, 29, 'A05.10.008', '2021-06-23 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (57, 29, 'A05.10.009.001', '2021-06-26 00:00:00.000000', null, null, 1);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (60, 30, 'B01.015.001', '2021-03-02 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (61, 30, 'A05.10.009.001', '2021-03-02 00:00:00.000000', null, null, 1);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (62, 31, 'B01.015.001', '2021-03-02 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (63, 31, 'A05.10.009.001', '2021-03-02 00:00:00.000000', null, null, 1);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (64, 32, 'B01.015.001', '2021-03-02 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (65, 32, 'A05.10.009.001', '2021-03-02 00:00:00.000000', null, null, 1);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (70, 33, 'B01.015.001', '2021-03-02 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (71, 33, 'A05.10.009.001', '2021-03-02 00:00:00.000000', null, null, 1);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (73, 34, 'B01.015.001', '2021-03-02 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (72, 25, 'B01.015.001', '2021-06-03 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (90, 25, 'A04.28.001', '2021-06-09 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (74, 34, 'A05.10.009.001', '2021-03-02 00:00:00.000000', null, null, 1);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (75, 35, 'B01.015.001', '2021-03-02 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (91, 25, 'A03.19.002', '2021-06-16 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (76, 35, 'A05.10.009.001', '2021-03-02 00:00:00.000000', null, null, 1);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (88, 23, 'A04.28.001', '2021-07-01 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (84, 23, 'A09.05.193', '2021-06-02 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (85, 23, 'A05.10.006', '2021-06-01 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (79, 23, 'B01.015.001', '2021-06-01 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (66, 22, 'A05.10.006', '2021-06-01 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (67, 22, 'A04.10.002', '2021-06-01 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (68, 22, 'A05.23.009', '2021-06-04 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (92, 22, 'B01.058.001', '2021-06-17 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (89, 5, 'A05.23.009', '2021-06-02 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (93, 22, 'A06.09.007', '2021-06-16 00:00:00.000000', null, null, 1);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (58, 8, 'B01.015.001', '2021-01-02 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (59, 8, 'A05.10.006', '2021-01-02 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (82, 10, 'A04.10.002', '2021-05-31 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (83, 10, 'B01.015.001', '2021-06-02 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (80, 18, 'B01.015.001', '2021-05-31 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (81, 18, 'A04.10.002', '2021-06-01 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (77, 19, 'B01.015.001', '2021-06-02 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (78, 19, 'A04.10.002', '2021-06-03 00:00:00.000000', null, null, 0);
INSERT INTO public.exp_sluch_usl (id, id_sluch, usl_code, date_usl, krit_zag, krit_str, no_std) VALUES (69, 21, 'A06.10.006', '2021-06-03 00:00:00.000000', null, null, 0);