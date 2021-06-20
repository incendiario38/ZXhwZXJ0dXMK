create table exp_std_prep
(
    id     integer not null
        constraint exp_std_prep_pk
            primary key,
    id_std integer
        constraint exp_std_prep_exp_std_id_std_fk
            references exp_std,
    kod    varchar(10),
    klass  varchar(100),
    name   varchar(200),
    pok    double precision,
    ed     varchar(20),
    ssd    varchar(20),
    skd    varchar(20)
);

comment on table exp_std_prep is 'препараты';

comment on column exp_std_prep.id_std is 'Номер стандарта';

comment on column exp_std_prep.kod is 'Код';

comment on column exp_std_prep.klass is 'Анатомо-терапевтическо-химическая классификация';

comment on column exp_std_prep.name is 'Наименование лекарственного препарата';

comment on column exp_std_prep.pok is 'Усредненный показатель частоты предоставления';

comment on column exp_std_prep.ed is 'Единицы измерения';

comment on column exp_std_prep.ssd is 'ССД';

comment on column exp_std_prep.skd is 'СКД';

alter table exp_std_prep
    owner to exp_user;

create unique index exp_std_prep_id_uindex
    on exp_std_prep (id);

INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (1, 1, 'A02BC', 'Ингибиторы протонного насоса', 'Омепразол', 0.24, 'мг', '20', '7 300');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (2, 1, 'A02BC', 'Ингибиторы протонного насоса', 'Пантопразол', 0.24, 'мг', '40', '14 600');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (3, 1, 'A02BC', 'Ингибиторы протонного насоса', 'Рабепразол', 0.24, 'мг', '20', '7 300');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (4, 1, 'A02BC', 'Ингибиторы протонного насоса', 'Эзомепразол', 0.24, 'мг', '20', '7 300');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (5, 1, 'A03BA', 'Алкалоиды белладонны, третичные амины', 'Атропин', 0.1, 'мг', '1', '1');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (6, 1, 'A03FA', 'Стимуляторы моторики желудочно-кишечного тракта', 'Метоклопрамид', 0.03, 'мг', '10', '10');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (7, 1, 'B01AA', 'Антагонисты витамина K', 'Варфарин', 0.01, 'мг', '5', '1 825');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (8, 1, 'B01AB', 'Группа гепарина', 'Гепарин натрия', 0.43, 'тыс.МЕ', '5', '5');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (9, 1, 'B01AB', 'Группа гепарина', 'Гепарин натрия', 0.08, 'тыс.МЕ', '29', '58');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (10, 1, 'B01AB', 'Группа гепарина', 'Эноксапарин натрия', 0.24, 'тыс.анти-XaМЕ', '14', '28');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (11, 1, 'B01AC', 'Антиагреганты, кроме гепарина', 'Антител моноклональных FRaMon F[ab'']2-фрагменты', 0.036, 'мкг', '17 500', '17 500');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (12, 1, 'B01AC', 'Антиагреганты, кроме гепарина', 'Ацетилсалициловая кислота', 0.85, 'мг', '100', '36 400');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (13, 1, 'B01AC', 'Антиагреганты, кроме гепарина', 'Ацетилсалициловая кислота', 0.86, 'мг', '250', '250');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (14, 1, 'B01AC', 'Антиагреганты, кроме гепарина', 'Ацетилсалициловая кислота + Клопидогрел', 0.009, 'мг', '100+75', '36400+27300');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (15, 1, 'B01AC', 'Антиагреганты, кроме гепарина', 'Ацетилсалициловая кислота + Клопидогрел', 0.001, 'мг', '75+75', '27300+27300');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (16, 1, 'B01AC', 'Антиагреганты, кроме гепарина', 'Клопидогрел', 0.32, 'мг', '300', '300');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (17, 1, 'B01AC', 'Антиагреганты, кроме гепарина', 'Клопидогрел', 0.31, 'мг', '75', '27 300');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (18, 1, 'B01AC', 'Антиагреганты, кроме гепарина', 'Прасугрел', 0.34, 'мг', '10', '3 640');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (19, 1, 'B01AC', 'Антиагреганты, кроме гепарина', 'Прасугрел', 0.34, 'мг', '60', '60');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (20, 1, 'B01AC', 'Антиагреганты, кроме гепарина', 'Тикагрелор', 0.34, 'мг', '180', '65 700');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (21, 1, 'B01AC', 'Антиагреганты, кроме гепарина', 'Эптифибатид', 0.036, 'мг', '126', '126');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (22, 1, 'B01AE', 'Прямые ингибиторы тромбина', 'Бивалирудин', 0.072, 'мкг', '542 500', '542 500');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (23, 1, 'B01AF', 'Прямые ингибиторы фактора Xa', 'Ривароксабан', 0.05, 'мг', '5', '1 825');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (24, 1, 'B01AX', 'Антикоагулянты другие', 'Фондапаринукс натрия', 0.48, 'мкг', '2 500', '5 000');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (25, 1, 'C01BD', 'Антиаритмические препараты, класс III', 'Амиодарон', 0.1, 'мг', '600', '109 800');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (26, 1, 'C01BD', 'Антиаритмические препараты, класс III', 'Амиодарон', 0.05, 'мг', '300', '300');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (27, 1, 'C01CA', 'Адренергические и дофаминергические средства', 'Добутамин', 0.053, 'мг', '5', '10');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (28, 1, 'C01CA', 'Адренергические и дофаминергические средства', 'Допамин', 0.053, 'мг', '5', '10');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (29, 1, 'C01CA', 'Адренергические и дофаминергические средства', 'Норэпинефрин', 0.03, 'мг', '2', '4');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (30, 1, 'C01CA', 'Адренергические и дофаминергические средства', 'Эпинефрин', 0.015, 'мкг', '500', '1 000');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (31, 1, 'C01DA', 'Органические нитраты', 'Изосорбидадинитрат', 0.25, 'мкг', '2 500', '2 500');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (32, 1, 'C01DA', 'Органические нитраты', 'Нитроглицерин', 0.5, 'мг', '150', '150');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (33, 1, 'C01DA', 'Органические нитраты', 'Нитроглицерин', 0.46, 'мг', '1', '1');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (34, 1, 'C03DA', 'Антагонисты альдостерона', 'Эплеренон', 0.15, 'мг', '50', '18 250');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (35, 1, 'C07AB', 'Селективные бета-адреноблокаторы', 'Бисопролол', 0.23, 'мг', '5', '1 825');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (36, 1, 'C07AB', 'Селективные бета-адреноблокаторы', 'Метопролол', 0.12, 'мг', '15', '15');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (37, 1, 'C07AB', 'Селективные бета-адреноблокаторы', 'Метопролол', 0.23, 'мг', '200', '73 000');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (38, 1, 'C07AB', 'Селективные бета-адреноблокаторы', 'Метопролол', 0.23, 'мг', '100', '36 500');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (39, 1, 'C07AB', 'Селективные бета-адреноблокаторы', 'Эсмолол', 0.03, 'мг', '50', '50');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (40, 1, 'C07AG', 'Альфа- и бета-адреноблокаторы', 'Карведилол', 0.23, 'мг', '50', '18 250');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (41, 1, 'C08CA', 'Производные дигидропиридина', 'Амлодипин', 0.2, 'мг', '5', '1 825');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (42, 1, 'C08DA', 'Производные фенилалкиламина', 'Верапамил', 0.05, 'мг', '240', '87 600');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (43, 1, 'C08DB', 'Производные бензотиазепина', 'Дилтиазем', 0.05, 'мг', '180', '65 700');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (44, 1, 'C09AA', 'Ингибиторы АПФ', 'Зофеноприл', 0.16, 'мг', '60', '21 900');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (45, 1, 'C09AA', 'Ингибиторы АПФ', 'Каптоприл', 0.15, 'мг', '150', '600');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (46, 1, 'C09AA', 'Ингибиторы АПФ', 'Лизиноприл', 0.16, 'мг', '10', '3 650');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (47, 1, 'C09AA', 'Ингибиторы АПФ', 'Рамиприл', 0.16, 'мг', '10', '3 650');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (48, 1, 'C09AA', 'Ингибиторы АПФ', 'Эналаприл', 0.32, 'мг', '20', '7 300');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (49, 1, 'C09CA', 'Антагонисты рецепторов ангиотензина II', 'Валсартан', 0.2, 'мг', '320', '116 800');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (50, 1, 'C10AA', 'Ингибиторы ГМГ-КоА-редуктазы', 'Аторвастатин', 0.5, 'мг', '80', '29 200');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (51, 1, 'C10AA', 'Ингибиторы ГМГ-КоА-редуктазы', 'Розувастатин', 0.5, 'мг', '40', '14 600');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (52, 1, 'C10AX', 'Другие гиполипидемические средства', 'Алирокумаб', 0.0075, 'мг', '75', '1 950');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (53, 1, 'C10AX', 'Другие гиполипидемические средства', 'Эволокумаб', 0.0075, 'мг', '420', '5 040');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (54, 1, 'C10AX', 'Другие гиполипидемические средства', 'Эзетимиб', 0.1, 'мг', '10', '3 650');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (55, 1, 'N02AA', 'Природные алкалоиды опия', 'Морфин', 0.7, 'мг', '10', '10');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (56, 1, 'N05AD', 'Производные бутирофенона', 'Галоперидол', 0.05, 'мг', '10', '30');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (57, 1, 'N05BA', 'Производные бензодиазепина', 'Диазепам', 0.1, 'мг', '10', '10');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (58, 1, 'V03AB', 'Антидоты', 'Налоксон', 0.02, 'мкг', '200', '200');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (59, 2, 'A02BA', 'Блокаторы H2-гистаминовых рецепторов', 'Ранитидин', 0.1, 'мг', '300', '3600');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (60, 2, 'A02BA', 'Блокаторы H2-гистаминовых рецепторов', 'Фамотидин', 0.1, 'мг', '40', '480');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (61, 2, 'A02BC', 'Ингибиторы протонного насоса', 'Омепразол', 0.5, 'мг', '40', '480');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (62, 2, 'A02BC', 'Ингибиторы протонного насоса', 'Рабепразол', 0.5, 'мг', '20', '240');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (63, 2, 'A03BA', 'Алкалоиды белладонны, третичные амины', 'Атропин', 0.05, 'мг', '1', '2');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (64, 2, 'A03FA', 'Стимуляторы моторики желудочно-кишечного тракта', 'Метоклопрамид', 0.5, 'мг', '10', '100');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (65, 2, 'A07FA', 'Противодиарейные микроорганизмы', 'Бифидобактерии бифидум', 0.003, 'мг', '600', '7200');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (66, 2, 'A09AA', 'Ферментные препараты', 'Панкреатин', 0.01, 'ЕД', '32000', '384000');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (67, 2, 'A10AB', 'Инсулины короткого действия и их аналоги для инъекционного введения', 'Инсулин растворимый [человеческий генно-инженерный]', 0.05, 'МЕ', '12', '144');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (68, 2, 'A10BA', 'Бигуаниды', 'Метформин', 0.3, 'мг', '2000', '24000');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (69, 2, 'A10BB', 'Производные сульфонилмочевины', 'Глибенкламид', 0.15, 'мг', '8', '96');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (70, 2, 'A10BB', 'Производные сульфонилмочевины', 'Глимепирид', 0.15, 'мг', '4', '48');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (71, 2, 'A12BA', 'Препараты калия', 'Калия хлорид', 0.1, 'мг', '600', '1800');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (72, 2, 'A12CX', 'Другие минеральные вещества', 'Калия и магния аспарагинат', 0.3, 'мл', '100', '300');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (73, 2, 'B01AA', 'Антагонисты витамина K', 'Варфарин', 0.05, 'мг', '07.май', '90');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (74, 2, 'B01AB', 'Группа гепарина', 'Гепарин натрия', 0.85, 'МЕ', '26000', '52000');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (75, 2, 'B01AB', 'Группа гепарина', 'Эноксапарин натрия', 0.85, 'мг', '190', '1330');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (76, 2, 'B01AC', 'Ингибиторы агрегации тромбоцитов', 'Ацетилсалициловая кислота', 1, 'мг', '250', '250');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (77, 2, 'B01AC', 'Ингибиторы агрегации тромбоцитов', 'Ацетилсалициловая кислота', 1, 'мг', '100', '1200');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (78, 2, 'B01AC', 'Ингибиторы агрегации тромбоцитов', 'Клопидогрел', 1, 'мг', '75', '900');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (79, 2, 'B01AC', 'Ингибиторы агрегации тромбоцитов', 'Клопидогрел', 1, 'мг', '300', '300');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (80, 2, 'B01AC', 'Ингибиторы агрегации тромбоцитов', 'Клопидогрел', 1, 'мг', '600', '600');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (81, 2, 'B01AC', 'Ингибиторы агрегации тромбоцитов', 'Монафрам', 1, 'мг', '20', '20');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (82, 2, 'B01AC', 'Ингибиторы агрегации тромбоцитов', 'Тикагрелор', 1, 'мг', '180', '2160');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (83, 2, 'B01AD', 'Ферментные препараты', 'Алтеплаза', 0.35, 'МЕ', '100', '100');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (84, 2, 'B01AD', 'Ферментные препараты', 'Проурокиназа', 0.35, 'МЕ', '8000000', '8000000');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (85, 2, 'B01AD', 'Ферментные препараты', 'Стрептокиназа', 0.35, 'МЕ', '1500000', '1500000');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (86, 2, 'B01AD', 'Ферментные препараты', 'Тенектеплаза', 0.35, 'мг', '50', '50');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (87, 2, 'B01AE', 'Ингибиторы тромбина прямые', 'Бивалирудин', 0.05, 'мг', '425', '425');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (88, 2, 'B01AX', 'Другие антитромботические средства', 'Ривароксабан', 0.3, 'мг', '5', '35');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (89, 2, 'B01AX', 'Другие антитромботические средства', 'Фондапаринукс натрия', 0.3, 'мг', '02.май', '20');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (90, 2, 'B02AB', 'Ингибиторы протеиназ плазмы', 'Апротинин', 0.002, 'мг', '1000', '7000');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (91, 2, 'B03AB', 'Пероральные препараты трехвалентного железа', 'Железа [III] гидроксид полимальтозат', 0.02, 'мг', '200', '2400');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (92, 2, 'B03AC', 'Парентеральные препараты трехвалентного железа', 'Железа [III] гидроксида сахарозный комплекс', 0.03, 'мг', '100', '1200');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (93, 2, 'B03XA', 'Другие антианемические препараты', 'Дарбэпоэтин альфа', 0.005, 'МЕ', '10', '50');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (94, 2, 'B05AA', 'Кровезаменители и препараты плазмы крови', 'Декстран', 0.02, 'мл', '400', '1600');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (95, 2, 'B05BA', 'Растворы для парентерального питания', 'Аминокислоты для парентерального питания', 0.002, 'мл', '500', '3000');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (96, 2, 'B05CX', 'Другие ирригационные растворы', 'Декстроза', 0.1, 'мл', '400', '1600');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (97, 2, 'B05XA', 'Растворы электролитов', 'Натрия гидрокарбонат', 1, 'мл', '400', '800');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (98, 2, 'B05XA', 'Растворы электролитов', 'Натрия хлорид', 1, 'мл', '500', '3000');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (99, 2, 'C01AA', 'Гликозиды наперстянки', 'Дигоксин', 0.04, 'мг', '0.25', '3');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (100, 2, 'C01BA', 'Антиаритмические препараты, класс IA', 'Прокаинамид', 0.02, 'мг', '3000', '36000');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (101, 2, 'C01BB', 'Антиаритмические препараты, класс IB', 'Лидокаин', 0.08, 'мг', '3600', '3600');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (102, 2, 'C01BD', 'Антиаритмические препараты, класс III', 'Амиодарон', 0.2, 'мг', '1600', '3200');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (103, 2, 'C01BD', 'Антиаритмические препараты, класс III', 'Амиодарон', 0.2, 'мг', '600', '6000');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (104, 2, 'C01CA', 'Адренергические и дофаминергические средства', 'Добутамин', 0.1, 'мг', '500', '1000');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (105, 2, 'C01CA', 'Адренергические и дофаминергические средства', 'Допамин', 0.1, 'мг', '300', '600');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (106, 2, 'C01CA', 'Адренергические и дофаминергические средства', 'Норэпинефрин', 0.1, 'мг', '4', '4');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (107, 2, 'C01CA', 'Адренергические и дофаминергические средства', 'Эпинефрин', 0.1, 'мг', '2', '2');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (108, 2, 'C01DA', 'Органические нитраты', 'Изосорбида динитрат', 1, 'мг', '60', '720');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (109, 2, 'C01DA', 'Органические нитраты', 'Изосорбида мононитрат', 1, 'мг', '40', '480');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (110, 2, 'C01DA', 'Органические нитраты', 'Нитроглицерин', 1, 'мг', '1', '5');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (111, 2, 'C01DA', 'Органические нитраты', 'Нитроглицерин', 1, 'мг', '144', '144');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (112, 2, 'C03AA', 'Тиазиды', 'Гидрохлоротиазид', 0.05, 'мл', '25', '300');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (113, 2, 'C03CA', 'Сульфонамиды', 'Торасемид', 0.5, 'мг', '10', '120');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (114, 2, 'C03CA', 'Сульфонамиды', 'Фуросемид', 0.5, 'мг', '60', '720');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (115, 2, 'C03DA', 'Антагонисты альдостерона', 'Спиронолактон', 0.3, 'мг', '200', '2400');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (116, 2, 'C03DA', 'Антагонисты альдостерона', 'Эплеренон', 0.3, 'мг', '50', '600');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (117, 2, 'C07AA', 'Неселективные бета-адреноблокаторы', 'Пропранолол', 0.4, 'мг', '160', '1760');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (118, 2, 'C07AA', 'Неселективные бета-адреноблокаторы', 'Пропранолол', 0.4, 'мг', '5', '10');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (119, 2, 'C07AA', 'Неселективные бета-адреноблокаторы', 'Соталол', 0.4, 'мг', '240', '2880');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (120, 2, 'C07AB', 'Селективные бета-адреноблокаторы', 'Метопролол', 0.55, 'мг', '100', '1200');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (121, 2, 'C07AB', 'Селективные бета-адреноблокаторы', 'Метопролол', 0.55, 'мг', '15', '30');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (122, 2, 'C07AB', 'Селективные бета-адреноблокаторы', 'Эсмолол', 0.55, 'мг', '960', '960');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (123, 2, 'C07AG', 'Альфа- и бета-адреноблокаторы', 'Карведилол', 0.1, 'мг', '50', '600');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (124, 2, 'C08CA', 'Производные дигидропиридина', 'Амлодипин', 0.06, 'мг', '5', '60');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (125, 2, 'C08DA', 'Производные фенилалкиламина', 'Верапамил', 0.16, 'мг', '240', '2880');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (126, 2, 'C08DA', 'Производные фенилалкиламина', 'Верапамил', 0.16, 'мг', '5', '10');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (127, 2, 'C08DB', 'Производные бензотиазепина', 'Дилтиазем', 0.08, 'мг', '180', '2160');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (128, 2, 'C09AA', 'Ингибиторы АПФ', 'Зофеноприл', 0.9, 'мг', '60', '720');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (129, 2, 'C09AA', 'Ингибиторы АПФ', 'Каптоприл', 0.9, 'мг', '100', '1200');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (130, 2, 'C09AA', 'Ингибиторы АПФ', 'Лизиноприл', 0.9, 'мг', '10', '120');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (131, 2, 'C09AA', 'Ингибиторы АПФ', 'Периндоприл', 0.9, 'мг', '8', '96');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (132, 2, 'C09AA', 'Ингибиторы АПФ', 'Рамиприл', 0.9, 'мг', '10', '120');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (133, 2, 'C09AA', 'Ингибиторы АПФ', 'Трандолаприл', 0.9, 'мг', '4', '48');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (134, 2, 'C09AA', 'Ингибиторы АПФ', 'Эналаприл', 0.9, 'мг', '20', '240');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (135, 2, 'C09CA', 'Антагонисты ангиотензина II', 'Валсартан', 0.05, 'мг', '80', '960');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (136, 2, 'C10AA', 'Ингибиторы ГМГ-КоА-редуктазы', 'Аторвастатин', 1, 'мг', '80', '960');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (137, 2, 'C10AA', 'Ингибиторы ГМГ-КоА-редуктазы', 'Розувастатин', 1, 'мг', '40', '480');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (138, 2, 'C10AA', 'Ингибиторы ГМГ-КоА-редуктазы', 'Симвастатин', 1, 'мг', '40', '480');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (139, 2, 'D07AA', 'Глюкокортикоиды с низкой активностью (группа I)', 'Преднизолон', 0.01, 'мг', '10', '80');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (140, 2, 'D08AG', 'Препараты йода', 'Повидон-Йод', 0.95, 'мг', '20', '100');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (141, 2, 'D08AX', 'Другие антисептики и дезинфицирующие средства', 'Этанол', 0.97, 'мл', '20', '80');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (142, 2, 'H02AB', 'Глюкокортикоиды', 'Дексаметазон', 0.01, 'мг', '01.май', '12');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (143, 2, 'J01AA', 'Тетрациклины', 'Доксициклин', 0.005, 'мг', '200', '1400');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (144, 2, 'J01CR', 'Комбинации пенициллинов, включая комбинации с ингибиторами бета-лактамаз', 'Амоксициллин + [Клавулановая кислота]', 0.01, 'мг', '3000', '21000');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (145, 2, 'J01DD', 'Цефалоспорины третьего поколения', 'Цефоперазон + [Сульбактам]', 0.07, 'мг', '8000', '56000');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (146, 2, 'J01DD', 'Цефалоспорины третьего поколения', 'Цефтазидим', 0.07, 'мг', '4000', '28000');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (147, 2, 'J01DD', 'Цефалоспорины третьего поколения', 'Цефтриаксон', 0.07, 'мг', '2000', '14000');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (148, 2, 'J01DH', 'Карбапенемы', 'Имипенем + [Циластатин]', 0.04, 'мг', '2000', '20000');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (149, 2, 'J01DH', 'Карбапенемы', 'Меропенем', 0.04, 'мг', '3000', '21000');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (150, 2, 'J01FA', 'Макролиды', 'Азитромицин', 0.08, 'мг', '500', '2500');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (151, 2, 'J01FA', 'Макролиды', 'Кларитромицин', 0.08, 'мг', '30', '210');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (152, 2, 'J01XA', 'Антибиотики гликопептидной структуры', 'Ванкомицин', 0.05, 'мг', '2000', '14000');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (153, 2, 'J02AC', 'Производные триазола', 'Вориконазол', 0.04, 'мг', '400', '2800');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (154, 2, 'J02AC', 'Производные триазола', 'Флуконазол', 0.04, 'мг', '100', '700');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (155, 2, 'M01AB', 'Производные уксусной кислоты и родственные соединения', 'Диклофенак', 0.1, 'мг', '100', '400');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (156, 2, 'N01AH', 'Опиоидные анальгетики', 'Фентанил', 0.05, 'мг', '0.1', '0.2');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (157, 2, 'N02AA', 'Природные алкалоиды опия', 'Морфин', 0.9, 'мг', '10', '20');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (158, 2, 'N03AE', 'Производные бензодиазепина', 'Клоназепам', 0.02, 'мг', '2', '24');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (159, 2, 'N05AD', 'Производные бутирофенона', 'Галоперидол', 0.075, 'мг', '100', '1200');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (160, 2, 'N05AD', 'Производные бутирофенона', 'Дроперидол', 0.075, 'мг', '5', '10');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (161, 2, 'N05AL', 'Бензамиды', 'Сульпирид', 0.1, 'мг', '300', '2100');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (162, 2, 'N05BA', 'Производные бензодиазепина', 'Бромдигидрохлорфенилбензодиазепин', 0.45, 'мг', '1', '12');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (163, 2, 'N05BA', 'Производные бензодиазепина', 'Диазепам', 0.45, 'мг', '10', '120');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (164, 2, 'N05BA', 'Производные бензодиазепина', 'Оксазепам', 0.45, 'мг', '50', '600');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (165, 2, 'N06AB', 'Селективные ингибиторы обратного захвата серотонина', 'Пароксетин', 0.04, 'мг', '20', '240');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (166, 2, 'N06AB', 'Селективные ингибиторы обратного захвата серотонина', 'Сертралин', 0.04, 'мг', '50', '600');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (167, 2, 'R06AC', 'Замещенные этилендиамины', 'Хлоропирамин', 0.01, 'мг', '100', '1200');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (168, 2, 'V03AB', 'Антидоты', 'Налоксон', 0.1, 'мг', '2', '2');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (169, 2, 'V03AB', 'Антидоты', 'Протамина сульфат', 0.1, 'мг', '30', '30');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (170, 2, 'V08AB', 'Водорастворимые нефротропные низкоосмолярные рентгеноконтрастные средства', 'Йоверсол', 0.8, 'мл', '300', '300');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (171, 2, 'V08AB', 'Водорастворимые нефротропные низкоосмолярные рентгеноконтрастные средства', 'Йогексол', 0.8, 'мл', '300', '300');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (172, 2, 'V08AB', 'Водорастворимые нефротропные низкоосмолярные рентгеноконтрастные средства', 'Йодиксанол', 0.8, 'мл', '300', '300');
INSERT INTO public.exp_std_prep (id, id_std, kod, klass, name, pok, ed, ssd, skd) VALUES (173, 2, 'V08AB', 'Водорастворимые нефротропные низкоосмолярные рентгеноконтрастные средства', 'Йопромид', 0.8, 'мл', '300', '300');