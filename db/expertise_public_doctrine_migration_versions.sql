create table doctrine_migration_versions
(
    version        varchar(191) not null
        constraint doctrine_migration_versions_pkey
            primary key,
    executed_at    timestamp(0) default NULL::timestamp without time zone,
    execution_time integer
);

alter table doctrine_migration_versions
    owner to exp_user;

INSERT INTO public.doctrine_migration_versions (version, executed_at, execution_time) VALUES ('DoctrineMigrations\Version20210618085640', '2021-06-18 08:57:46', 241);
INSERT INTO public.doctrine_migration_versions (version, executed_at, execution_time) VALUES ('DoctrineMigrations\Version20210618091120', '2021-06-18 09:12:15', 142);