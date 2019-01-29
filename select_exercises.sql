USE codeup_test_db;

-- Before each item, output a caption explaining the results:
--
-- The name of all albums by Pink Floyd.
SELECT 'Albums' AS 'Pink Floyd';
SELECT * FROM albums WHERE artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT 'Release Date' AS 'SGT Peppers Lonely Hearts Club';
SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

-- The genre for Nevermind
SELECT 'Genre' AS 'Nevermind';
SELECT genre FROM albums WHERE name = 'Nevermind';

-- Which albums were released in the 1990s
SELECT 'Albums' AS 'Between 1990 and 1999';
SELECT * FROM albums WHERE release_date BETWEEN '1990' AND '1999';

-- Which albums had less than 20 million certified sales
SELECT 'Albums' AS 'Sales below 20 Million';
SELECT * FROM albums WHERE sales <= 20.0;

-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT 'Albums' AS 'Rock';
SELECT * FROM albums WHERE genre = 'rock';