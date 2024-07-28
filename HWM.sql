CREATE TABLE IF NOT EXISTS Genre (
type VARCHAR(60) PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS Performer (
name VARCHAR(60) PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS Track (
title VARCHAR(50) PRIMARY KEY,
length INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Album (
album_name VARCHAR(60) PRIMARY KEY,
date INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Collection (
collection_name VARCHAR(50) PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS GenrePerformer (
type_genre INTEGER REFERENCES Genre(type),
name_performer INTEGER REFERENCES Performer(name)
);

CREATE TABLE IF NOT EXISTS AlbumPerformer (
album_name_p INTEGER REFERENCES Album(album_name),
name_album INTEGER REFERENCES Performer(name)
);

CREATE TABLE IF NOT EXISTS TrackCollect (
title_col INTEGER REFERENCES Track(title),
collection_name_t INTEGER REFERENCES Collection(collection_name)
);