create table proje2.musteriler(
id int not null auto_increment,
ssn varchar(9) not null,
isim varchar(45),
adres varchar(45),
kayit_tarihi datetime default now(),
yas int,
primary key(id)
);


insert into proje2.musteriler (ssn,isim,adres,yas)values("4655464","Ali","Mersin",20);
insert into proje2.musteriler (ssn,isim,adres,yas)values("128527","Sena","Frankfurt",17);
insert into proje2.musteriler (ssn,isim,adres,yas)values("1255654","Ahmet","Ankara",15);
insert into proje2.musteriler (ssn,isim,adres,yas)values("1275487","Zafer","Bukres",24);
insert into proje2.musteriler (ssn,isim,adres,yas)values("7894512","Huzeyfe","Bukres",45);
insert into proje2.musteriler (ssn,isim,adres,yas)values("6875485","Mehdi","İzmir",12);

select isim,adres,yas from proje2.musteriler;
select * from proje2.musteriler;
select kayit_tarihi,isim from proje2.musteriler;

select * from proje2.musteriler where isim="Ali";

select * from proje2.musteriler where yas>20;

insert into proje2.musteriler (ssn,isim,adres,kayit_tarihi,yas)values("12562465","Fuat","İstanbul","2022-02-02 08:15:00",19);

select * from proje2.musteriler where kayit_tarihi<"2023-01-01 00:00:00";

select * from proje2.musteriler;

select * from proje2.musteriler where isim="Ahmet" and yas>12;

select isim from proje2.musteriler where yas>16 and yas<18;

select * from proje2.musteriler where id >2 and id<4 or yas>20;


select * from proje2.musteriler where id between 2 and 5;

select * from proje2.musteriler where id in(2,6,3);

select * from proje2.musteriler where adres in("Ankara","İstanbul");

select * from proje2.musteriler;

select * from proje2.musteriler where isim like "_l%";

select * from proje2.musteriler where isim like "%z%";
select * from proje2.musteriler where isim like  "%__f%";

select * from proje2.musteriler where ssn like "%55%";

select * from proje2.musteriler where isim like"__n%";

