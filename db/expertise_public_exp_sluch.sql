create table exp_sluch
(
    id_pers    integer
        constraint exp_sluch_exp_patient_id_pers_fk
            references exp_patient,
    lpu_id     integer
        constraint exp_sluch_exp_lpu_lpu_id_fk
            references exp_lpu,
    id_vrach   integer
        constraint exp_sluch_exp_vrach_id_fk
            references exp_vrach,
    dbeg       timestamp,
    dend       timestamp,
    usl_ok     integer default 0,
    mkb        varchar(10)
        constraint exp_sluch_exp_mkb10_kodmkb_fk
            references exp_mkb10,
    forma      integer,
    phase      integer default 0,
    stage      integer default 0,
    id         serial not null
        constraint exp_sluch_pk
            primary key,
    n_med_card integer,
    status     integer default 0,
    krit_zag   varchar(255),
    id_krit    integer,
    id_std     integer
);

comment on table exp_sluch is 'Случаи лечения';

alter table exp_sluch
    owner to exp_user;

create unique index exp_sluch_id_uindex
    on exp_sluch (id);

INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3811, 2, 10, '2021-05-31 00:00:00.000000', '2021-07-04 00:00:00.000000', 0, 'I20.1', 1, 0, 0, 15, 999999, 1, '3.9.3.', 52, 1);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3807, 2, 10, '2021-06-10 00:00:00.000000', '2021-06-16 00:00:00.000000', 0, 'I20.0', 1, 1, 1, 1, 456, 2, '3.9.3.', 50, 2);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3807, 2, 9, '2021-06-11 00:00:00.000000', '2021-06-14 00:00:00.000000', 0, 'I20.1', 2, 0, 0, 2, 456, 1, '3.9.3.', 52, 1);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (15, 1, 9, '2021-06-01 12:00:00.000000', '2021-06-12 12:00:00.000000', 0, 'I20.1', 0, 0, 0, 3, 789, 1, '3.9.3.', 52, 1);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3807, 2, 10, '2021-06-01 00:00:00.000000', '2021-06-07 00:00:00.000000', 0, 'I24', 2, 1, 1, 5, 123, 2, '3.9.3.', 50, 2);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (14, 2, 9, '2021-06-05 12:00:00.000000', '2021-06-13 12:00:00.000000', 0, 'I20.1', 0, 0, 0, 4, 531, 1, '3.9.3.', 52, 1);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3807, 2, 10, '2021-06-01 00:00:00.000000', '2021-06-07 00:00:00.000000', 0, 'I20.1', 1, 0, 0, 6, 999, 1, '3.9.3.', 52, 1);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3807, 2, 9, '2021-06-01 12:00:00.000000', '2021-06-07 12:00:00.000000', 0, 'I20.1', 1, 0, 0, 7, 123, 1, '3.9.3.', 52, 1);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3807, 2, 10, '2021-06-01 00:00:00.000000', '2021-06-07 00:00:00.000000', 0, 'I20.0', 2, 1, 1, 8, 23658, 2, '3.9.3.', 50, 2);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3811, 2, 10, '2021-05-31 00:00:00.000000', '2021-07-04 00:00:00.000000', 0, 'I20.1', 1, 0, 0, 9, 999999, 1, '3.9.3.', 52, 1);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3811, 2, 10, '2021-05-31 00:00:00.000000', '2021-07-04 00:00:00.000000', 0, 'I24', 2, 1, 0, 10, 999997, 2, '3.9.3.', 50, 2);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3811, 2, 10, '2021-05-31 00:00:00.000000', '2021-07-04 00:00:00.000000', 0, 'I20.1', 1, 0, 0, 11, 999999, 1, '3.9.3.', 52, 1);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3811, 2, 10, '2021-05-31 00:00:00.000000', '2021-07-04 00:00:00.000000', 0, 'I20.1', 1, 0, 0, 12, 999999, 1, '3.9.3.', 52, 1);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3811, 2, 10, '2021-05-31 00:00:00.000000', '2021-07-04 00:00:00.000000', 0, 'I20.1', 1, 0, 0, 13, 999999, 1, '3.9.3.', 52, 1);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3811, 2, 10, '2021-05-31 00:00:00.000000', '2021-07-04 00:00:00.000000', 0, 'I20.1', 1, 0, 0, 14, 999999, 1, '3.9.3.', 52, 1);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3811, 2, 10, '2021-05-31 00:00:00.000000', '2021-07-04 00:00:00.000000', 0, 'I20.1', 1, 0, 0, 16, 999999, 1, '3.9.3.', 52, 1);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3811, 2, 10, '2021-05-31 00:00:00.000000', '2021-07-04 00:00:00.000000', 0, 'I20.1', 1, 0, 0, 17, 999999, 1, '3.9.3.', 52, 1);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (5, 1, 4, '2009-03-05 00:00:00.000000', null, 0, 'I20', 1, 1, 1, 30, 1977970, 2, null, 50, 2);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (5, 1, 4, '2009-03-05 00:00:00.000000', null, 0, 'I20', 1, 1, 1, 31, 1977970, 2, null, 50, 2);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (5, 1, 4, '2001-01-01 00:00:00.000000', '2009-03-05 00:00:00.000000', 0, 'I20', 1, 1, 1, 32, 1977970, 2, null, 50, 2);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3811, 2, 10, '2021-05-31 00:00:00.000000', '2021-07-04 00:00:00.000000', 0, 'I24', 1, 1, 0, 18, 999998, 2, '3.9.3.', 50, 2);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3911, 2, 10, '2021-06-01 00:00:00.000000', '2021-07-10 00:00:00.000000', 0, 'I20.1', 1, 0, 0, 19, 88888, 1, '3.9.3.', 52, 1);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3911, 2, 10, '2021-06-01 00:00:00.000000', '2021-07-10 00:00:00.000000', 0, 'I20.1', 1, 0, 0, 20, 88888, 1, '3.9.3.', 52, 1);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3911, 2, 9, '2021-06-01 00:00:00.000000', '2021-07-10 00:00:00.000000', 0, 'I20', 1, 0, 0, 21, 567, 1, '3.9.3.', 52, 1);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3911, 2, 10, '2021-06-01 00:00:00.000000', '2021-07-10 00:00:00.000000', 0, 'I20.0', 1, 1, 0, 25, 111, 2, '3.9.3.', 50, 2);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3911, 2, 10, '2021-06-01 00:00:00.000000', '2021-07-10 00:00:00.000000', 0, 'I20.1', 1, 0, 0, 24, 88888, 1, '3.9.3.', 52, 1);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3911, 2, 10, '2021-06-01 00:00:00.000000', '2021-07-10 00:00:00.000000', 0, 'I20.0', 1, 1, 0, 23, 987, 1, '3.9.3.', 50, 2);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3911, 2, 10, '2021-06-01 00:00:00.000000', '2021-07-10 00:00:00.000000', 0, 'I20.1', 1, 0, 0, 26, 88888, 1, '3.9.3.', 52, 1);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3911, 2, 10, '2021-06-01 00:00:00.000000', '2021-07-10 00:00:00.000000', 0, 'I21', 3, 1, 1, 27, 99999, 2, '3.9.3.', 50, 2);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3911, 2, 10, '2021-06-01 00:00:00.000000', '2021-07-10 00:00:00.000000', 0, 'I20.0', 1, 1, 1, 22, 888, 2, '3.9.3.', 50, 2);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (3907, 2, 10, '2021-06-01 00:00:00.000000', '2021-06-04 00:00:00.000000', 0, 'I24', 2, 1, 1, 28, 1111111, 2, '3.9.3.', 50, 2);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (5, 2, 10, '2021-05-31 00:00:00.000000', '2021-06-26 00:00:00.000000', 0, 'I24', 2, 1, 1, 29, 2222, 2, '3.9.3.', 50, 2);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (5, 1, 4, '2001-01-01 00:00:00.000000', '2009-03-05 00:00:00.000000', 0, 'I20', 1, 1, 1, 33, 1977971, 2, null, 50, 2);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (5, 1, 4, '2001-01-01 00:00:00.000000', '2009-03-05 00:00:00.000000', 0, 'I20', 1, 1, 1, 34, 1977972, 2, null, 50, 2);
INSERT INTO public.exp_sluch (id_pers, lpu_id, id_vrach, dbeg, dend, usl_ok, mkb, forma, phase, stage, id, n_med_card, status, krit_zag, id_krit, id_std) VALUES (5, 1, 4, '2001-01-01 00:00:00.000000', '2009-03-05 00:00:00.000000', 0, 'I20', 1, 1, 1, 35, 1977973, 2, null, 50, 2);