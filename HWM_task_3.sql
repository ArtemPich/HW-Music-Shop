SELECT SUM FROM Genre
WHERE genre_id=1;

SELECT SUM (track) FROM AlbumPerformer;

SELECT AVG (length) FROM TrackCollect;

SELECT name_album, album_name_p FROM AlbumPerformer
WHERE date NOT IN 2020;

SELECT album_name_p, name_album FROM AlbumPerformer
WHERE description LIKE '%The Beatles%';
