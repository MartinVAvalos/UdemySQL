-- ********************************************************* --
--     Before starting challenge. You must run this code:    --
-- ********************************************************* --
-- CREATE TABLE books 
-- 	(
-- 		book_id INT NOT NULL AUTO_INCREMENT,
-- 		title VARCHAR(100),
-- 		author_fname VARCHAR(100),
-- 		author_lname VARCHAR(100),
-- 		released_year INT,
-- 		stock_quantity INT,
-- 		pages INT,
-- 		PRIMARY KEY(book_id)
-- 	);

-- INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
-- VALUES
-- ('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
-- ('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
-- ('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
-- ('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
-- ('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
-- ('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
-- ('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
-- ('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
-- ('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
-- ('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
-- ('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
-- ("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
-- ('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
-- ('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
-- ('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
-- ('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

-- ********************************************************* --
--                 CHALLENGE BELLOW                          --
-- ********************************************************* --

-- Q. Reverse and uppercase the following sentence:
-- "Why does my cat look at me with such hatred?"
-- A.
SELECT UPPER(REVERSE('Why does my cat look at me with such hatred?'));

-- Q. What does this print out?
-- A.
-- SELECT 
--  REPLACE
-- (
-- CONCAT('I', ' ', 'like', ' ', 'cats'),
-- ' ',
-- '-'
-- );

--  A.
--  I-like-cats

-- Q. Replace spaces in titles with '->'
-- A.
-- SELECT REPLACE(title, ' ', '->') AS title FROM books;

-- Q. Print author's last name regularly with column named 'forwards'.
--  Print author's last name reversed with column named 'backwards'.
-- A.
-- SELECT 
--     author_lname AS forwards, 
--     REVERSE(author_lname) AS backwards
-- FROM books;

-- Q. Print author's full name in caps with column named 'full name in caps'.
-- A.
-- SELECT
--     UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps'
-- FROM books;

-- Q. Print title of book, 'was released in', and the date of the book
--      with column name 'blurb'.
-- A. 
-- SELECT 
--     CONCAT(title, ' was released in ', released_year) AS 'blurb'
-- FROM books;

-- Q. Print book titles with column name 'title' and 
--      the length of each title with column name 'character count'.
-- A.
-- SELECT 
--     title,
--     CHAR_LENGTH(title) AS 'character count'
-- FROM books;

-- Q. Print first 6 letters of title as 'short title',
--      print author's last name then first name as 'author'
--      print # of books in stock followed by 'in stock' as 'quantity'
-- A.
-- SELECT
--     CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title',
--     CONCAT(author_lname, ',', author_fname) AS 'author',
--     CONCAT(stock_quantity, ' in stock') AS quantity
-- FROM books;
