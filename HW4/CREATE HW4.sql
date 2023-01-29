CREATE TABLE IF NOT EXISTS performer(
   performer_id SERIAL PRIMARY KEY,
   performer_name VARCHAR(200) NOT NULL);

CREATE TABLE IF NOT EXISTS genre(
   genre_id SERIAL PRIMARY KEY,
   genre_name VARCHAR(80) NOT NULL);
   
  CREATE TABLE IF NOT EXISTS performer_in_genre(
   performer_in_genre_id SERIAL PRIMARY KEY,
   performer_id INTEGER NOT NULL REFERENCES performer(performer_id),
   genre_id INTEGER NOT NULL REFERENCES genre(genre_id));
   
CREATE TABLE IF NOT EXISTS album(
   album_id SERIAL PRIMARY KEY,
   album_name VARCHAR(260) NOT NULL,
   year INTEGER NOT NULL
   CHECK (year > 1919));
   
CREATE TABLE IF NOT EXISTS performer_album(
   performer_album_id  SERIAL PRIMARY KEY,
   performer_id INTEGER NOT NULL REFERENCES performer(performer_id),
   album_id INTEGER NOT NULL REFERENCES album(album_id));
   
CREATE TABLE IF NOT EXISTS track(
   track_id SERIAL PRIMARY KEY,
   album_id INTEGER REFERENCES album(album_id),
   track_name VARCHAR(80) NOT NULL,
   continuity INTEGER NOT NULL);
   
CREATE TABLE IF NOT EXISTS collection(
   collection_id SERIAL PRIMARY KEY,
   collection_name VARCHAR(80) NOT NULL,
   year INTEGER NOT NULL);
   
CREATE TABLE IF NOT EXISTS collection_track(
   collection_track_id SERIAL PRIMARY KEY,
   collection_id INTEGER NOT NULL REFERENCES collection(collection_id),
   track_id INTEGER NOT NULL REFERENCES track(track_id));