-- create a table(students)
CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT NOT NULL,
  batch TEXT NOT NULL ,
);
-- insert some values
INSERT INTO students VALUES (1, 'Kumar', 'kumar23@gmail.com','B21WD');
INSERT INTO students VALUES (2, 'Madhi', 'madhi98@gmail.com','B30WD');
INSERT INTO students VALUES (3, 'Dhanush', 'dhanush2342@yahoo.com','B23WE');
INSERT INTO students VALUES (4, 'Prabu', 'prabu899@gmail.com','B22WD');
INSERT INTO students VALUES (5, 'Mari', 'mart4654@gmail.com','B27WD');
INSERT INTO students VALUES (6, 'Vera', 'vera1311@yahoo.com','B28WE');
INSERT INTO students VALUES (7,'Magesh',	'magesh@gmail.com','B24WD');
INSERT INTO students VALUES (8, 'Raja',	'raja252@gmail.com',)'B30WD';
INSERT INTO students VALUES (9, 'Yuvan',	'yuvan9878@yahoo.com','B25WD');
INSERT INTO students VALUES (10, 'Vikarm',	'vikaram779@gmail.com','B26WE');
INSERT INTO students VALUES (11, 'karthick',	'karthick63s@gmail.com','B29WD');
INSERT INTO students VALUES (12, 'Maran',	'maranmathi@gmail.com','B27WD');

-- create a table(tasks)
CREATE TABLE tasks(
    users_id INTEGER ,
    javascript INTEGER,
    html INTEGER,
    css INTEGER,
    bootstrap INTEGER,
    dom INTEGER,
    fetch INTEGER,
    react INTEGER,
    msql INTEGER,
);

-- insert some values
INSERT INTO tasks VALUES(1,4,3,4,3,5,4,6,3);
INSERT INTO tasks VALUES(2,3,4,2,5,3,5,4,4); 								
INSERT INTO tasks VALUES(3,5,4,4,4,5,4,5,2);							
INSERT INTO tasks VALUES(4,4,3,3,5,4,3,4,4);							
INSERT INTO tasks VALUES(5,3,4,4,5,5,5,6,4);							
INSERT INTO tasks VALUES(6,4,3,4,5,3,3,4,4);
INSERT INTO tasks VALUES(7,5,4,4,5,5,5,6,4);							
INSERT INTO tasks VALUES(8,4,4,3,5,4,3,4,4);							
INSERT INTO tasks VALUES(9,5,3,4,4,5,4,5,4);							
INSERT INTO tasks VALUES(10,5,4,4,5,5,5,6,3);							
INSERT INTO tasks VALUES(11,4,3,4,5,3,3,4,4);							
INSERT INTO tasks VALUES(12,4,4,3,5,4,3,4,4);							


-- create a table(mentors)
CREATE TABLE mentors(
    id_list INTEGER PRIMARY KEY,
    users_id INTEGER,
    mentors TEXT NOT NULL,
);

-- insert some values
INSERT INTO mentors VALUES(1,1,'Mariappan');
INSERT INTO mentors VALUES(2,1,'John');
INSERT INTO mentors VALUES(3,2,'Mohan');
INSERT INTO mentors VALUES(4,3,'Mohan');
INSERT INTO mentors VALUES(5,2,'Kumar');
INSERT INTO mentors VALUES(6,3,'Mariappan');
INSERT INTO mentors VALUES(7,4,'Ram');
INSERT INTO mentors VALUES(8,5,'Ram');
INSERT INTO mentors VALUES(9,4,'Ramesh');
INSERT INTO mentors VALUES(10,5,'Vijay');
INSERT INTO mentors VALUES(11,6,'Prabakaran');
INSERT INTO mentors VALUES(12,6,'Prabakaran');
INSERT INTO mentors VALUES(13,7,'Guru');
INSERT INTO mentors VALUES(14,8,'Rajubai');
INSERT INTO mentors VALUES(15,9,'Santhanam');
INSERT INTO mentors VALUES(16,10,'Goundamani');
INSERT INTO mentors VALUES(17,11,'Senthil');
INSERT INTO mentors VALUES(18,12,'Yogi Babu');
INSERT INTO mentors VALUES(19,8,'Santhanam');
INSERT INTO mentors VALUES(20,9,'Yogi Babu');
INSERT INTO mentors VALUES(21,7,'Guru');
INSERT INTO mentors VALUES(22,11,'Senthil');
INSERT INTO mentors VALUES(23,10,'Rajubai');
INSERT INTO mentors VALUES(24,12,'Goundamani');


1,SELECT * FROM students;
2,SELECT * FROM tasks;
3,SELECT * FROM mentors;

-- total task completed for each student
SELECT name,batch,(javascript+html+css+bootstrap+dom+fetch+react+msql) FROM tasks inner join students on users_id=id;

-- how many mentors in each students
SELECT users_id,name,batch,mentors FROM students inner join mentors on users_id=id ;
