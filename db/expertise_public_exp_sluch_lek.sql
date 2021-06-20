create table exp_sluch_lek
(
    id       serial not null
        constraint exp_sluch_lek_pk
            primary key,
    lek_name varchar(255),
    id_sluch integer
        constraint exp_sluch_lek_exp_sluch_id_fk
            references exp_sluch,
    krit_zag varchar(255),
    krit_str varchar(255),
    no_std   integer default 0
);

comment on column exp_sluch_lek.no_std is 'Признак отсутствия в стандарте';

alter table exp_sluch_lek
    owner to exp_user;

create unique index exp_sluch_lek_id_uindex
    on exp_sluch_lek (id);

INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (18, 'Стрептокиназа', 22, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (17, 'Бисопролол', 22, null, null, 1);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (22, 'Ацетилсалициловая кислота', 25, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (36, 'Варфарин', 25, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (28, 'Зофеноприл', 23, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (32, 'Ривароксабан', 23, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (35, 'Ацетилсалициловая кислота', 23, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (37, 'Монафрам', 23, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (38, 'Аторвастатин', 23, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (10, 'Розувастатин', 8, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (30, 'Ацетилсалициловая кислота', 10, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (31, 'Карведилол', 10, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (29, 'Ацетилсалициловая кислота', 18, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (27, 'Ацетилсалициловая кислота', 19, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (19, 'Ацетилсалициловая кислота + Клопидогрел', 21, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (5, 'Клопидогрел', 28, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (7, 'Гепарин натрия', 29, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (8, 'Метопролол', 29, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (9, 'Диазепам', 29, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (11, 'Метопролол', 30, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (12, 'Алтеплаза', 30, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (13, 'Метопролол', 31, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (14, 'Алтеплаза', 31, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (15, 'Метопролол', 32, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (16, 'Алтеплаза', 32, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (20, 'Метопролол', 33, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (33, 'Инсулин растворимый [человеческий генно-инженерный]', 5, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (21, 'Алтеплаза', 33, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (34, 'Фуросемид', 5, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (23, 'Метопролол', 34, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (24, 'Алтеплаза', 34, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (25, 'Метопролол', 35, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (26, 'Алтеплаза', 35, null, null, 0);
INSERT INTO public.exp_sluch_lek (id, lek_name, id_sluch, krit_zag, krit_str, no_std) VALUES (1, 'Алтеплаза', 1, null, null, 0);