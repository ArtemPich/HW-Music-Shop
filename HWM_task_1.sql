INSERT INTO Genre
VALUES (1,'pop'), (2,'rok'), (3, 'shanson');

INSERT INTO Album
VALUES (1, 'Vdoh', 2022), (2, 'Abbey road', 1969), (3, 'Fine line', 2019), (4, 'Chanel', 2019);

INSERT INTO Collection
VALUES (1, 'First', 2019), (2, 'Second', 2022), (3, 'Third', 1969), (4, 'Fourth', 2020);

INSERT INTO Performer
VALUES (1, 'Polina Gagarina'), (2, 'Harry Styles'), (3, 'The Beatles'), (4, 'Irina Krug');

INSERT INTO Track
VALUES (1, 'Last November', 2.54), (2, 'Cherry', 4.19), (3, 'Snow', 3.50), (4, 'Shadows', 3.40), (5, 'Yesterday', 2.06), (6, 'My day', 2.50);

INSERT INTO GenrePerformer (genre_performer_id, type_genre, name_performer)
VALUES (1, 1, 1), (2, 1, 2), (3, 2, 3), (4, 3, 4);

INSERT INTO AlbumPerformer (album_performer_id, album_name_p, name_album)
VALUES (1, 1, 1), (2, 2, 3), (3, 3, 2), (4, 4, 4);

INSERT INTO TrackCollect (track_collect_id, title_id, collect_name_t)
VALUES (1, 1, 2), (2, 2, 1), (3, 3, 1), (4, 4, 4), (5, 5, 3);
