-- ********************************************************* --
--                 CHALLENGE BELLOW                          --
-- ********************************************************* --

-- Q. Evaluate the following...
-- SELECT 10 != 10;
-- SELECT 15 > 14 && 99 - 5 <= 94;
-- SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10;
-- A.
-- SELECT 10 != 10;                             Output: False
-- SELECT 15 > 14 && 99 - 5 <= 94;              Output: True
-- SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10;     Output: True

-- Q. Select all books written before 1980 (non-inclusive)
-- A.
-- SELECT title, released_year FROM books
-- WHERE released_year < 1980;

-- Q. Select all books written by Eggers or Chabon
-- A.
-- SELECT title, author_lname FROM books
-- WHERE author_lname IN ('Eggers', 'Chabon')
-- ORDER BY author_lname;
-- or
-- SELECT title, author_lname FROM books WHERE author_lname='Eggers' OR author_lname='Chabon';

-- Q. Select all books written by Lahir i, published after 2000.
-- A.
-- SELECT * FROM books
-- WHERE author_lname = 'Lahiri' && released_year > 2000;

-- Q. Select all books with page counts between 100 and 200.
-- A.
-- SELECT * FROM books
-- WHERE pages BETWEEN 100 AND 200;

-- Q. Select all books where author_lname starts with a 'C' or an 'S'
-- A.
-- SELECT * FROM books
-- WHERE author_lname LIKE 'C%' || author_lname LIKE 'S%';
-- Or
-- SELECT title, author_lname FROM books 
-- WHERE SUBSTR(author_lname,1,1) IN ('C', 'S');

-- Q. If title contains 'stories' -> Short Stories
-- Just Kids and A Heartbreaking Work -> Memior
-- Everything else -> Novel
-- A.
-- SELECT
--     title,
--     author_lname,
--     CASE
--         WHEN title LIKE '%stories%' THEN 'Short Stories'
--         WHEN title LIKE '%Just Kids%' || title LIKE '%A Heartbreaking Work%' THEN 'Memoir'
--         ELSE 'Novel'
--         END AS Type
-- FROM books;

--  Bonus: Print title, author_lname, and (1 book or # books respectively)
SELECT
    author_fname, 
    author_lname,
    CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
    END AS COUNT
FROM books
GROUP BY author_lname, author_fname;