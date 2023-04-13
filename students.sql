-- students table
CREATE TABLE students (studentID INTEGER PRIMARY KEY NOT NULL, studentFirstName varchar(40), 
	studentLastName varchar(80), studentAge INT);
INSERT INTO students (studentID, studentFirstName, studentLastName, studentAge)
VALUES ('1', 'Fred', 'Flintstone', '35'),  ('2', 'Wilma', 'Flintstone', '29'), ('3', 'Barney', 'Rubble', '33'), ('4', 'Betty', 'Rubble', '29'), 
 ('5', 'Pebbles', 'Flintstone', '1'), ('6', 'Bam-Bam', 'Rubble', '1'), ('7', 'Daniel', 'Eum', '22'), ('8', 'Jeremy', 'Hong', '18'), ('9', 'Dri', 'Tung', '20');