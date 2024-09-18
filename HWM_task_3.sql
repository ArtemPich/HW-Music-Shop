SELECT Genre.type, GenrePerformer.name_performer FROM Genre
LEFT JOIN GenrePerformer ON Genre.genre_id = GenrePerformer.type_genre
GROUP BY Genre.genre_id
ORDER BY COUNT(GenrePerformer.name_performer);

SELECT COUNT (track_id) FROM Track
JOIN Album ON id_album = album_id
WHERE date BETWEEN 2019 AND 2020;

SELECT album_name, AVG(length) FROM Track
JOIN Album ON album_id = track_id
GROUP BY album_id;

SELECT name FROM Performer
WHERE name NOT IN (
    SELECT name From Performer
    JOIN AlbumPerformer ON performer_id = album_performer_id
    JOIN Album ON album_performer_id = album_id
    WHERE date = 2020
    );

SELECT DISTINCT Collection.collection_name FROM Collection
JOIN TrackCollect ON Collection.collection_name = TrackCollect.title_col
JOIN Track ON TrackCollect.title_col = Track.title
JOIN Album ON Track.title = Album.album_name
JOIN AlbumPerformer ON Album.album_name = AlbumPerformer.name_album
JOIN Performer ON AlbumPerformer.name_album = Performer.name
WHERE Performer.name = 'The Beatles';
