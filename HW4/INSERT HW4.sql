

--заполняю таблицу с артистами  
INSERT INTO performer(performer_name)
VALUES
('Rammstein'),
('B.B. King'),
('Red Hot Chili Peppers'),
('Cradle of filth'),
('Burzum'),
('Eric Clapton'),
('System of a Down'),
('Slayer');


--заполняю таблицу с жанрами  
INSERT INTO genre(genre_name)
VALUES
('Industrial metal'),
('Funk rock'),
('Blues'),
('Thrash metal'),
('Black metal'),
('Alternative');


--заполняю таблицу связей артист-жанр
INSERT INTO performer_in_genre(performer_id, genre_id)
VALUES
(1, 1), 
(2, 3),
(3, 2),
(4, 5),
(5, 5),
(6, 3),
(7, 6),
 (8, 4);


--заполняю таблицу с альбомами  
INSERT INTO album(album_name, year)
VALUES
('Mutter', 2001),
('My Kind of Blues', 1979),
('Unlimited Love', 2020),
('Nymphetamine', 2004),
('Umskiptar', 2012),
('The Breeze: An Appreciation of JJ Cale', 2018),
('Toxicity', 2001),
('Repentless', 2019);


--заполняю таблицу связей артист-альбом 
INSERT INTO performer_album(performer_id, album_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);


--заполняю таблицу с треками   
INSERT INTO track(album_id, track_name, continuity)
VALUES
(1, 'Mein Herz brennt', 280),
(1, 'Links 2-3-4', 216),
(2, 'The Thrill Is Gone', 230),
(2, 'My Own Fault Darling', 214),
(3, 'Black Summer', 232),
(3, 'One Way Traffic', 250),
(4, 'Nymphetamine [Overdose]', 550),
(4, 'Gilded Cunt', 248),
(5, 'Jóln', 348),
(5, 'Blóðstokkinn', 76),
(6, 'Rock and Roll Records', 139),
(6, 'Someday', 229),
(7, 'Chop Suey!', 210),
(7, 'Science', 163),
(8, 'Cast the First Stone', 223),
(8, 'You Against You ', 235);


--заполняю таблицу со сборниками
INSERT INTO collection(collection_name, year)
VALUES
('Industrialization', 2020),
('The best of Blues', 2019),
('Lucile', 1979),
('Funk and Fusion', 2021),
('BlackBest', 2005),
('Black&Trash', 2019),
('Best Alternative collection', 2002),
('Trashmania', 2020);  
  
  
--заполняю таблицу связей сборник-трек  
INSERT INTO collection_track(collection_id, track_id)
VALUES
(1, 1),
(2, 3),
(2, 11),
(3, 4),
(4, 5),
(5, 7),
(6, 8),
(6, 15),
(7, 13),
(8, 16); 


--HW4
--дополняю таблицу с жанрами для соответствия заданию ДЗ «Advanced data sampling»
INSERT INTO genre(genre_name)
VALUES('Blues-rock');


-- ополняю таблицу связей артист-жанр для соответствия заданию ДЗ «Advanced data sampling»
INSERT INTO performer_in_genre(performer_id, genre_id)
VALUES
(1, 6),
(6, 7);


--дополняю таблицу с треками для соответствия заданию ДЗ «Advanced data sampling»
INSERT INTO track(album_id, track_name, continuity)
VALUES
(1, 'Ich will', 217),
(2, 'Help the Poor', 178),
(8, 'Repentless', 199),
(7, ' Deer Dance', 189);


  
