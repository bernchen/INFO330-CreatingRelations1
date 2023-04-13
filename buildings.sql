-- building table
CREATE TABLE buildings (ID INTEGER AUTO_INCREMENT PRIMARY KEY, 
	buildingName varchar(80) NOT NULL, shortname varchar(10) UNIQUE);

-- room table
CREATE TABLE rooms (buildingID INTEGER, number INTEGER, seating INTEGER,
	PRIMARY KEY(number, buildingID), FOREIGN KEY(buildingID) REFERENCES buildings(ID));

-- insert values for building table
INSERT INTO buildings (ID, buildingName, shortname) 
VALUES ('1', 'disney building', 'DisB'),
	('2', 'intramural activities building', 'IMA'), 
	('3', 'the fancy building', 'FAN');

-- insert values for room table
INSERT INTO rooms (buildingID, number, seating)
VALUES ('1', '123', '77'), ('1', '101', '1001'), ('2', '001', '25'), ('2', '444', '100'), ('3', '010', '99'), ('3', '007', '70');