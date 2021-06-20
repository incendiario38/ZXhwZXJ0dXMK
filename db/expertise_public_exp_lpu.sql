create table exp_lpu
(
    lpu_id integer not null
        constraint exp_lpu_pk
            primary key,
    name   varchar(200)
);

comment on table exp_lpu is 'МО';

alter table exp_lpu
    owner to exp_user;

create unique index exp_lpu_lpu_id_uindex
    on exp_lpu (lpu_id);

INSERT INTO public.exp_lpu (lpu_id, name) VALUES (1, 'ГБУЗ ЯНАО «Ноябрьская центральная городская больница»');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (2, 'ГБУЗ ЯНАО «Муравленковская городская больница»');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (3, 'ГАУЗ ЯНАО "НОВОУРЕНГОЙСКАЯ ГСП"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (4, 'ГБУ ЯНАО "РЦ "БОЛЬШОЙ ТАРАСКУЛЬ"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (5, 'ГБУЗ "ЯН ОКВД"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (6, 'ГБУЗ "ЯНО ПТД"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (7, 'ГБУЗ ЯНАО "АКСАРКОВСКАЯ ЦРБ"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (8, 'ГБУЗ ЯНАО "ГГБ"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (9, 'ГБУЗ ЯНАО "КРАСНОСЕЛЬКУПСКАЯ ЦРБ"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (10, 'ГБУЗ ЯНАО "ЛГБ"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (11, 'ГБУЗ ЯНАО "МУРАВЛЕНКОВСКАЯ ГБ"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (12, 'ГБУЗ ЯНАО "НАДЫМСКАЯ ГСП"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (13, 'ГБУЗ ЯНАО "НАДЫМСКАЯ ССМП"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (14, 'ГБУЗ ЯНАО "НАДЫМСКАЯ ЦРБ"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (15, 'ГБУЗ ЯНАО "НОВОУРЕНГОЙСКАЯ ГОРОДСКАЯ БОЛЬНИЦА №2"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (16, 'ГБУЗ ЯНАО "НОВОУРЕНГОЙСКАЯ ССМП"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (17, 'ГБУЗ ЯНАО "НОЯБРЬСКАЯ ЦГБ"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (18, 'ГБУЗ ЯНАО "НЦГБ"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (19, 'ГБУЗ ЯНАО "ПРБ"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (20, 'ГБУЗ ЯНАО "САЛЕХАРДСКАЯ ССМП"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (21, 'ГБУЗ ЯНАО "ТАЗОВСКАЯ ЦРБ"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (22, 'ГБУЗ ЯНАО "ТЦРБ"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (23, 'ГБУЗ ЯНАО "ХАРПСКАЯ РБ"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (24, 'ГБУЗ ЯНАО «МУЖЕВСКАЯ ЦРБ»');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (25, 'ГБУЗ ЯНАО «НОЯБРЬСКАЯ ГСП»');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (26, 'ГБУЗ ЯНАО «НОЯБРЬСКАЯ ССМП»');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (27, 'ГБУЗ ЯНАО «ЯР-САЛИНСКАЯ ЦРБ»');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (28, 'ГУП ЯНОРЦ "БОЛЬШОЙ ТАРАСКУЛЬ"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (29, 'ИП БАЙРАМКУЛОВА Ф.К.');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (30, 'ООО "ЯМАЛ-МЕД"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (31, 'ООО "ЯМАЛДЕНТ"');
INSERT INTO public.exp_lpu (lpu_id, name) VALUES (32, 'ФКУЗ "МСЧ МВД РОССИИ ПО ЯМАЛО-НЕНЕЦКОМУ АВТОНОМНОМУ ОКРУГУ"');