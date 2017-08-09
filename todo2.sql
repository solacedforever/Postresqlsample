--
-- CREATE TABLE todo (
--   id SERIAL PRIMARY KEY, -- a serial primary key
--   title VARCHAR(255) NOT NULL, -- not optional, string up to 255 characters
--   details VARCHAR(1000), -- optional, holds a large amount of text
--   priority INTEGER NOT NULL DEFAULT 1, -- not optional, an integer. Default is 1.
--   created_at DATE NOT NULL, -- not optional. A date and time.
--   completed_at DATE -- optional. A date a time.
-- );

INSERT INTO todo (title, details, priority, created_at, completed_at)
VALUES
('Wash the car again', 'go to the car and wash it with extra wax this time', 4, '2016-10-10', '2016-10-15'),('Wash the dog', 'wash the dog, dont let the dog get away', 5, '2016-10-10', NULL), ('Wash the car for super real this time', 'go to the car and wash it...again...for real though', 3, '2016-10-9',NULL), ('Dont wash the other car', 'its also a trap', 1, '2016-9-2', NULL),('Wash the cat', 'the cat fell into the toilet', 1, '2016-2-9',NULL),('Take the dog out', ' the dog needs to go outside',3,'2016-9-2','2016-9-2'),
('Take the cat out','take the cat
 outside',2,'1982-2-9',NULL), ('Do the laundry','separate the clothes and wash them',2,'1989-3-8',NULL), ('Vacuum the house','pick up the cables then vacuum', 5, '1989-9-2', '2017-12-1'), ('Clean the toilet','go buy a toilet scrubber then clean the toilet',8,'1989-2-3','2016-10-11')

SELECT * FROM todo WHERE priority = 3 AND completed_at IS NULL;
SELECT * FROM todo WHERE completed_at IS NULL ORDER BY priority ASC;
SELECT COUNT(priority) FROM todo WHERE created_at > CURRENT_DATE - 30;
SELECT * FROM todo WHERE id = 5 AND completed_at = '2016-10-10';
SELECT * FROM todo ORDER BY priority DESC, created_at ASC LIMIT 1;
