create schema BT04;
use BT04;

create table users (
userId int primary key,
userName varchar (255) unique not null,
email varchar (255) unique not null,
userStatus varchar (255) default 'active'
);

alter table users
add constraint checkStatus 
check (userStatus in ('active', 'inactive'));

-- drop table users; 