CREATE TABLE todo (
  id SERIAL PRIMARY KEY, -- a serial primary key
  title VARCHAR(255) NOT NULL, -- not optional, string up to 255 characters
  details VARCHAR(1000), -- optional, holds a large amount of text
  priority INTEGER NOT NULL DEFAULT 1, -- not optional, an integer. Default is 1.
  created_at DATE NOT NULL, -- not optional. A date and time.
  completed_at DATE -- optional. A date a time.
);

INSERT INTO todo (title, details, priority, created_at, created_at, completed_at) VALUES ('Wash the car', 'go to the car and wash it', '3', '2016-10-10', '2016-10-12');
INSERT INTO todo (title, details, priority, created_at) VALUES ('Wash the car again', 'go to the car and wash it, dont drown though', '5', '2016-15-10');
INSERT INTO todo (title, details, priority, created_at) VALUES ('Wash the car for real this time', 'go to the car and wash it...again', '6', '2016-10-9');
INSERT INTO todo (title, details, priority, created_at) VALUES ('Dont wash that car', 'its a trap', '1', '2016-5-6');
INSERT INTO todo (title, details, priority, created_at) VALUES ('Try to not wash the car', 'i told you it was a trap', '1', '2016-10-6');

SELECT title, completed_at FROM todo WHERE completed_at IS NULL;
SELECT title, priority FROM todo WHERE priority > 1;
UPDATE todo SET completed_at = '2016-15-10' WHERE id = 1;
DELETE FROM  todo WHERE  completed_at IS NOT NULL;
