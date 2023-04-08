-- round kullanım ondalık sayıları yuvarlar


select round(maas, 1) from proje2.personel;

select round(avg(maas),2) from proje2.personel;

-- limit kullanımı=> şstenilen sayı kadar elemanları listeler

select * from proje2.personel limit 6;
--                limit atlama sayısı,getirilen kayıtşi sayısı
select * from proje2.personel limit 3,2;

-- order by => siralama yapmak için kuallanırlır

select * from proje2.personel order by maas;

select * from proje2.personel order by maas desc;
select * from proje2.personel order by maas asc;

select * from proje2.personel order by 5;

-- dec buyukten kucuge 
-- asc kucuktn buyuge


select  * from proje2.personel order by maas desc limit 1;

select  * from proje2.personel where bolum in("Yonetim","Bakim") and yas>15 order by yas asc limit 1;


select * from proje2.personel where yas=(select  * from proje2.personel where bolum in("Yonetim","Bakim") and yas>15 order by yas asc limit 1) and bolum in("Bakim", "Yonetim");




select * from proje2.personel where yas=(select yas from proje2.personel where bolum in("Yonetim", "Bakim") and yas>15 order by yas asc limit 1)
 and bolum in("Bakim", "Yonetim");


-- personelleri isme göre sıralayınız isminde a harfi olanalrı

select * from proje2.personel where ad like "%a%" order by ad;


select avg(maas) from proje2.personel;


select maas from proje2.personel where maas>(select avg(maas) from proje2.personel) order by maas;


-- yas ortalamasının üzerinde olanlardan en duşuk maas alanın bilgileri


select avg(yas) from proje2.personel;

select min(maas) from proje2.personel where yas>(select avg(yas) from proje2.personel);

select maas from proje2.personel  order by maas limit 1 ;


select * from proje2.personel where yas>(select avg(yas) from proje2.personel)    order by maas limit 1 ;


select * from proje2.personel where maas=(select min(maas) from proje2.personel where yas>(select avg(yas) from proje2.personel));


select * from proje2.personel;


delete from proje2.personel where bolum="Yonetim";

select avg(maas) from proje2.personel;
select min(maas) from proje2.personel;

-------

select avg(maas) from proje2.personel;

select maas from proje2.personel where maas>(select avg(maas) from proje2.personel) order by maas limit 1;

start transaction;

savepoint savePoint1;

delete from  proje2.personel where id=1;

rollback to savePoint1;



select * from proje2.personel;


savepoint point2;

insert into proje2.personel values(9,"Sena","Yonetim",14,4789.50);

delete from proje2.personel where id=9;

rollback to point2;

