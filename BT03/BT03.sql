create schema BT03;
use BT03;

create table orders (
orderId int primary key
);

create table products (
productId int primary key,
peoductName varchar (255)
);

create table order_items (
productId int not null,
orderId int not null,
ngayMua date not null,
soLuong decimal not null default 0
);

alter table products
drop peoductName;

alter table products
add productName varchar (255) not null;

alter table order_items
add primary key (productId, orderId);

alter table order_items
add foreign key (orderId) references orders(orderId);

alter table order_items
add foreign key (productId) references products(productId);