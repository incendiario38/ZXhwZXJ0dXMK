create table exp_std_usl
(
    id          serial not null
        constraint exp_std_usl_pk
            primary key,
    id_std      integer
        constraint exp_std_usl_exp_std_id_std_fk
            references exp_std,
    kod_usl     varchar(30),
    name_usl    varchar(300),
    sr_pok      double precision,
    sr_pok_krat double precision
);

comment on table exp_std_usl is 'Услуги стандарта';

comment on column exp_std_usl.id_std is 'Номер стандарта';

comment on column exp_std_usl.kod_usl is 'Код медицинской услуги';

comment on column exp_std_usl.name_usl is 'Наименование медицинской услуги';

comment on column exp_std_usl.sr_pok is 'Усредненный показатель частоты предоставления';

comment on column exp_std_usl.sr_pok_krat is 'Усредненный показатель кратности применения';

alter table exp_std_usl
    owner to exp_user;

create unique index exp_std_usl_id_uindex
    on exp_std_usl (id);

INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (1, 1, 'B01.044.001', 'Осмотр врачом скорой медицинской помощи (врачом-специалистом) при оказании скорой медицинской помощи', 0.5, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (2, 1, 'B01.044.002', 'Осмотр фельдшером скорой медицинской помощи (специалистом со средним медицинским образованием) при оказании скорой медицинской помощи', 0.5, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (3, 1, 'A09.05.193', 'Исследование уровня тропонинов I, T в крови', 1, 2);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (4, 1, 'B03.005.006', 'Коагулограмма (ориентировочное исследование системы гемостаза)', 0.57, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (5, 1, 'B03.016.002', 'Общий (клинический) анализ крови', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (6, 1, 'B03.016.004', 'Анализ крови биохимический общетерапевтический', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (7, 1, 'B03.016.005', 'Анализ крови по оценке нарушений липидного обмена биохимический', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (8, 1, 'A04.10.002', 'Эхокардиография', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (9, 1, 'A04.10.002.003', 'Эхокардиография с фармакологической нагрузкой', 0.045, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (10, 1, 'A04.10.002.004', 'Эхокардиография с физической нагрузкой', 0.23, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (11, 1, 'A04.12.004', 'Внутрисосудистое ультразвуковое исследование сосудистой стенки', 0.085, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (12, 1, 'A05.10.006', 'Регистрация электрокардиограммы', 1, 5);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (13, 1, 'A05.10.007.002', 'Дистанционное наблюдение за электрокардиографическими данными', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (14, 1, 'A05.10.009.001', 'Магнитно-резонансная томография сердца с контрастированием', 0.058, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (15, 1, 'A06.09.007', 'Рентгенография легких', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (16, 1, 'A06.10.006', 'Коронарография', 0.85, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (17, 1, 'A06.10.006.001', 'Компьютерно-томографическая коронарография', 0.1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (18, 1, 'A06.12.059', 'Измерение фракционного резерва коронарного кровотока', 0.13, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (19, 1, 'A06.12.060', 'Оптическая когерентная томография коронарных артерий', 0.085, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (20, 1, 'A07.10.001', 'Сцинтиграфия миокарда', 0.016, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (21, 1, 'A07.10.001.001', 'Сцинтиграфия миокарда с функциональными пробами', 0.023, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (22, 1, 'A07.10.003.002', 'Однофотонная эмиссионная компьютерная томография миокарда перфузионная с функциональными пробами', 0.017, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (23, 1, 'A12.10.001', 'Электрокардиография с физической нагрузкой', 0.092, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (24, 1, 'B01.003.003', 'Суточное наблюдение врачом-анестезиологом-реаниматологом', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (25, 1, 'B01.015.001', 'Прием (осмотр, консультация) врача-кардиолога первичный', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (26, 1, 'B01.015.002', 'Прием (осмотр, консультация) врача-кардиолога повторный', 1, 11);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (27, 1, 'B01.015.006', 'Ежедневный осмотр врачом-кардиологом с наблюдением и уходом среднего и младшего медицинского персонала в отделении стационара', 1, 3);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (28, 1, 'B01.043.005', 'Ежедневный осмотр врачом - сердечно-сосудистым хирургом с наблюдением и уходом среднего и младшего медицинского персонала в отделении стационара', 0.046, 8);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (29, 1, 'B04.015.003', 'Диспансерный прием (осмотр, консультация) врача-кардиолога', 1, 4);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (30, 1, 'B03.005.006', 'Коагулограмма (ориентировочное исследование системы гемостаза)', 0.57, 2);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (31, 1, 'B03.016.005', 'Анализ крови по оценке нарушений липидного обмена биохимический', 1, 3);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (32, 1, 'A16.10.021.001', 'Экстракорпоральная мембранная оксигенация', 0.0041, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (33, 1, 'A16.12.004.001', 'Коронарное шунтирование в условиях искусственного кровообращения', 0.039, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (34, 1, 'A16.12.004.002', 'Коронарное шунтирование на работающем сердце без использования искусственного кровообращения', 0.0067, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (35, 1, 'A16.12.004.009', 'Транслюминальная баллонная ангиопластика и стентирование коронарных артерий', 0.36, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (36, 1, 'A16.12.028.003', 'Стентирование коронарной артерии', 0.36, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (37, 1, 'A16.12.030', 'Баллонная внутриаортальная контрпульсация', 0.0097, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (38, 2, 'B01.003.001', 'Осмотр (консультация) врачом-анестезиологом-реаниматологом первичный', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (39, 2, 'B01.015.001', 'Прием (осмотр, консультация) врача-кардиолога первичный', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (40, 2, 'A09.05.009', 'Определение концентрации С-реактивного белка в сыворотке крови', 0.1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (41, 2, 'A09.05.037', 'Исследование концентрации водородных ионов (pH) крови', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (42, 2, 'A09.05.043', 'Исследование уровня креатинкиназы в крови', 1, 3);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (43, 2, 'A09.05.050', 'Исследование уровня фибриногена в крови', 0.3, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (44, 2, 'A09.05.193', 'Определение уровня тропонина в крови', 1, 2);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (45, 2, 'A09.05.193.001', 'Экспресс-исследование уровня тропонина в крови', 0.5, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (46, 2, 'A09.20.003', 'Определение Д-димера', 0.1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (47, 2, 'A12.05.005', 'Определение основных групп крови (A, B, 0)', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (48, 2, 'A12.05.006', 'Определение резус-принадлежности', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (49, 2, 'A12.05.026', 'Исследование уровня кислорода крови', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (50, 2, 'A12.05.031', 'Определение степени насыщения кислородом гемоглобина', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (51, 2, 'A12.05.032', 'Исследование уровня углекислого газа в крови', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (52, 2, 'A12.05.039', 'Определение времени свертывания плазмы крови, активированного каолином и (или) кефалином', 0.8, 2);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (53, 2, 'A12.06.011', 'Проведение реакции Вассермана (RW)', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (54, 2, 'A26.06.036', 'Определение антигена к вирусу гепатита B (HbsAg Hepatitis B virus) в крови', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (55, 2, 'A26.06.041', 'Определение антител классов M, G (IgM, IgG) к вирусному гепатиту C (Hepatitis C virus) в крови', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (56, 2, 'A26.06.048', 'Определение антител классов M, G (IgM, IgG) к вирусу иммунодефицита человека ВИЧ-1 (Human immunodeficiency virus HIV 1) в крови', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (57, 2, 'A26.06.049', 'Определение антител классов M, G (IgM, IgG) к вирусу иммунодефицита человека ВИЧ-2 (Human immunodeficiency virus HIV 2) в крови', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (58, 2, 'B03.016.003', 'Общий (клинический) анализ крови развернутый', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (59, 2, 'B03.016.004', 'Анализ крови биохимический общетерапевтический', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (60, 2, 'B03.016.005', 'Анализ крови по оценке нарушений липидного обмена биохимический', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (61, 2, 'B03.016.006', 'Анализ мочи общий', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (62, 2, 'A04.10.002', 'Эхокардиография', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (63, 2, 'A05.10.004', 'Расшифровка, описание и интерпретация электрокардиографических данных', 1, 3);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (64, 2, 'A05.10.006', 'Регистрация электрокардиограммы', 1, 3);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (65, 2, 'A06.09.007.001', 'Прицельная рентгенография органов грудной клетки', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (66, 2, 'A06.10.006', 'Коронарография', 0.8, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (67, 2, 'A06.10.008', 'Вентрикулография сердца', 0.02, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (68, 2, 'A12.30.004', 'Суточное прикроватное мониторирование жизненных функций и параметров', 1, 3);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (69, 2, 'B01.003.002', 'Осмотр (консультация) врачом-анестезиологом-реаниматологом повторный', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (70, 2, 'B01.003.003', 'Суточное наблюдение врачом-анестезиологом-реаниматологом', 1, 3);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (71, 2, 'B01.004.001', 'Прием (осмотр, консультация) врача-гастроэнтеролога первичный', 0.05, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (72, 2, 'B01.015.006', 'Ежедневный осмотр врачом-кардиологом с наблюдением и уходом среднего и младшего медицинского персонала в отделении стационара', 1, 8);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (73, 2, 'B01.020.001', 'Прием (осмотр, консультация) врача по лечебной физкультуре', 0.5, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (74, 2, 'B01.020.005', 'Прием (осмотр, консультация) врача по лечебной физкультуре повторный', 0.5, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (75, 2, 'B01.023.001', 'Прием (осмотр, консультация) врача-невролога первичный', 0.1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (76, 2, 'B01.023.002', 'Прием (осмотр, консультация) врача-невролога повторный', 0.05, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (77, 2, 'B01.025.001', 'Прием (осмотр, консультация) врача-нефролога первичный', 0.01, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (78, 2, 'B01.028.001', 'Прием (осмотр, консультация) врача-оториноларинголога первичный', 0.02, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (79, 2, 'B01.029.001', 'Прием (осмотр, консультация) врача-офтальмолога первичный', 0.2, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (80, 2, 'B01.034.001', 'Прием (осмотр, консультация) врача-психотерапевта первичный', 0.5, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (81, 2, 'B01.034.002', 'Прием (осмотр, консультация) врача-психотерапевта повторный', 0.5, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (82, 2, 'B01.035.001', 'Прием (осмотр, консультация) врача-психиатра первичный', 0.07, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (83, 2, 'B01.037.001', 'Прием (осмотр, консультация) врача-пульмонолога первичный', 0.01, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (84, 2, 'B01.043.001', 'Прием (осмотр, консультация) врача - сердечно-сосудистого хирурга первичный', 0.15, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (85, 2, 'B01.043.002', 'Прием (осмотр, консультация) врача - сердечно-сосудистого хирурга повторный', 0.08, 4);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (86, 2, 'B01.043.003', 'Прием (осмотр, консультация) врача по рентгенэндоваскулярным диагностике и лечению первичный', 0.8, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (87, 2, 'B01.043.004', 'Прием (осмотр, консультация) врача по рентгенэндоваскулярным диагностике и лечению повторный', 0.8, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (88, 2, 'B01.053.001', 'Прием (осмотр, консультация) врача-уролога первичный', 0.02, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (89, 2, 'B01.058.001', 'Прием (осмотр, консультация) врача-эндокринолога первичный', 0.3, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (90, 2, 'B01.058.002', 'Прием (осмотр, консультация) врача-эндокринолога повторный', 0.3, null);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (91, 2, 'B01.059.001', 'Прием (осмотр, консультация) врача-эндоскописта первичный', 0.1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (92, 2, 'A09.05.009', 'Определение концентрации С-реактивного белка в сыворотке крови', 0.1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (93, 2, 'A09.05.018', 'Исследование уровня мочевой кислоты в крови', 0.05, 2);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (94, 2, 'A09.05.023.002', 'Исследование уровня глюкозы в крови с помощью анализатора', 1, 5);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (95, 2, 'A09.05.037', 'Исследование концентрации водородных ионов (pH) крови', 0.05, 2);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (96, 2, 'A09.05.045', 'Исследование уровня амилазы в крови', 0.07, 2);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (97, 2, 'A09.05.060', 'Исследование уровня общего трийодтиронина (T3) в крови', 0.05, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (98, 2, 'A09.05.062', 'Исследование уровня свободного трийодтиронина (T3) в сыворотке крови', 0.05, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (99, 2, 'A09.05.063', 'Исследование уровня свободного тироксина (T4) сыворотки крови', 0.05, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (100, 2, 'A09.05.065', 'Исследование тиреотропина сыворотки крови', 0.05, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (101, 2, 'A09.28.003.001', 'Исследование на микроальбуминурию', 0.05, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (102, 2, 'A09.28.013', 'Исследование уровня калия в моче', 0.01, 2);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (103, 2, 'A09.28.014', 'Исследование уровня натрия в моче', 0.01, 2);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (104, 2, 'A09.28.027', 'Определение альфа-амилазы в моче', 0.01, 2);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (105, 2, 'A12.05.026', 'Исследование уровня кислорода крови', 0.01, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (106, 2, 'A12.05.032', 'Исследование уровня углекислого газа в крови', 0.01, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (107, 2, 'A12.05.039', 'Определение времени свертывания плазмы крови, активированного каолином и (или) кефалином', 0.8, 3);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (108, 2, 'A12.28.002', 'Исследование функции нефронов (клиренс)', 1, 3);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (109, 2, 'B03.016.002', 'Общий (клинический) анализ крови', 1, 2);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (110, 2, 'B03.016.004', 'Анализ крови биохимический общетерапевтический', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (111, 2, 'B03.016.006', 'Анализ мочи общий', 1, 2);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (112, 2, 'A03.16.001', 'Эзофагогастродуоденоскопия', 0.15, null);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (113, 2, 'A03.19.002', 'Ректороманоскопия', 0.03, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (114, 2, 'A04.10.002', 'Эхокардиография', 1, null);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (115, 2, 'A04.10.002.001', 'Эхокардиография чреспищеводная', 0.07, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (116, 2, 'A04.10.002.003', 'Эхокардиография с фармакологической нагрузкой', 0.08, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (117, 2, 'A04.12.001.002', 'Дуплексное сканирование артерий почек', 0.06, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (118, 2, 'A04.12.005', 'Дуплексное сканирование сосудов (артерий и вен) верхних конечностей', 0.01, null);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (119, 2, 'A04.12.005.003', 'Дуплексное сканирование брахиоцефальных артерий с цветным допплеровским картированием кровотока', 0.2, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (120, 2, 'A04.12.006', 'Дуплексное сканирование сосудов (артерий и вен) нижних конечностей', 0.2, null);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (121, 2, 'A04.14.001', 'Ультразвуковое исследование печени', 0.05, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (122, 2, 'A04.15.001', 'Ультразвуковое исследование поджелудочной железы', 0.05, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (123, 2, 'A04.28.001', 'Ультразвуковое исследование почек и надпочечников', 0.05, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (124, 2, 'A05.10.004', 'Расшифровка, описание и интерпретация электрокардиографических данных', 1, 4);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (125, 2, 'A05.10.006', 'Регистрация электрокардиограммы', 1, 4);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (126, 2, 'A05.10.008', 'Холтеровское мониторирование артериального давления', 0.1, null);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (127, 2, 'A05.10.008.001', 'Холтеровское мониторирование сердечного ритма (ХМ-ЭКГ)', 0.95, null);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (128, 2, 'A05.23.009', 'Магнитно-резонансная томография головного мозга', 0.05, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (129, 2, 'A06.03.002', 'Компьютерная томография головы', 0.07, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (130, 2, 'A06.09.005.001', 'Спиральная компьютерная томография грудной полости', 0.08, null);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (131, 2, 'A06.09.007.001', 'Прицельная рентгенография органов грудной клетки', 0.3, null);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (132, 2, 'A06.30.005', 'Компьютерная томография органов брюшной полости', 0.05, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (133, 2, 'A07.10.001', 'Сцинтиграфия миокарда', 0.05, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (134, 2, 'A12.10.001', 'Электрокардиография с физическими упражнениями', 0.7, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (135, 2, 'A17.10.002', 'Электрокардиостимуляция', 0.07, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (136, 2, 'A16.08.003', 'Постановка временной трахеостомы', 0.01, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (137, 2, 'A16.09.011', 'Искусственная вентиляция легких', 0.07, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (138, 2, 'A16.10.014', 'Имплантация кардиостимулятора', 0.05, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (139, 2, 'A16.10.014.001', 'Имплантация кардиовертера дефибриллятора', 0.01, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (140, 2, 'A16.10.024', 'Закрытие дефекта перегородки сердца', 0.01, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (141, 2, 'A16.12.004', 'Наложение анастомоза на коронарные сосуды', 0.02, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (142, 2, 'A16.12.008', 'Эндартерэктомия', 0.005, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (143, 2, 'A16.12.013', 'Аневризмэктомия', 0.005, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (144, 2, 'A16.12.026', 'Балонная вазодилятация', 0.8, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (145, 2, 'A16.12.028', 'Установка стента в сосуд', 0.75, null);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (146, 2, 'A16.12.028', 'Установка стента в сосуд', 0.05, 3);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (147, 2, 'A16.12.030', 'Балонная внутриаортальная контрпульсация', 0.1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (148, 2, 'A17.10.001', 'Электроимпульсная терапия при патологии сердца и перикарда', 0.3, null);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (149, 2, 'A17.10.002', 'Электрокардиостимуляция', 0.14, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (150, 2, 'A17.10.002.001', 'Электрокардиостимуляция чреспищеводная', 0.04, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (151, 2, 'A18.05.015', 'Процедура искусственного кровообращения', 0.035, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (152, 2, 'B01.003.004', 'Анестезиологическое пособие (включая раннее послеоперационное ведение)', 0.035, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (153, 2, 'A13.29.003', 'Психологическая адаптация', 1, 4);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (154, 2, 'A13.29.008', 'Психотерапия', 0.3, 4);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (155, 2, 'A13.30.001', 'Обучение самоуходу', 1, 1);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (156, 2, 'A19.10.001', 'Лечебная физкультура при заболеваниях сердца и перикарда', 0.2, 11);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (157, 2, 'A19.10.001.004', 'Лечебная физкультура с использованием тренажеров при заболеваниях сердца и перикарда', 0.5, 5);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (158, 2, 'A20.10.001', 'Оксигенотерапия (гипер- и нормобарическая) при заболеваниях сердца', 0.2, 6);
INSERT INTO public.exp_std_usl (id, id_std, kod_usl, name_usl, sr_pok, sr_pok_krat) VALUES (159, 2, 'A23.30.006', 'Определение двигательного режима', 1, 3);