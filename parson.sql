create table proje_1.persons (
id int not null,
ad varchar(45),
soyad varchar(45),
yas int,
primary key(id)

);
insert into proje_1.persons values(1,"Ali","Kormaz",17);
insert into proje_1.persons values(2,"Ahmet","Cobam",13);
select * from proje_1.persons;

create table proje_1.student(
id int not null,
ad varchar(45) not null,
not_ort double,
kayit_tarihi date,

primary key(id)
);


insert into proje_1.student values(1,"Ali",85.58,curdate());
insert into proje_1.student values(2,"Can",65.58,curdate());

select * from proje_1.student;

create table proje_1.siniflar(

id int not null,
sinif_adi varchar(5) not null unique,
kayit_zamani datetime,
primary key(id)

);


insert into proje_1.siniflar values(1,"2/A",now());
insert into proje_1.siniflar values(2,"2/B",now());
select * from proje_1.siniflar;


create table proje_1.kisiler(
id int not null auto_increment,
adi varchar(45),
primary key(id)


);

insert into proje_1.kisiler(adi) values("Ali");


create table proje_1.person(
id int not null,

adi varchar(45),

yas int,

check(yas>=18),
primary key(id)

);

insert into proje_1.person3 values(1,"Asya",20);


create table proje_1.Orders(
id int not null,
price double,
orderDate datetime default now(),
primary key(id)

);
insert into proje_1.Orders(id,price) values(1,23.55);
select * from proje_1.Orders;

create table proje_1.Orders2(
id int not null,
price double default 0,
orderDate datetime default now(), 
primary key(id)
);


create table proje2.product(
id int not null auto_increment,
adi varchar(45) not null,
fiyat int check(fiyat>0),
adet double default 0,
num varchar(45) unique,
kayit_tarihi datetime default now(),
primary key(id)



);

insert into proje2.product values(1,"Ali",12,23.4,"02",now());
insert into proje2.product values(2,"Ahmet",14,345.4,"03",now());

select * from proje2.product;


