SELECT type, name_performer FROM GenrePerformer GP
LEFT JOIN Genre G ON performer_id GP = genre_id G
GROUP genre_id;

SELECT COUNT (track_id) FROM Track
JOIN Track ON id_album = album_id
WHERE date BETWEEN 2019 AND 2020;

SELECT album_name, AVG(length) FROM Track
JOIN Track ON album_id = track_id
GROUP BY album_id;

SELECT name FROM Performer
WHERE name NOT IN (
    SELECT name From Performer
    JOIN Performer ON performer_id = album_performer_id
    JOIN Album ON album_performer_id = album_id
    WHERE date = 2020
    );

SELECT album_name_p, name_album FROM AlbumPerformer
JOIN Collection ON collection_id = track_collection_id
JOIN TrackCollection ON title_col = track_id
JOIN Track ON id_album = album_id
JOIN Album ON album_id = album_performer_id
JOIN Album ON album_id = album_performer_id
JOIN AlbumPerformer ON name_album = performer_id
WHERE name = 'The Beatles';
