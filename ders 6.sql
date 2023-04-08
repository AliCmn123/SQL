-- update tablodaki verileri güncellemek için kullanırız

-- update tablo ismi set kolon isim = yeni deger

set sql_safe_updates=0;
update proje2.personel set id=id+10;

select * from proje2.personel;

delete from proje2.personel;
insert into proje2.personel values(1, "Yunus", "Bakim", 16, 4800.50);
insert into proje2.personel values(2, "Sena", "Personel", 15, 4250.25);
insert into proje2.personel values(3, "Ali", "Personel", 17, 5000.25);
insert into proje2.personel values(4, "Ahmet", "Yonetim", 14, 7000.50);
insert into proje2.personel values(5, "Zafer", "Yonetim", 16, 8000.50);
insert into proje2.personel values(6, "Tugrul", "Yonetim", 25, 25000.50);
insert into proje2.personel values(7, "Huzeyfe", "Tesis", 15, 5000.50);
insert into proje2.personel values(8, "Huzeyfe", "Bakim", 15, 8000.50);

-- id si 11 olanlanın bakın ve bolumunu tesis yapalım sonra yasini 20 yapalım

update proje2.personel set bolum ="Tesis", yas=20 where id=11;

update proje2.personel set maas=+2000  where bolum="Personel";

update proje2.personel set bolum="Cio" where id=16;

select @maxMaas:=max(maas) as maxMaas from proje2.personel;

select * from proje2.personel where maas= @maxMaas;

-- yas ortalamasinin uzerinde olanlardan en dusuk maas alanin tum bilgilerini getirelim

/* 
1. asama => yas ortalamasinin bulalim
2. asama => yas ortalamasinin uzerindeki en dusuk maasi bulalim
3. asama => bu maasa sahip olan kisileri listeleyelim 
*/

select @ortalamaYas:=avg(yas) from proje2.personel;
select @kckMaas:=min(maas) from proje2.personel where yas>@ortalamaYas;
select * from proje2.personel where maas=@kckMaas;

-- bakim personel bolumlerindeki calisanların maaslarin 500 tl 

update proje2.personel set maas=maas+500 where bolum in("Personel","Bakim");


select * from proje2.personel;

-- alter kullanımı

-- kolon ekleme

alter table proje2.personel add adres varchar(150) default "Almanya";


alter table proje2.personel add cinsiyet varchar(50);

select * from proje2.personel;

--             eski isim                  yeni isim 


alter table proje2.persons rename to proje2.prs;

UPDATE proje2.prs set cinsiyet ="erkek" where id<> 12;

select * from proje2.prs;

update proje2.prs set cinsiyet="kiz" where id=12;

-- kolon isim değiştirme

alter table proje2.prs rename column bolum to departman;

alter table proje2.prs rename column ad to isim;

alter table proje2.prs modify adres varchar(200);


-- adres kolonunu default olarak Turkiye atayalim

alter table proje2.prs alter column adres set default 'Turkiye';

 alter table proje2.prs modify adres  varchar(200) default 'Turkiye';

insert into proje2.prs(id,isim,departman,yas,maas,cinsiyet) values (19,"Can","Tesis",35,7000,"erkek");

alter table proje2.prs add constraint check(maas>4000);

insert into proje2.prs(id,isim,departman,yas,maas,cinsiyet) values (20,"Hasan","Tesis",35,5000,"erkek");



