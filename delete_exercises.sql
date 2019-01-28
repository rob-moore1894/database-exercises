USE codeup_test_db;

-- Write SELECT statements for:
-- Albums released after 1991
SELECT 'Albums after 1991' AS 'Albums';
DELETE FROM albums WHERE release_date >= 1991;

-- Albums with the genre 'disco'
SELECT 'DISCO' AS 'GENRE';
DELETE FROM albums WHERE genre = 'disco';

-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT 'Whitney Houston' AS 'Artist';
DELETE FROM albums WHERE artist = 'Whitney Houston';
-- Make sure to put appropriate captions before each SELECT.

SELECT * FROM albums;
-- Convert the SELECT statements to DELETE.
-- Use the MySQL command line client to make sure your records really were removed.

