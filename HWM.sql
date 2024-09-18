CREATE TABLE IF NOT EXISTS Genre (
genre_id SERIAL PRIMARY KEY,
type VARCHAR(60) UNIQUE
);

CREATE TABLE IF NOT EXISTS Performer (
performer_id SERIAL PRIMARY KEY,
name VARCHAR(60) UNIQUE
);

CREATE TABLE IF NOT EXISTS Album (
album_id SERIAL PRIMARY KEY,
album_name VARCHAR(60) UNIQUE,
date INTEGER
);

CREATE TABLE IF NOT EXISTS Collection (
collection_id SERIAL PRIMARY KEY,
collection_name VARCHAR(50) UNIQUE,
year_collection INTEGER
);

CREATE TABLE IF NOT EXISTS Track (
track_id SERIAL PRIMARY KEY,
title VARCHAR(50) UNIQUE,
length INTEGER CHECK (length>=1),
id_album INTEGER REFERENCES Album(album_id)
id_collect INTEGER REFERENCES Collection(collection_id)
);

CREATE TABLE IF NOT EXISTS GenrePerformer (
genre_performer_id SERIAL PRIMARY KEY,
type_genre INTEGER REFERENCES Genre(genre_id),
name_performer INTEGER REFERENCES Performer(performer_id)
);

CREATE TABLE IF NOT EXISTS AlbumPerformer (
album_performer_id SERIAL PRIMARY KEY,
album_name_p INTEGER REFERENCES Album(album_id),
name_album INTEGER REFERENCES Performer(performer_id)
);

CREATE TABLE IF NOT EXISTS TrackCollect (
track_collection_id SERIAL PRIMARY KEY,
title_col INTEGER REFERENCES Track(track_id),
collection_name_t INTEGER REFERENCES Collection(collection_id)
);