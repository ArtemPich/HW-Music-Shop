SELECT title, length FROM Track
ORDER BY length;

SELECT title, length FROM Track
WHERE length <= 3.05;

SELECT collection_name, year_collection FROM Collection
BETWEEN year_collection 2018 AND 2020;

SELECT name FROM Performer
ORDER BY name DESC;

SELECT name FROM Track
WHERE description LIKE '%my%';
