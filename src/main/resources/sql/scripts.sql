create table users
(
    username varchar(50)  not null primary key,
    password varchar(500) not null,
    enabled  boolean      not null
);
create table authorities
(
    username  varchar(50) not null,
    authority varchar(50) not null,
    constraint fk_authorities_users foreign key (username) references users (username)
);
create unique index ix_auth_username on authorities (username, authority);


insert into users
values ('user', '{bcrypt}$2a$12$nCkSLtPBbn80AjxrZWFAeemXObyTKPEPYxEi.L7U00OMeFE.seFxS', 1);
insert into authorities
values ('user', 'read');

insert into users
values ('admin', '{bcrypt}$2a$12$sEUgqIH7qHIc29cv0coJI.f77w1zswx0hGWYDsELYCt3wQlYdNrcC', 1);
insert into authorities
values ('admin', 'admin');


create table `customers`
(
    `id`    int          not null auto_increment,
    `email` varchar(50)  not null,
    `pwd`   varchar(200) not null,
    `role`  varchar(40)  not null,
    primary key (`id`)
);

insert into customers (email, pwd, role)
values ('user@example.com',
        '{bcrypt}$2a$12$nCkSLtPBbn80AjxrZWFAeemXObyTKPEPYxEi.L7U00OMeFE.seFxS',
        'read');

insert into customers (email, pwd, role)
values ('admin@example.com',
        '{bcrypt}$2a$12$sEUgqIH7qHIc29cv0coJI.f77w1zswx0hGWYDsELYCt3wQlYdNrcC',
        'admin');
