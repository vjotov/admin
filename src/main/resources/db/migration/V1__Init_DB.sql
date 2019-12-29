create sequence hibernate_sequence start 1 increment 1;

create table user_role (
    user_id int8 not null,
    roles varchar(255)
);

create table usr (
    id int8 not null,
    active boolean not null,
    email varchar(255),
    password varchar(255) not null,
    username varchar(255) not null,
    primary key (id)
);

alter table if exists user_role
    add constraint user_role_user_fk
    foreign key (user_id) references usr;

create extension if not exists pgcrypto;

insert into usr (id, username, password, active)
    values (1, 'admin', crypt('123', gen_salt('bf',8)), true);

insert into user_role (user_id, roles)
    values (1, 'USER'), (1, 'ADMIN');