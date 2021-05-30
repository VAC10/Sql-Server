select*from[dbo].[Doktor]
select*from[dbo].[Hasta]
select*from[dbo].[Hastane]
select*from[dbo].[Poliklinik]
select*from[dbo].[Tedavi]
select*from[dbo].[Te�his]   -- distinct tekrarlanan veriyi �nler.
use Hastane_Otomasyonu
select*from Doktor --Doktor komutu ile doktor tablosu listelendi.
select* from Hasta
select *from Hastane --select*from komutu ile Hastane tablosu listelendi.
select *from Poliklinik --select*from komutu ile Poliklinik tablosu listelendi.
select *from Tedavi  --select*from komutu ile Tedavi tablosu listelendi.
select *from Te�his --select*from komutu ile Te�his tablosu listelendi.
select* from Hasta
where HastaAd='ahmetcan'or HastaSoyad='kahraman' -- ad� ahmetcan veya soyad� kahraman olan hastalar�n sorgusunu yapt�k.
use Hastane_Otomasyonu
select* from Doktor
order by DoktorSoyad asc   -- DoktorSoyad k�sm�n� a'dan z'ye ve z'den a'ya do�ru order by y�ntemiyle s�ralad�k.
select*from Hasta
insert into Hasta(HastaID,HastaAd,HastaSoyad,Do�umTarihi,Cinsiyet,HastaKanGrubu,HastaneID) 
values ('764','alihan','candan','1988','Erkek','0-','2562') -- Hasta Tablosuna �nsert �nto komutuyla yeni kay�t ekledik.

select t.TedaviBicimi,�.Tarih  from  Tedavi t, Te�his �
where t.TedaviBicimi= �.Tarih

Delete from Te�his  -- TE�H�S TABLOSUNU S�LD�K
Delete from Te�his Where Tarih='02/04/2017' -- Te�his tablosu i�indeki '20/03/2014' tarihini sildik.


update Doktor
set DoktorSoyad='Y�ld�z'
where DoktorID='1024'   --Doktor ID numaras� 1024 olan ki�inin Soyad�n� y�ld�z olarak de�i�tirdik.

select top 4*from Te�his --Te�his tablosundan 2 adet kay�t g�sterdik.

select min(Do�umTarihi) Min_Do�umTarihi, max(Do�umTarihi) Max_Do�umTarihi from Hasta -- Do�um tarihinin Minimum ve maksimum sorgulamas�n� yapt�k.

select Count (*)from Doktor  --COUNT fonksiyonuyla Doktor Tablosunun kay�t say�s�n�n sorgusunu yapt�rd�k.


select sum (DoktorID) DoktorID_TOP ,avg (DoktorID) DoktorID_ORT from Doktor  -- Doktor Tablosunun i�indeki DoktorID'lerini toplad�k ve ortalamas�n� ald�k.

select* from Doktor                -- Doktor tablosunda isminin son harfi "a" olan ki�ilerin sorgusunu yapt�k.
where DoktorAd like '%a' 
select* from Doktor                       --Doktor tablosunda isminin ilk harfi "a" olan ki�ilerin sorgusunu yapt�k.
where DoktorAd like 'a%'

select*from Hasta     
where Cinsiyet in('Bayan') -- Hasta tablosunun cinsiyet kolonunun i�indeki erkek bireylerin sorgusunu yapt�rd�k.

ALTER TABLE Poliklinik
DROP COLUMN HastaneID    -- poliklinik tablosunun i�indeki Hastane ID bilgilerini sildirdik.

use Hastane_Otomasyonu
alter table hastane
ALTER COLUMN HastaneAD varchar(40) -- HASTANE tablosundaki HastaneID'sinin veri tipini varchar(25)olarak belirledik.


select*from Doktor
where DoktorID in('1023','1030','1025') -- belirtti�imiz DoktorID'sini sorgulad�k.
 
select* from Hasta
where HastaID in(select HastaID from Hasta where HastaID>758) -- HastaID'sinin 758'den b�y�k oldu�u de�erleri sorgulad�k.

select HastaneAD from Hastane where HastaneID between 2555 and 2560  -- HastaneID'si 2555 ile 2560 aras�nda olan hastaneleri sorgulad�k

Select HastaAd, HastaSoyad,HastaKanGrubu from Hasta -- hastaAd, HastaSoyad, HastaKanGrubu kay�tlar�n� gruplad�k
Group by HastaAd,HastaSoyad,HastaKanGrubu
use Hastane_Otomasyonu
Select DoktorAlan, count(*) AS Alan_Kayitlari from Doktor -- Doktor alanlar�n�n kay�tlar�n� sorgulay�p gruplad�k.
group by DoktorAlan
USE Hastane_Otomasyonu
select Do�umTarihi,HastaAd,HastaSoyad,HastaID from Hasta  -- where komutuyla �art koyarak do�um tarihi 1970'den b�y�k olan hastalar� gruplad�k.
where Do�umTarihi>1975
group by Do�umTarihi, HastaAd,HastaSoyad,HastaID
having HastaID>758  --having komutunuda dahil ederek �al��t�rd���m�zda HastaID'si 758'den b�y�k olan hastalar�da tabloya dahil edecektir. Sa�daki ��kt�da g�sterilmi�tir.



