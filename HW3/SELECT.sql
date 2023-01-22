

--название и год выхода альбомов, вышедших в 2018 году;
SELECT album_name, year FROM album
WHERE year = 2018

--название и продолжительность самого длительного трека;
SELECT track_name, continuity FROM track
ORDER BY continuity DESC
LIMIT 1	
	
	
--название треков, продолжительность которых не менее 3,5 минуты;
SELECT track_name FROM track
WHERE continuity >= 210	
	
	
--названия сборников, вышедших в период с 2018 по 2020 год включительно;
SELECT collection_name FROM collection
WHERE year BETWEEN 2018 AND 2020	
	
	
--исполнители, чье имя состоит из 1 слова;
SELECT performer_name FROM performer
WHERE performer_name NOT LIKE '% %';	
	
	
--название треков, которые содержат слово "мой"/"my"
SELECT track_name FROM track
WHERE track_name LIKE '%My%'
	
	
  