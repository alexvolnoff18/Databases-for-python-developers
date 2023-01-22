

--заполняю таблицу с артистами  
INSERT INTO performer(performer_name)
VALUES('Rammstein');
  
INSERT INTO performer(performer_name)
VALUES('B.B. King ');

INSERT INTO performer(performer_name)
VALUES('Red Hot Chili Peppers');

INSERT INTO performer(performer_name)
VALUES('Cradle of filth');

INSERT INTO performer(performer_name)
VALUES('Burzum');

INSERT INTO performer(performer_name)
VALUES('Eric Clapton');

INSERT INTO performer(performer_name)
VALUES('System of a Down');

INSERT INTO performer(performer_name)
VALUES('Slayer');
  

--заполняю таблицу с жанрами  
INSERT INTO genre(genre_name)
VALUES('Industrial metal');  
  
INSERT INTO genre(genre_name)
VALUES('Funk rock');  
  
INSERT INTO genre(genre_name)
VALUES('Blues');   
  
INSERT INTO genre(genre_name)
VALUES('Thrash metal');   
  
INSERT INTO genre(genre_name)
VALUES('Black metal');   
  
INSERT INTO genre(genre_name)
VALUES('Alternative');   
  

--заполняю таблицу связей артист-жанр
INSERT INTO performer_in_genre(performer_id, genre_id)
VALUES(1, 1); 
  
INSERT INTO performer_in_genre(performer_id, genre_id)
VALUES(2, 3);   
  
INSERT INTO performer_in_genre(performer_id, genre_id)
VALUES(3, 2);   
  
INSERT INTO performer_in_genre(performer_id, genre_id)
VALUES(4, 5);   
  
INSERT INTO performer_in_genre(performer_id, genre_id)
VALUES(5, 5);   
  
INSERT INTO performer_in_genre(performer_id, genre_id)
VALUES(6, 3);   
  
INSERT INTO performer_in_genre(performer_id, genre_id)
VALUES(7, 6);   
  
INSERT INTO performer_in_genre(performer_id, genre_id)
VALUES(8, 4); 


--заполняю таблицу с альбомами  
INSERT INTO album(album_name, year)
VALUES('Mutter', 2001); 
  
INSERT INTO album(album_name, year)
VALUES('My Kind of Blues', 1979);   
  
INSERT INTO album(album_name, year)
VALUES('Unlimited Love', 2020);   
  
INSERT INTO album(album_name, year)
VALUES('Nymphetamine', 2004);   
  
INSERT INTO album(album_name, year)
VALUES('Umskiptar', 2012);   
  
INSERT INTO album(album_name, year)
VALUES('The Breeze: An Appreciation of JJ Cale', 2018);   
  
INSERT INTO album(album_name, year)
VALUES('Toxicity', 2001);   
  
INSERT INTO album(album_name, year)
VALUES('Repentless', 2019);   

  
--заполняю таблицу связей артист-альбом 
INSERT INTO performer_album(performer_id, album_id)
VALUES(1, 1);  
  
INSERT INTO performer_album(performer_id, album_id)
VALUES(2, 2);   
  
INSERT INTO performer_album(performer_id, album_id)
VALUES(3, 3);   
  
INSERT INTO performer_album(performer_id, album_id)
VALUES(4, 4);   
  
INSERT INTO performer_album(performer_id, album_id)
VALUES(5, 5);   
  
INSERT INTO performer_album(performer_id, album_id)
VALUES(6, 6);   
  
INSERT INTO performer_album(performer_id, album_id)
VALUES(7, 7);   
  
INSERT INTO performer_album(performer_id, album_id)
VALUES(8, 8);   
  

--заполняю таблицу с треками   
INSERT INTO track(album_id, track_name, continuity)
VALUES(1, 'Mein Herz brennt', 280);  
  
INSERT INTO track(album_id, track_name, continuity)
VALUES(1, 'Links 2-3-4', 216);    
  
INSERT INTO track(album_id, track_name, continuity)
VALUES(2, 'The Thrill Is Gone', 230);    
  
INSERT INTO track(album_id, track_name, continuity)
VALUES(2, 'My Own Fault Darling', 214);    
  
INSERT INTO track(album_id, track_name, continuity)
VALUES(3, 'Black Summer', 232);    
  
INSERT INTO track(album_id, track_name, continuity)
VALUES(3, 'One Way Traffic', 250);    
  
INSERT INTO track(album_id, track_name, continuity)
VALUES(4, 'Nymphetamine [Overdose]', 550);    
  
INSERT INTO track(album_id, track_name, continuity)
VALUES(4, 'Gilded Cunt', 248);    
  
INSERT INTO track(album_id, track_name, continuity)
VALUES(5, 'Jóln', 348);    
  
INSERT INTO track(album_id, track_name, continuity)
VALUES(5, 'Blóðstokkinn', 76);    
  
INSERT INTO track(album_id, track_name, continuity)
VALUES(6, 'Rock and Roll Records', 139);  

INSERT INTO track(album_id, track_name, continuity)
VALUES(6, 'Someday', 229);  

INSERT INTO track(album_id, track_name, continuity)
VALUES(7, 'Chop Suey!', 210);  

INSERT INTO track(album_id, track_name, continuity)
VALUES(7, 'Science', 163);  

INSERT INTO track(album_id, track_name, continuity)
VALUES(8, 'Cast the First Stone', 223);  

INSERT INTO track(album_id, track_name, continuity)
VALUES(8, 'You Against You ', 235);  


--заполняю таблицу со сборниками
INSERT INTO collection(collection_name, year)
VALUES('Industrialization', 2020);
  
INSERT INTO collection(collection_name, year)
VALUES('The best of Blues', 2019);  
  
INSERT INTO collection(collection_name, year)
VALUES('Lucile', 1979);  
  
INSERT INTO collection(collection_name, year)
VALUES('Funk and Fusion', 2021);  
  
INSERT INTO collection(collection_name, year)
VALUES('BlackBest', 2005);  
  
INSERT INTO collection(collection_name, year)
VALUES('Black&Trash', 2019);  
  
INSERT INTO collection(collection_name, year)
VALUES('Best Alternative collection', 2002);  
  
INSERT INTO collection(collection_name, year)
VALUES('Trashmania', 2020);  
  
  
--заполняю таблицу связей сборник-трек  
INSERT INTO collection_track(collection_id, track_id)
VALUES(1, 1);   
  
INSERT INTO collection_track(collection_id, track_id)
VALUES(2, 3); 

INSERT INTO collection_track(collection_id, track_id)
VALUES(2, 11); 
  
INSERT INTO collection_track(collection_id, track_id)
VALUES(3, 4);   
  
INSERT INTO collection_track(collection_id, track_id)
VALUES(4, 5);   
  
INSERT INTO collection_track(collection_id, track_id)
VALUES(5, 7);   
  
INSERT INTO collection_track(collection_id, track_id)
VALUES(6, 8); 

INSERT INTO collection_track(collection_id, track_id)
VALUES(6, 15); 

INSERT INTO collection_track(collection_id, track_id)
VALUES(7, 13); 

INSERT INTO collection_track(collection_id, track_id)
VALUES(8, 16); 




  
  