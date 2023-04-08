create table proje_1.customer(
id int not null auto_increment,
ad varchar(45) not null,
adres varchar(45),
kayit_tarihi datetime default now(),
yas int check(yas>18),
primary key(id)



);
insert into proje_1.customer(ad,adres,kayit_tarihi,yas)values("Ali","Mersin",now(),23);
insert into proje_1.customer(ad,adres,kayit_tarihi,yas)values("Ahmet","İstanbul",now(),24);

