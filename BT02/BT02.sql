create schema BT02;
use BT02;

create table books (
bookId int primary key not null,
bookName char (20)
);

create table readers (
readerId int primary key not null,
readerName char (50)
);

create table borrowings (
bookId int not null,
readerId int not null,
ngayMuon datetime,
ngayTra datetime,
primary key (bookId, readerId),
foreign key (bookId) references books(bookId),
foreign key (readerId) references readers(readerId)
);

alter table borrowings modify ngayMuon datetime not null;