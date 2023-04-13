-- student courses registration table
CREATE TABLE student_courses (studentid INTEGER, course varchar(40), 
	grade FLOAT DEFAULT NULL, FOREIGN KEY (studentid) REFERENCES students(studentID), 
	FOREIGN KEY (course) REFERENCES courses(code), PRIMARY KEY (studentid, course));

-- courses for Fred Flintstone
INSERT INTO student_courses(studentid, course)
SELECT studentid, 'INFO330A' FROM students WHERE studentFirstName = 'Fred' AND studentLastName = 'Flintstone';
INSERT INTO student_courses(studentid, course)
SELECT studentid, 'INFO448A' FROM students WHERE studentFirstName = 'Fred' AND studentLastName = 'Flintstone';
INSERT INTO student_courses(studentid, course)
SELECT studentid, 'INFO314' FROM students WHERE studentFirstName = 'Fred' AND studentLastName = 'Flintstone';
INSERT INTO student_courses(studentid, course)

-- courses for Barney Rubble
SELECT studentid, 'INFO330A' FROM students WHERE studentFirstName = 'Barney' AND studentLastName = 'Rubble';
INSERT INTO student_courses(studentid, course)
SELECT studentid, 'INFO449A' FROM students WHERE studentFirstName = 'Barney' AND studentLastName = 'Rubble';
INSERT INTO student_courses(studentid, course)

-- courses for Wilma Flintstone
SELECT studentid, 'BAW0100' FROM students WHERE studentFirstName = 'Wilma' AND studentLastName = 'Flintstone';
INSERT INTO student_courses(studentid, course)
SELECT studentid, 'BAW100A' FROM students WHERE studentFirstName = 'Wilma' AND studentLastName = 'Flintstone';

-- courses for Betty Rubble
INSERT INTO student_courses(studentid, course)
SELECT studentid, 'BAW0100' FROM students WHERE studentFirstName = 'Betty' AND studentLastName = 'Rubble';