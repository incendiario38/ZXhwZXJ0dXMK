create table exp_result
(
    id          serial not null
        constraint exp_result_pk
            primary key,
    id_sluch    integer,
    id_krit_str integer,
    status      integer default 0
);

alter table exp_result
    owner to exp_user;

create unique index exp_result_id_uindex
    on exp_result (id);

INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2215, 34, 287, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2216, 34, 288, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2217, 34, 289, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2219, 34, 291, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2220, 34, 292, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2221, 34, 293, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2218, 34, 290, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2170, 29, 287, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2171, 29, 288, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2172, 29, 289, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2174, 29, 291, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2175, 29, 292, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2176, 29, 293, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2178, 29, 295, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2173, 29, 290, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2177, 29, 294, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2179, 30, 287, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2180, 30, 288, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2181, 30, 289, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2183, 30, 291, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2184, 30, 292, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2185, 30, 293, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2182, 30, 290, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2186, 30, 294, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2187, 30, 295, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2188, 31, 287, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2189, 31, 288, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2190, 31, 289, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2192, 31, 291, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2193, 31, 292, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2194, 31, 293, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2191, 31, 290, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2195, 31, 294, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2196, 31, 295, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2197, 32, 287, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2198, 32, 288, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2199, 32, 289, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2201, 32, 291, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2202, 32, 292, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2203, 32, 293, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2200, 32, 290, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2204, 32, 294, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2205, 32, 295, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2206, 33, 287, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2207, 33, 288, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2208, 33, 289, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2210, 33, 291, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2211, 33, 292, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2212, 33, 293, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2209, 33, 290, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2213, 33, 294, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2214, 33, 295, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2222, 34, 294, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2223, 34, 295, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2224, 35, 287, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2225, 35, 288, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2226, 35, 289, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2228, 35, 291, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2323, 23, 287, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2324, 23, 288, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2325, 23, 289, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2327, 23, 291, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2328, 23, 292, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2329, 23, 293, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2326, 23, 290, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2229, 35, 292, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2230, 35, 293, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2227, 35, 290, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2231, 35, 294, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2232, 35, 295, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2330, 23, 294, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2331, 23, 295, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2332, 5, 287, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2333, 5, 288, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2334, 5, 289, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2336, 5, 291, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2337, 5, 292, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2338, 5, 293, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2335, 5, 290, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2339, 5, 294, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2340, 5, 295, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2305, 25, 287, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2306, 25, 288, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2307, 25, 289, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2309, 25, 291, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2310, 25, 292, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2311, 25, 293, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2308, 25, 290, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2312, 25, 294, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2313, 25, 295, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2423, 22, 288, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2422, 22, 287, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2424, 22, 289, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2426, 22, 291, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2427, 22, 292, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2428, 22, 293, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2425, 22, 290, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2429, 22, 294, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2430, 22, 295, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2350, 1, 287, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2351, 1, 288, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2352, 1, 289, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2354, 1, 291, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2355, 1, 292, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2356, 1, 293, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2353, 1, 290, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2357, 1, 294, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2358, 1, 295, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1927, 2, 311, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1928, 2, 312, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1929, 2, 313, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1930, 2, 314, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1931, 2, 315, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1932, 2, 316, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1933, 2, 317, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1934, 2, 318, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1935, 2, 319, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1936, 3, 311, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1937, 3, 312, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1938, 3, 313, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1939, 3, 314, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1940, 3, 315, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1941, 3, 316, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1942, 3, 317, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1943, 3, 318, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1944, 3, 319, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1945, 4, 311, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1946, 4, 312, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1947, 4, 313, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1948, 4, 314, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1949, 4, 315, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1950, 4, 316, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1951, 4, 317, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1952, 4, 318, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1953, 4, 319, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1963, 6, 311, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1964, 6, 312, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1965, 6, 313, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1966, 6, 314, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1967, 6, 315, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1968, 6, 316, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1969, 6, 317, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1970, 6, 318, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1971, 6, 319, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1972, 7, 311, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1973, 7, 312, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1974, 7, 313, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1975, 7, 314, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1976, 7, 315, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1977, 7, 316, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1978, 7, 317, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1979, 7, 318, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1980, 7, 319, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1981, 8, 287, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1982, 8, 288, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1983, 8, 289, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1985, 8, 291, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1986, 8, 292, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1987, 8, 293, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1984, 8, 290, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1988, 8, 294, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1989, 8, 295, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1990, 9, 311, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1991, 9, 312, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1992, 9, 313, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1993, 9, 314, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1994, 9, 315, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1995, 9, 316, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1996, 9, 317, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1997, 9, 318, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1998, 9, 319, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (1999, 10, 287, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2000, 10, 288, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2001, 10, 289, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2003, 10, 291, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2004, 10, 292, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2005, 10, 293, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2002, 10, 290, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2006, 10, 294, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2007, 10, 295, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2008, 11, 311, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2009, 11, 312, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2010, 11, 313, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2011, 11, 314, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2012, 11, 315, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2013, 11, 316, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2014, 11, 317, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2015, 11, 318, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2016, 11, 319, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2017, 12, 311, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2018, 12, 312, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2019, 12, 313, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2020, 12, 314, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2021, 12, 315, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2022, 12, 316, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2023, 12, 317, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2024, 12, 318, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2025, 12, 319, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2026, 13, 311, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2027, 13, 312, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2028, 13, 313, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2029, 13, 314, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2030, 13, 315, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2031, 13, 316, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2032, 13, 317, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2033, 13, 318, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2034, 13, 319, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2035, 14, 311, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2036, 14, 312, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2037, 14, 313, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2038, 14, 314, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2039, 14, 315, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2040, 14, 316, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2041, 14, 317, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2042, 14, 318, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2043, 14, 319, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2044, 15, 311, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2045, 15, 312, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2046, 15, 313, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2047, 15, 314, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2048, 15, 315, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2049, 15, 316, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2050, 15, 317, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2051, 15, 318, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2052, 15, 319, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2053, 16, 311, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2054, 16, 312, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2055, 16, 313, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2056, 16, 314, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2057, 16, 315, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2058, 16, 316, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2059, 16, 317, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2060, 16, 318, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2061, 16, 319, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2062, 17, 311, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2063, 17, 312, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2064, 17, 313, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2065, 17, 314, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2066, 17, 315, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2067, 17, 316, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2068, 17, 317, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2069, 17, 318, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2070, 17, 319, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2071, 18, 287, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2072, 18, 288, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2073, 18, 289, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2075, 18, 291, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2076, 18, 292, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2077, 18, 293, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2074, 18, 290, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2078, 18, 294, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2079, 18, 295, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2080, 19, 311, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2081, 19, 312, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2082, 19, 313, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2083, 19, 314, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2084, 19, 315, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2085, 19, 316, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2086, 19, 317, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2087, 19, 318, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2088, 19, 319, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2089, 20, 311, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2090, 20, 312, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2091, 20, 313, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2092, 20, 314, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2093, 20, 315, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2094, 20, 316, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2095, 20, 317, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2096, 20, 318, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2097, 20, 319, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2098, 21, 311, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2099, 21, 312, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2100, 21, 313, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2101, 21, 314, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2102, 21, 315, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2103, 21, 316, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2104, 21, 317, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2105, 21, 318, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2106, 21, 319, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2125, 24, 311, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2126, 24, 312, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2127, 24, 313, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2128, 24, 314, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2129, 24, 315, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2130, 24, 316, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2131, 24, 317, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2132, 24, 318, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2133, 24, 319, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2143, 26, 311, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2144, 26, 312, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2145, 26, 313, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2146, 26, 314, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2147, 26, 315, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2148, 26, 316, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2149, 26, 317, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2150, 26, 318, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2151, 26, 319, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2152, 27, 287, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2153, 27, 288, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2154, 27, 289, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2156, 27, 291, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2157, 27, 292, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2158, 27, 293, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2155, 27, 290, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2159, 27, 294, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2160, 27, 295, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2161, 28, 287, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2162, 28, 288, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2163, 28, 289, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2165, 28, 291, 1);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2166, 28, 292, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2167, 28, 293, 0);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2164, 28, 290, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2168, 28, 294, 2);
INSERT INTO public.exp_result (id, id_sluch, id_krit_str, status) VALUES (2169, 28, 295, 2);