create table exp_vrach
(
    id      integer not null
        constraint exp_vrach_pk
            primary key,
    snils   varchar(20),
    fio     varchar(200),
    lpu_id  integer
        constraint exp_vrach_exp_lpu_lpu_id_fk
            references exp_lpu,
    prof    varchar(255),
    id_user integer
);

alter table exp_vrach
    owner to exp_user;

create unique index exp_vrach_id_uindex
    on exp_vrach (id);

INSERT INTO public.exp_vrach (id, snils, fio, lpu_id, prof, id_user) VALUES (9, '041-483-217 20', 'Мотусан Андрей Леонидович', 2, 'ВРАЧ-КАРДИОЛОГ', null);
INSERT INTO public.exp_vrach (id, snils, fio, lpu_id, prof, id_user) VALUES (8, '041-482-666 40', 'Мыльников Александр Олегович', 2, 'ВРАЧ-КАРДИОЛОГ', null);
INSERT INTO public.exp_vrach (id, snils, fio, lpu_id, prof, id_user) VALUES (1, '105-488-595 70', 'Иванов Иван Иванович  ', 1, 'ВРАЧ-КАРДИОЛОГ', null);
INSERT INTO public.exp_vrach (id, snils, fio, lpu_id, prof, id_user) VALUES (3, '043-681-465 60', 'Сидоров Василий Сергеевич', 1, 'ВРАЧ-КАРДИОЛОГ', null);
INSERT INTO public.exp_vrach (id, snils, fio, lpu_id, prof, id_user) VALUES (2, '091-640-980 11', 'Петров Петр Петрович', 1, 'ВРАЧ-КАРДИОЛОГ', null);
INSERT INTO public.exp_vrach (id, snils, fio, lpu_id, prof, id_user) VALUES (5, '040-989-236 91', 'Козлов Федор Петрович ', 1, 'ВРАЧ-КАРДИОЛОГ', null);
INSERT INTO public.exp_vrach (id, snils, fio, lpu_id, prof, id_user) VALUES (10, '041-482-445 30', 'Черных Алексей Анатольевич', 2, 'ВРАЧ-КАРДИОЛОГ', 9);
INSERT INTO public.exp_vrach (id, snils, fio, lpu_id, prof, id_user) VALUES (7, '041-482-338 11', 'Шапира Виктор Михайлович', 2, 'ВРАЧ-КАРДИОЛОГ', null);
INSERT INTO public.exp_vrach (id, snils, fio, lpu_id, prof, id_user) VALUES (6, '043-681-497 60', 'Лоскутов Филипп Антонович', 2, 'ВРАЧ-КАРДИОЛОГ', null);
INSERT INTO public.exp_vrach (id, snils, fio, lpu_id, prof, id_user) VALUES (4, '042-989-236 90', 'Леонов Роман Николаевич', 1, 'ВРАЧ-ЭКСПЕРТ', 10);