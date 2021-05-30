select*from[dbo].[Doktor]
select*from[dbo].[Hasta]
select*from[dbo].[Hastane]
select*from[dbo].[Poliklinik]
select*from[dbo].[Tedavi]
select*from[dbo].[Teþhis]   -- distinct tekrarlanan veriyi önler.
use Hastane_Otomasyonu
select*from Doktor --Doktor komutu ile doktor tablosu listelendi.
select* from Hasta
select *from Hastane --select*from komutu ile Hastane tablosu listelendi.
select *from Poliklinik --select*from komutu ile Poliklinik tablosu listelendi.
select *from Tedavi  --select*from komutu ile Tedavi tablosu listelendi.
select *from Teþhis --select*from komutu ile Teþhis tablosu listelendi.
select* from Hasta
where HastaAd='ahmetcan'or HastaSoyad='kahraman' -- adý ahmetcan veya soyadý kahraman olan hastalarýn sorgusunu yaptýk.
use Hastane_Otomasyonu
select* from Doktor
order by DoktorSoyad asc   -- DoktorSoyad kýsmýný a'dan z'ye ve z'den a'ya doðru order by yöntemiyle sýraladýk.
select*from Hasta
insert into Hasta(HastaID,HastaAd,HastaSoyad,DoðumTarihi,Cinsiyet,HastaKanGrubu,HastaneID) 
values ('764','alihan','candan','1988','Erkek','0-','2562') -- Hasta Tablosuna Ýnsert Ýnto komutuyla yeni kayýt ekledik.

select t.TedaviBicimi,þ.Tarih  from  Tedavi t, Teþhis þ
where t.TedaviBicimi= þ.Tarih

Delete from Teþhis  -- TEÞHÝS TABLOSUNU SÝLDÝK
Delete from Teþhis Where Tarih='02/04/2017' -- Teþhis tablosu içindeki '20/03/2014' tarihini sildik.


update Doktor
set DoktorSoyad='Yýldýz'
where DoktorID='1024'   --Doktor ID numarasý 1024 olan kiþinin Soyadýný yýldýz olarak deðiþtirdik.

select top 4*from Teþhis --Teþhis tablosundan 2 adet kayýt gösterdik.

select min(DoðumTarihi) Min_DoðumTarihi, max(DoðumTarihi) Max_DoðumTarihi from Hasta -- Doðum tarihinin Minimum ve maksimum sorgulamasýný yaptýk.

select Count (*)from Doktor  --COUNT fonksiyonuyla Doktor Tablosunun kayýt sayýsýnýn sorgusunu yaptýrdýk.


select sum (DoktorID) DoktorID_TOP ,avg (DoktorID) DoktorID_ORT from Doktor  -- Doktor Tablosunun içindeki DoktorID'lerini topladýk ve ortalamasýný aldýk.

select* from Doktor                -- Doktor tablosunda isminin son harfi "a" olan kiþilerin sorgusunu yaptýk.
where DoktorAd like '%a' 
select* from Doktor                       --Doktor tablosunda isminin ilk harfi "a" olan kiþilerin sorgusunu yaptýk.
where DoktorAd like 'a%'

select*from Hasta     
where Cinsiyet in('Bayan') -- Hasta tablosunun cinsiyet kolonunun içindeki erkek bireylerin sorgusunu yaptýrdýk.

ALTER TABLE Poliklinik
DROP COLUMN HastaneID    -- poliklinik tablosunun içindeki Hastane ID bilgilerini sildirdik.

use Hastane_Otomasyonu
alter table hastane
ALTER COLUMN HastaneAD varchar(40) -- HASTANE tablosundaki HastaneID'sinin veri tipini varchar(25)olarak belirledik.


select*from Doktor
where DoktorID in('1023','1030','1025') -- belirttiðimiz DoktorID'sini sorguladýk.
 
select* from Hasta
where HastaID in(select HastaID from Hasta where HastaID>758) -- HastaID'sinin 758'den büyük olduðu deðerleri sorguladýk.

select HastaneAD from Hastane where HastaneID between 2555 and 2560  -- HastaneID'si 2555 ile 2560 arasýnda olan hastaneleri sorguladýk

Select HastaAd, HastaSoyad,HastaKanGrubu from Hasta -- hastaAd, HastaSoyad, HastaKanGrubu kayýtlarýný grupladýk
Group by HastaAd,HastaSoyad,HastaKanGrubu
use Hastane_Otomasyonu
Select DoktorAlan, count(*) AS Alan_Kayitlari from Doktor -- Doktor alanlarýnýn kayýtlarýný sorgulayýp grupladýk.
group by DoktorAlan
USE Hastane_Otomasyonu
select DoðumTarihi,HastaAd,HastaSoyad,HastaID from Hasta  -- where komutuyla þart koyarak doðum tarihi 1970'den büyük olan hastalarý grupladýk.
where DoðumTarihi>1975
group by DoðumTarihi, HastaAd,HastaSoyad,HastaID
having HastaID>758  --having komutunuda dahil ederek çalýþtýrdýðýmýzda HastaID'si 758'den büyük olan hastalarýda tabloya dahil edecektir. Saðdaki çýktýda gösterilmiþtir.



