-- create table states
-- (
--     id   bigint generated by default as identity,
--     name varchar(255) not null unique,
--     primary key (id)
-- );
--
-- create table tasks
-- (
--     id       bigint generated by default as identity,
--     state_id bigint,
--     todo_id  bigint,
--     name     varchar(255) not null,
--     priority varchar(255) check (priority in ('LOW', 'MEDIUM', 'HIGH')),
--     primary key (id)
-- );
--
-- create table todo_collaborator
-- (
--     collaborator_id bigint not null,
--     todo_id         bigint not null
-- );
--
-- create table todos
-- (
--     created_at timestamp(6) not null,
--     id         bigint generated by default as identity,
--     owner_id   bigint,
--     title      varchar(255) not null unique,
--     primary key (id)
-- );
--
-- create table users
-- (
--     id         bigint generated by default as identity,
--     email      varchar(255) not null unique,
--     first_name varchar(255) not null,
--     last_name  varchar(255) not null,
--     password   varchar(255) not null,
--     role       varchar(255) not null,
--     primary key (id)
-- );
-- ;
-- alter table if exists tasks add constraint FKpm8o7r3k2d06eqaehxvdddfah foreign key (state_id) references states;
-- alter table if exists tasks add constraint FKndwtm2u4rdwdvsox5x3ulo80p foreign key (todo_id) references todos;
-- alter table if exists todo_collaborator add constraint FK2an385byaawdel6f0svpt1igp foreign key (todo_id) references todos;
-- alter table if exists todo_collaborator add constraint FKgw0k0aw4m2ovpyfl30h2wmoxd foreign key (collaborator_id) references users;
-- alter table if exists todos add constraint FKk1l4pem9qwnplbmfwhbsjoccs foreign key (owner_id) references users;