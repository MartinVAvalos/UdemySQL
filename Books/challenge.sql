-- Concatenate Exercise
-- SELECT author_fname AS first, author_lname AS last, 
--   CONCAT(author_fname, ' ', author_lname) AS full
-- FROM books;

-- Use more than one string function
SELECT
    CONCAT
    (
        SUBSTRING(title, 1, 10), 
        '...'
    ) AS 'short title'
FROM books;