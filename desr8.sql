use proje2;

create table urunler(
urun_id int primary key auto_increment,
urun_adi varchar(50),
fiyat double
);

insert into urunler(urun_adi,fiyat) values("Hanmburger",8.50);
insert into urunler(urun_adi,fiyat) values("Cheeseburger",10.50);
insert into urunler(urun_adi,fiyat) values("Sucuk Burge",11);

select * from urunler;


create table siparis(
siparisd_id int primary key auto_increment,
urun_id int,
adet int,
toplam_fiyat double,
adres varchar(255),
foreign key (urun_id) references urunler(urun_id)
on delete cascade
on update cascade
);

insert into siparis(urun_id,adet,toplam_fiyat,adres) values(4,5,42.5,"Istanbul");
insert into siparis(urun_id,adet,toplam_fiyat,adres) values(2,2,21,"Ankara");
insert into siparis(urun_id,adet,toplam_fiyat,adres) values(3,1,11,"Istanbul");
delete from urunler where urun_id=1;
select * from siparis;
select * from urunler;

update urunler set urun_id=urun_id+10;

set sql_safe_updates=0;



create table kategoriler(
kat_id int primary key auto_increment,
kat_adi varchar(100)
);

insert into kategoriler(kat_adi) values("Computer");

insert into kategoriler(kat_adi) values("Telefon");

insert into kategoriler(kat_adi) values("Ev esyasi");



create table products(
product_id int primary key auto_increment,
kat_id int, 
product_adi varchar(100),
product_fiyat double,
foreign key (kat_id) references kategoriler(kat_id)
on delete cascade
on update cascade
);

insert into products(kat_id,product_adi,product_fiyat) values(1,"Dell",1000);
insert into products(kat_id,product_adi,product_fiyat) values(2,"Samsung",700);
insert into products(kat_id,product_adi,product_fiyat) values(3,"Bulasik Makinasi",700);
insert into products(kat_id,product_adi,product_fiyat) values(3,"Camasir Makinesi",800);

select * from products;
select * from kategoriler;

delete from kategoriler where kat_id=3;


select kategoriler.kat_id,kategoriler.kat_adi,products.product_adi,products.product_fiyat 
from products 
left join kategoriler
on kategoriler.kat_id=products.kat_id;



select kategoriler.kat_id,kategoriler.kat_adi,products.product_adi,products.product_fiyat 
from products 
right join kategoriler
on kategoriler.kat_id=products.kat_id;

select kategoriler.kat_id,kategoriler.kat_adi,products.product_adi,products.product_fiyat 
from products 
inner join kategoriler
on kategoriler.kat_id=products.kat_id;



