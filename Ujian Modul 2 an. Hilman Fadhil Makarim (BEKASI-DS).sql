-- NAMA HILMAN FADHIL MAKARIM
-- UJIAN DS MODUL 2
-- Terima kasih


use world;
select * from City;
select * from Countrylanguage;
select * from country;
-- 1.	Tampilkan 10 (sepuluh) kota terpadat di Indonesia. Minimal kolom yang perlu ditampilkan adalah:
-- o	id kota
-- o	nama kota
-- o	country code
-- o	nama distrik
-- o	populasi
SELECT * FROM City
WHERE CountryCode = 'IDN'
ORDER BY Population DESC LIMIT 10;

-- 2. Tampilkan 10 (sepuluh) kota terpadat di dunia. Minimal kolom yang perlu ditampilkan adalah (Poin 5):
--    id kota
--    nama kota
--    district
--    population

SELECT ID, Name, District, Population FROM city
ORDER BY Population DESC LIMIT 10;

-- 3. Tampilkan 10 (sepuluh) negara yang menggunakan Bahasa Inggris dan dipakai sebagai bahasa resmi. Minimal kolom yang perlu ditampilkan adalah (Poin 10):
--     code negara
--     nama negara
--     language
--     isOfficial
--     percentage
Select co.code, co.name, cl.language, cl.isOfficial, cl. Percentage FROM country co
JOIN (countrylanguage cl) ON co.code = cl.countrycode
WHERE cl.Language = 'English'
ORDER BY cl.percentage DESC LIMIT 10;

-- 3. Tampilkan 10 (sepuluh) negara di Asia yang angka harapan hidup nya di atas rata-rata angka harapan hidup di Benua Eropa. Minimal kolom yang perlu ditampilkan adalah (Poin 10):

-- nama negara
-- nama benua
-- angka harapan hidup negara tersebut
-- GNP

SELECT name, continent, lifeexpectancy, gnp FROM country
WHERE continent = 'Asia' AND lifeexpectancy > (SELECT AVG(lifeexpectancy) FROM country WHERE continent = 'Europe')
ORDER BY lifeexpectancy DESC LIMIT 10;

select AVG(lifeexpectancy) from country where continent = 'Europe';