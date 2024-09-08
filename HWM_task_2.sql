SELECT MAX (length) FROM Track;

SELECT title, length FROM Track
WHERE length >= 3.05;

SELECT collection_name, year_collection FROM Collection
BETWEEN year_collection 2018 AND 2020;

SELECT name FROM Performer
WHERE name LIKE '%%';

SELECT name FROM Track
WHERE title LIKE 'my%'
OR title LIKE '%my'
OR title LIKE '%my%'
OR title LIKE 'my';
