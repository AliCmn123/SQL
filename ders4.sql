create table proje2.personel(
id int not null primary key,
ad varchar(45),
bolum varchar(50),
yas int,
maas double

);



insert into proje2.personel values(1,"Yunus","Bakim",16,4800.50);
insert into proje2.personel values(2,"Sena","Personel",15,4250.25);
insert into proje2.personel values(3,"Ali","Personel",17,5000.50);
insert into proje2.personel values(4,"Ahmet","Yönetim",14,7800.50);
insert into proje2.personel values(5,"Zafer","Yönetim",25,8000.50);
insert into proje2.personel values(6,"Tugrul","Tesis",15,10000.50);
insert into proje2.personel values(7,"Zafer","Tesis",15,5000.50);


select * from proje2.personel;

select count(id) as personel_sayisi from proje2.personel;
--               panele ne olduğunu yazar

select count(yas) as personel_15 from proje2.personel where yas>15;

select count(ad) as personel_zafer from proje2.personel where ad="Zafer";


-- ismi farklı olanları listeleyin
select count(distinct(ad)) as farkli_isim from proje2.personel;

-- sum kullsnımı
select sum(maas) as toplam_maas from proje2.personel;

select sum(maas) as yönetim_maaslari from proje2.personel where bolum="Yonetim";

select * from proje2.personel;


select sum(maas) as maas_toplami from proje2.personel where yas>14 and bolum="Yonetim";

-- Max kullanımı -> bir kolındaki maxsimum değeri verir 

select max(maas) max_maas from proje2.personel;


select max(yas) max_yas from proje2.personel;



select * from proje2.personel where yas =(select max(yas) from proje2.personel);

-- min kullanım 

select min(maas) as min_maas from proje2.personel;

select min(yas) as min_yas from proje2.personel;

select ad from proje2.personel where yas=(select min(yas) as min_yas from proje2.personel);


select * from proje2.personel where maas=(select min(maas) from proje2.personel) or ad like "%a%" ;

-- avg -> 


select avg(maas) as ortalama_maas from proje2.personel;

select avg(yas) as yas_ortalamasi from proje2.personel;


select avg(maas) from proje2.personel where yas>(select avg(yas)  from proje2.personel);



-- upper 
select upper(ad) from proje2.personel;



select upper(bolum) as bolumler from proje2.personel;

-- lower 

select ad, lower(ad) as kucuk_harfli from proje2.personel;
select lower(bolum) from proje2.personel;

-- leght 
select length(bolum) from proje2.personel;

-- substr 


select substr(ad, 3) as parcali_isim from proje2.personel;


select substr(bolum,2,2) as parcali from proje2.personel;
