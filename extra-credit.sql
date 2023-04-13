-- timeslots table
CREATE TABLE timeslots (id SERIAL PRIMARY KEY, timeStart TIME NOT NULL, timeEnd TIME NOT NULL);

-- modify rooms table
ALTER TABLE rooms
ADD COLUMN id SERIAL PRIMAL KEY;

-- schedule TABLE
CREATE TABLE schedule (coursecode varchar(40) REFERENCES courses(code), roomid INTEGER REFERENCES rooms(buildingID), 
	timeslotsid INTEGER REFERENCES timeslots(id), 
	PRIMARY KEY(coursecode, timeslotsid), CONSTRAINT unique_room UNIQUE (roomid, timeslotsid));