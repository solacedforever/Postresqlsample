CREATE TABLE thingsToDo (
  id SERIAL PRIMARY KEY, -- a serial primary key
  title VARCHAR(255) NOT NULL, -- not optional, string up to 255 characters
  details VARCHAR(1000), -- optional, holds a large amount of text
  priority INTEGER NOT NULL DEFAULT 1, -- not optional, an integer. Default is 1.
  created_at DATE NOT NULL, -- not optional. A date and time.
  completed_at DATE -- optional. A date a time.
);

INSERT INTO thingsToDo (title, details, priority, created_at, created_at, completed_at) VALUES ('Wash the car', 'go to the car and wash it', '3', '10/10/2016', '10/15/2016');
INSERT INTO thingsToDo (title, details, priority, created_at) VALUES ('Wash the car again', 'go to the car and wash it, dont drowned though', '5', '10/10/2016');
INSERT INTO thingsToDo (title, details, priority, created_at) VALUES ('Wash the car for real this time', 'go to the car and wash it...again', '6', '10/10/2016');
INSERT INTO thingsToDo (title, details, priority, created_at) VALUES ('Dont wash that car', 'its a trap', '1', '10/10/2016');
INSERT INTO thingsToDo (title, details, priority, created_at) VALUES ('Try to not wash the car', 'i told you it was a trap', '1', '10/10/2016');

SELECT title, completed_at FROM thingsToDo WHERE completed_at IS NULL;
SELECT title, priority FROM thingsToDo WHERE priority > 1;
UPDATE thingsToDo SET completed_at = '10/15/2016' WHERE id = 1;
DELETE FROM  thingsToDo WHERE  completed_at IS NOT NULL;
