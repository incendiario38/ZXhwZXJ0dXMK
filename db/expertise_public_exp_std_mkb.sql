create table exp_std_mkb
(
    id      integer not null
        constraint exp_std_pk
            primary key,
    mkb     varchar(200),
    id_std  integer
        constraint exp_std_mkb_exp_std_id_std_fk
            references exp_std,
    kod_mkb varchar(10)
);

comment on table exp_std_mkb is 'Порядки и стандарты';

comment on column exp_std_mkb.mkb is 'Диагноз';

comment on column exp_std_mkb.id_std is 'Идентификатор стандарта';

comment on column exp_std_mkb.kod_mkb is 'Код МКБ';

alter table exp_std_mkb
    owner to exp_user;

INSERT INTO public.exp_std_mkb (id, mkb, id_std, kod_mkb) VALUES (4, 'Другие формы острой ишемической болезни сердца', 1, 'I24.8');
INSERT INTO public.exp_std_mkb (id, mkb, id_std, kod_mkb) VALUES (5, 'Острая ишемическая болезнь сердца неуточненная', 1, 'I24.9');
INSERT INTO public.exp_std_mkb (id, mkb, id_std, kod_mkb) VALUES (11, 'Повторный инфаркт миокарда', 2, 'I22');
INSERT INTO public.exp_std_mkb (id, mkb, id_std, kod_mkb) VALUES (7, 'Острый трансмуральный инфаркт нижней стенки миокарда', 2, 'I21.1');
INSERT INTO public.exp_std_mkb (id, mkb, id_std, kod_mkb) VALUES (1, 'Нестабильная стенокардия', 1, 'I20.0');
INSERT INTO public.exp_std_mkb (id, mkb, id_std, kod_mkb) VALUES (6, 'Острый трансмуральный инфаркт передней стенки миокарда', 2, 'I21.0');
INSERT INTO public.exp_std_mkb (id, mkb, id_std, kod_mkb) VALUES (9, 'Острый трансмуральный инфаркт миокарда неуточненной локализации', 2, 'I21.3');
INSERT INTO public.exp_std_mkb (id, mkb, id_std, kod_mkb) VALUES (10, 'Острый инфаркт миокарда неуточненный', 2, 'I21.9');
INSERT INTO public.exp_std_mkb (id, mkb, id_std, kod_mkb) VALUES (3, 'Повторный инфаркт миокарда', 1, 'I22');
INSERT INTO public.exp_std_mkb (id, mkb, id_std, kod_mkb) VALUES (2, 'Острый инфаркт миокарда', 1, 'I21');
INSERT INTO public.exp_std_mkb (id, mkb, id_std, kod_mkb) VALUES (8, 'Острый трансмуральный инфаркт миокарда других уточненных локализаций', 2, 'I21.2');