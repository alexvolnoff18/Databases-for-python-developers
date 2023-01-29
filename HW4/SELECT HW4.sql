--HW4
--1. количество исполнителей в каждом жанре;
SELECT genre_id, COUNT(performer_id) FROM performer_in_genre
GROUP BY genre_id;


--2. количество треков, вошедших в альбомы 2019-2020 годов;
SELECT album_name, COUNT(track_name) FROM album AS al
JOIN track AS tr ON al.album_id = tr.album_id
WHERE year BETWEEN 2019 AND 2020
GROUP BY album_name;


--3. средняя продолжительность треков по каждому альбому; ок
SELECT album_id, AVG(continuity) FROM track
GROUP BY album_id;


--4. все исполнители, которые не выпустили альбомы в 2020 году; ок
SELECT DISTINCT performer_name FROM performer AS p_n
JOIN performer_album AS p_al ON p_n.performer_id = p_al.performer_id
JOIN album AS al ON p_al.album_id = al.album_id
WHERE year != 2020;


--5. названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT DISTINCT collection_name FROM collection AS c_na
JOIN collection_track AS c_tr ON c_na.collection_id = c_tr.collection_id
JOIN track AS tr ON c_tr.track_id = tr.track_id
JOIN album AS al ON tr.album_id = al.album_id
JOIN performer_album AS p_al ON al.album_id = p_al.album_id
JOIN performer AS p ON p_al.performer_id = p.performer_id
WHERE p.performer_name = 'B.B. King';


--6. название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT DISTINCT album_name FROM album AS al
JOIN performer_album AS p_al ON al.album_id = p_al.album_id
JOIN performer AS p ON p_al.performer_id = p.performer_id
JOIN performer_in_genre AS p_in_g ON p.performer_id = p_in_g.performer_id
JOIN genre AS g ON p_in_g.genre_id = g.genre_id
GROUP BY album_name
HAVING COUNT(genre_name) > 1;


--7. наименование треков, которые не входят в сборники;
SELECT track_name FROM track AS tr
LEFT JOIN collection_track AS c_tr ON tr.track_id  = c_tr.track_id
WHERE c_tr.track_id IS NULL;


--8. исполнителя(-ей), написавшего самый короткий по продолжительности трек;
SELECT performer_name FROM performer AS p
JOIN performer_album AS p_al ON p.performer_id = p_al.performer_id
JOIN album AS al ON p_al.album_id = al.album_id
JOIN track AS tr ON al.album_id = tr.album_id
WHERE tr.continuity = (SELECT MIN(continuity) FROM track); 


--9. название альбомов, содержащих наименьшее количество треков.
SELECT album_name, COUNT(track_name) from album AS al
JOIN track AS tr ON al.album_id = tr.album_id
GROUP BY album_name
HAVING COUNT(track_name) = (
	SELECT MIN(count) FROM (
		SELECT album_name, COUNT(track_name) from album AS al
		JOIN track AS tr ON al.album_id = tr.album_id
		GROUP BY album_name) AS foo)


--_______________________________________________________________________________
--HW3 с правками
--1. название и год выхода альбомов, вышедших в 2018 году;
SELECT album_name, year FROM album
WHERE year = 2018;

--2. название и продолжительность самого длительного трека;
SELECT track_name, continuity FROM track WHERE
continuity = (SELECT MAX(continuity) FROM track);
	
	
--3. название треков, продолжительность которых не менее 3,5 минуты;
SELECT track_name FROM track
WHERE continuity >= 210;	
	
	
--4. названия сборников, вышедших в период с 2018 по 2020 год включительно;
SELECT collection_name FROM collection
WHERE year BETWEEN 2018 AND 2020;
	
	
--5. исполнители, чье имя состоит из 1 слова;
SELECT performer_name FROM performer
WHERE performer_name NOT LIKE '% %';	
	
	
--6. название треков, которые содержат слово "мой"/"my"
SELECT track_name FROM track
WHERE track_name iLIKE '%my%';

	
	
  