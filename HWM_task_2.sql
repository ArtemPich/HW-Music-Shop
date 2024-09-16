SELECT title, length FROM Track
ORDER BY length DESC
LIMIT 1;

SELECT title, length FROM Track
WHERE length >= 185;

SELECT collection_name, year_collection FROM Collection
WHERE year_collection BETWEEN 2018 AND 2020;

SELECT name FROM Performer
WHERE name NOT LIKE '% %';

SELECT title FROM Track
WHERE title LIKE 'my %'
OR title LIKE '% my'
OR title LIKE '% my %'
OR title LIKE 'my';
