create table proje2.quiz(
id int not null,
email varchar(45),
adSoyad varchar(45),
siparis varchar(45),
tarih  datetime default now(),
adres varchar(45),
tel int,
fiyat int,
adet int,
toplamFiyat int,
primary key(id)
);

insert into proje2.quiz values(1,"ali@gmail.com","Ali Kagan","Ekran Kartı",now(),"Mersin",456258,30,5,150);
insert into proje2.quiz values(2,"mehdi@gmail.com","Mehdi Soydal","İslemci Kartı",now(),"Malaklar",456369,20,4,80);
insert into proje2.quiz values(3,"temel@gmail.com","Temel","Ram",now(),"Alanya",785210,3,6,18);
insert into proje2.quiz values(4,"arda@gmail.com","Arda","Fan",now(),"Adana",023210,10,4,40);
insert into proje2.quiz values(5,"mert@gmail.com","Mert","Oyun",now(),"Bodrum",022580,15,3,45);
insert into proje2.quiz values(6,"yavuz@gmail.com","Yavuz","Kılavye",now(),"İzmir",850741,25,1,25);
insert into proje2.quiz values(7,"burak@gmail.com","Burak","İslemci",now(),"Adana",023741,5,4,20);
insert into proje2.quiz values(8,"zafer@gmail.com","Zafer","Monitor",now(),"Anamur",285321,7,5,35);
insert into proje2.quiz values(9,"salih@gmail.com","Salih","Kablo",now(),"Karaman",258654,50,6,300);
insert into proje2.quiz values(10,"emre@gmail.com","Emre","Koltuk",now(),"Istanbul",316497,20,7,40);

-- 1)toplamfiyati 25 euro dan fazla olan siparislerin sayisini gosteriniz

select siparis,adet from proje2.quiz where toplamFiyat>25;

-- 2)Toplam kazanilan parayi yaziniz


select sum(toplamFiyat) from proje2.quiz;

-- 3) en yuksek ve en dusuk siparisin tum bilgilerini gertiriniz

select * from proje2.quiz where adet =(select min(adet) as enKucuk from proje2.quiz);

-- 4) ortalama kazanilan parayi virgulden sonra 2 basamakli olarak getiriniz

select avg(toplamFiyat) from proje2.quiz;

-- 5) Urun isimlerini buyuk harfli olarak gosteriniz
select upper(siparis) as urunlar from proje2.quiz;

-- 6)Urun isimlerinin sadece ilk harfini buyuk harfli olarak gosteriniz

select  upper(substr(siparis ,1,1)) from proje2.quiz;


-- 7) Toplam fiyati en yuksek olan 3 siparisi yazdiriniz

select siparis from proje2.quiz order by toplamFiyat desc limit 3;

-- 8) Urunlerin icinde a harfi olanlari urun ismine gore siralayiniz


select * FROM  proje2.quiz WHERE siparis LIKE "_a%" OR siparis LIKE "A_%";



-- 9) Siparis miktari 15 Euro dan fazla olanlari silelim

-- soruyu anlamadım


-- 10) Delete Truncate Drop arasindaki fark nedir?
-- Kısacası, DELETE, WHERE koşuluna bağlı olarak satırları tek tek kaldırır veya WHERE koşulu yoksa tüm satırları siler.
 -- TRUNCATE tüm satırları bir defada kaldırır ve DROP komutu bir tabloyu veya veritabanını veritabanından tamamen kaldırır.
-- 





select * from proje2.quiz;










/* SQL QUIZ

orders adinda bir table olusturun
id
email
adSoyad
adres
tel
tarih
urun
fiyat
adet
toplamfiyat
10 tane kayit ekleyiniz

1)toplamfiyati 25 euro dan fazla olan siparislerin sayisini gosteriniz
2)Toplam kazanilan parayi yaziniz
3) en yuksek ve en dusuk siparisin tum bilgilerini gertiriniz
4) ortalama kazanilan parayi virgulden sonra 2 basamakli olarak getiriniz
5) Urun isimlerini buyuk harfli olarak gosteriniz
6)Urun isimlerinin sadece ilk harfini buyuk harfli olarak gosteriniz
7) Toplam fiyati en yuksek olan 3 siparisi yazdiriniz
8) Urunlerin icinde a harfi olanlari urun ismine gore siralayiniz
9) Siparis miktari 15 Euro dan fazla olanlari silelim
10) Delete Truncate Drop arasindaki fark nedir?
*/
