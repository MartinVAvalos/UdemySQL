-- Q. What is a good use case for CHAR?
-- A. You use char when you know the length of the string will be fixed.
--  Examples being State Abbreviations (CA, NY), Yes/No Flags (Y/N), or Sex (M/F)

-- Q. Fill in the blanks. Note: Price must be less than 1,000,000
-- CREATE TABLE inventory (
--  item_name _____,
--  price _________,
--  quantity ______
-- );
-- A.
-- CREATE TABLE inventory (
--  item_name VARCHAR(20),
--  price DECIMAL(8, 2),
--  quantity INT
-- );

-- Q. What is the difference between DATETIME and TIMESTAMP?
-- A. They both store date and time information, however, TIMESTAMP holds a much smaller range than DATETIME due to the fact that it takes up less memory. DATETIME's memory is roughly twice as large as TIMESTAMP. Another difference is how they're used. TIMESTAMP's are typically used to add meta data, such as when things are created or updated, otherwise, use DATETIME.

-- Q. Print out the current time.
-- A. 
-- SELECT CURTIME();

-- Q. Print out the current date (without the time).
-- A.
-- SELECT CURDATE();

-- Q. Print out the current day of the week. (the number)
-- SELECT DAYOFWEEK(CURDATE());
-- SELECT DAYOFWEEK(NOW());
-- SELECT DATE_FORMAT(NOW(), '%w') + 1;

-- Q. Print out the current day of the week. (the day name)
-- SELECT DAYNAME(NOW());
-- SELECT DATE_FORMAT(NOW(), '%W');

-- Q. Print out the current day and time using this format: mm/dd/yyyy
-- SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y'');

-- Q. Print out the current day and time using this format.
-- ex. January 2nd at 3:15
--      April 1st at 10:18
-- A.
-- SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');

-- Q. Create a tweets table that stores:
--      + The Tweet content
--      + A Username
--      + Time it was created
-- A.
-- CREATE TABLE tweets(
--     content VARCHAR(120),
--     username VARCHAR(20),
--     created_at TIMESTAMP DEFAULT NOW()
-- );
 
-- INSERT INTO tweets (content, username) VALUES('I love food', 'Ela');
-- SELECT * FROM tweets;
 
-- INSERT INTO tweets (content, username) VALUES('Awesome!', 'Muse');
-- SELECT * FROM tweets;
