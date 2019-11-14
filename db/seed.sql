create table homies (
    user_id serial primary key,
    name varchar(100),
    email varchar,
    profile_img text
);
create table homies_hash (
    hash_id serial primary key,
    hash text,
    user_id int REFERENCES homies(user_id)
);
create table posts (
post_id serial primary key,
title varchar(40),
img_url text,
CONTENT text,
likes int,
user_id int REFERENCES homies(user_id)
);

insert into homies (name, email, profile_img)
values('nic', 'nic@gaml.com', 'https://i.ytimg.com/vi/Zky9xDEjLlY/maxresdefault.jpg'),
('ethan', 'ehtan@gaml.com', 'https://i.ytimg.com/vi/Zky9xDEjLlY/maxresdefault.jpg');

insert into homies_hash (hash, user_id)
values('password', 1),
('helo',2);

insert into posts(title, img_url, content, likes, user_id)
values ('cool bike', 'https://2yrh403fk8vd1hz9ro2n46dd-wpengine.netdna-ssl.com/wp-content/uploads/2019/08/2020-Honda-CRF250R-Review-motocross-motorcycle-14.jpg', 'so awesome', 0, 1),
('another one', 'https://2yrh403fk8vd1hz9ro2n46dd-wpengine.netdna-ssl.com/wp-content/uploads/2019/08/2020-Honda-CRF250R-Review-motocross-motorcycle-8.jpg', 'awesome bike', 0, 2);
