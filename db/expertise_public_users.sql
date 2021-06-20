create table users
(
    id       integer      not null
        constraint users_pkey
            primary key,
    username varchar(180) not null,
    roles    json         not null,
    password varchar(255) not null,
    salt     varchar(255) not null
);

comment on column users.salt is 'Соль';

alter table users
    owner to exp_user;

create unique index uniq_1483a5e9f85e0677
    on users (username);

INSERT INTO public.users (id, username, roles, password, salt) VALUES (8, 'test', '[]', 'zG7qV2BMyPDuW5HcXrdFenmYag80jm8r8BliTN0Vv37OAA9VtD47ro4Ks/+OLf18XL7gyHFnybqwdQIfhAGPXg==', '1624009886');
INSERT INTO public.users (id, username, roles, password, salt) VALUES (9, 'doctor', '["ROLE_DOCTOR"]', 'jyK0Kus5MPbcwXKgcL21Fz+WhC6uz63nBHd4vJGqa8fgGdHtaAZtjTtfmYk4EsjMTIcIMNQaSx4nCDDvsNRaLg==', '1624030679');
INSERT INTO public.users (id, username, roles, password, salt) VALUES (10, 'expert', '["ROLE_EXPERT"]', 'A4sHJEg1R+kw3agg1LshSGTozamRFdhzzWBoH8DS+O1aHD3ns03llEQwEYj/TNg4Qw790JopIAgNqb7TLhadQg==', '1624030679');