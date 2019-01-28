USE codeup_test_db;

-- CREATE TABLE if not exists albums (
--     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
--     artist VARCHAR(50),
--     name  VARCHAR(100),
--     release_date DATE,
--     sales double,
--     genre VARCHAR(50),
--     PRIMARY KEY (id)
-- );

-- INSERT INTO table_name (field1, field2, ...)
-- VALUES ('value1', 'value2', ...);

INSERT INTO albums (artist, name, release_date, sales, genre)
values('Michael Jackson', 'Thriller', '1982', 47.3, 'Pop, Rock, R&B');

insert into albums (artist, name, release_date, sales, genre)
values('Eagles', 'Their Greatest Hits', '1976', 41.2,	'Country rock, soft rock, folk rock');

insert into albums (artist, name, release_date, sales, genre)
values('AC/DC',	'Back in Black', '1980', 26.1, 'Hard rock');

insert into albums (artist, name, release_date, sales, genre)
values('Pink Floyd', 'The Dark Side of the Moon',	'1973', 24.2,	'Progressive rock');

insert into albums (artist, name, release_date, sales, genre)
values('Whitney Houston / Various artists', 'The Bodyguard', '1992', 28.4, 'R&B, soul, pop, soundtrack');

insert into albums (artist, name, release_date, sales, genre)
values('Meat Loaf',	'Bat Out of Hell',	'1977', 21.5,	'Hard rock, glam rock, heavy metal');

insert into albums (artist, name, release_date, sales, genre)
values('Eagles',	'Hotel California',	'1976', 31.5,	'Soft rock');

insert into albums (artist, name, release_date, sales, genre)
values('Bee Gees / Various artists',	'Saturday Night Fever',	'1977', 21.6, 'Disco');

insert into albums (artist, name, release_date, sales, genre)
values('Fleetwood Mac',	'Rumours',	'1977', 27.9,	'Soft rock');

insert into albums (artist, name, release_date, sales, genre)
values ('Shania Twain', 	'Come On Over', 	'1997', 29.6,	'Country, pop');

insert into albums (artist, name, release_date, sales, genre)
VALUES('Various artists',	'Grease: The Original Soundtrack from the Motion Picture',	'1978',14.4,	'Rock and roll'),
('Led Zeppelin',	'Led Zeppelin IV',	'1971',	29.0, 'Hard rock, heavy metal, folk rock'),
('Michael Jackson',	'Bad',	'1987', 19.3 ,	'Pop, funk, rock'),
('Alanis Morissette',	'Jagged Little Pill',	'1995', 24.4,	'Alternative rock'),
('Celine Dion',	'Falling into You',	'1996', 20.2,	'Pop, soft rock'),
('The Beatles',	'Sgt. Peppers Lonely Hearts Club Band','1967', 18.2,	'Rock'),
('Various artists','Dirty Dancing','1987',17.9,	'Pop, rock, R&B'),
('Michael Jackson',	'Dangerous',	'1991', 17.3,	'Rock, funk, pop'),
('Adele',	'21',	'2011', 25.3, 'Pop, soul'),
('Celine Dion',	'Lets Talk About Love','1997', 19.3,	'Pop, soft rock'),
('The Beatles','1',	'2000', 23.4 ,'Rock'),
('ABBA','Gold: Greatest Hits','1992', 23.0,	'Pop, disco'),
('Madonna','The Immaculate Collection','1990',19.4	, 'Pop, dance'),
('The Beatles','Abbey Road','1969',	14.4, 'Rock'),
('Bruce Springsteen','Born in the U.S.A.','1984', 19.6	, 'Heartland rock'),
('Dire Straits','Brothers in Arms','1985',	17.7, 'Roots rock, blues rock, soft rock'),
('James Horner','Titanic: Music from the Motion Picture','1997',	18.1, 'Film score'),
('Metallica','Metallica','1991',	25.2, 'Heavy metal'),
('Nirvana','Nevermind','1991',	16.7, 'Grunge, alternative rock'),
('Pink Floyd','The Wall','1979',	18.6, 'Progressive rock'),
('Santana','Supernatural','1999',	20.5, 'Latin rock'),
('Guns N Roses',	'Appetite for Destruction', '1987', 21.6,	'Hard rock');

