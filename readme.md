docker run -it --rm postgres psql -h 192.168.1.4 -U postgres -W

create table p_user ( 
    id serial primary key,
    name varchar(64),
    gender smallint,
    create_at timestamp,
    update_at timestamp
);


insert into p_user (name, gender, create_at, update_at)
values ('aaa', 1, '2019-03-25 00:00:00', '2019-03-25 00:00:00');

insert into p_user (name, gender, create_at, update_at)
values ('bbb', 0, '2019-03-25 00:00:00', '2019-03-25 00:00:00');