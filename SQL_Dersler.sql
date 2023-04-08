SELECT * FROM proje_1.ogrenciler;

create table proje_1.dersler(
id int not null,
dersAd varchar(45),
kont int,
primary key(id)


);

create table proje_1.urunler(
urunId int not null,
urunAdi varchar(50),
urunFiyati double,
primary key(urunId)

);

insert into proje_1.urunler values(1, "bilgisayar",12);
insert into proje_1.urunler values(2,"elma",20);
insert into proje_1.urunler values(3,"masa",100.49);
insert into proje_1.urunler(urunId,urunAdi) values(4, "armut");
select * from proje_1.urunler;


