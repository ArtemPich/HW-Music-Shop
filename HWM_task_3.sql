SELECT COUNT (name_performer) FROM GenrePerformer;

SELECT COUNT (name_album) FROM AlbumPerformer
BETWEEN date 2019 AND 2020;

SELECT AVG (length) FROM TrackCollect;

SELECT name_album, album_name_p FROM AlbumPerformer
WHERE date NOT IN 2020;

SELECT album_name_p, name_album FROM AlbumPerformer
WHERE description LIKE '%The Beatles%';
