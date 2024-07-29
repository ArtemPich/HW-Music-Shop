CREATE TABLE IF NOT EXISTS Genre (
genre_id SERIAL PRIMARY KEY,
type VARCHAR(60) UNIQUE
);

CREATE TABLE IF NOT EXISTS Performer (
performer_id SERIAL PRIMARY KEY,
name VARCHAR(60) UNIQUE
);

CREATE TABLE IF NOT EXISTS Track (
track_id SERIAL PRIMARY KEY,
title VARCHAR(50) UNIQUE,
length INTEGER CHECK(length>=1),
FOREIGN KEY(album_name) REFERENCES album(album_name)
);

CREATE TABLE IF NOT EXISTS Album (
album_id SERIAL PRIMARY KEY,
album_name VARCHAR(60) UNIQUE,
date INTEGER CHECK(date>=2000)
);

CREATE TABLE IF NOT EXISTS Collection (
collection_id SERIAL PRIMARY KEY,
collection_name VARCHAR(50) UNIQUE,
year_collection INTEGER CHECK(year_collection>=2000)
);

CREATE TABLE IF NOT EXISTS GenrePerformer (
genre_performer_id SERIAL PRIMARY KEY(genre_id, performer_id),
type_genre INTEGER REFERENCES Genre(type),
name_performer INTEGER REFERENCES Performer(name)
);

CREATE TABLE IF NOT EXISTS AlbumPerformer (
album_performer_id SERIAL PRIMARY KEY(album_id, performer_id),
album_name_p INTEGER REFERENCES Album(album_name),
name_album INTEGER REFERENCES Performer(name)
);

CREATE TABLE IF NOT EXISTS TrackCollect (
track_collection_id SERIAL PRIMARY KEY(track_id, collection_id),
title_col INTEGER REFERENCES Track(title),
collection_name_t INTEGER REFERENCES Collection(collection_name)
);