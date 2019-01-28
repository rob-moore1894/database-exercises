USE codeup_test_db;

-- Write SELECT statements to output each of the following with a caption:

-- UPDATE table_name
-- SET column1 = 'value1', column2 = 'value2', ...
-- WHERE columnA = 'valueA';

-- All albums in your table.
SELECT * FROM albums;
-- Make all the albums 10 times more popular (sales * 10)
UPDATE albums
SET sales = (sales * 10);

-- All albums released before 1980
SELECT * FROM albums WHERE release_date BETWEEN '1980' AND '1989';
-- Move all the albums before 1980 back to the 1800s.
UPDATE albums
SET release_date = (release_date - 100);

-- All albums by Michael Jackson
SELECT * FROM albums WHERE artist = 'Michael Jackson';
-- Change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

-- Add SELECT statements after each UPDATE so you can see the results of your handiwork.
SELECT * FROM albums;