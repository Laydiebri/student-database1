CREATE TABLE Modules (
code VARCHAR(10) PRIMARY KEY,
name VARCHAR(50) NOT NULL);
INSERT INTO Modules VALUES('CMP020C101','Software Development 1');
INSERT INTO Modules VALUES('CMP020C102','Computer Systems');
INSERT INTO Modules VALUES('CMP020C103','Mathematics for Computer Science');
INSERT INTO Modules VALUES('CMP020C104','Software Development 2');
INSERT INTO Modules VALUES('CMP020C105','Computing and Society');
INSERT INTO Modules VALUES('CMP020C106','Databases');
INSERT INTO Modules VALUES('PHY020C101','Physics Skills and Techniques');
INSERT INTO Modules VALUES('PHY020C102','Mathematics for Physics');
INSERT INTO Modules VALUES('PHY020C103','Computation for Physics');
INSERT INTO Modules VALUES('PHY020C104','Classical Physics');
INSERT INTO Modules VALUES('PHY020C105','Introduction to Modern Physics');
INSERT INTO Modules VALUES('PHY020C106','Introduction to Astrophysics');
CREATE TABLE Programmes (
id VARCHAR(8) PRIMARY KEY,
name VARCHAR(50));
INSERT INTO Programmes VALUES('09UU0001','BSc Computer Science');
INSERT INTO Programmes VALUES('09UU0002','BEng Software Engineering');
INSERT INTO Programmes VALUES('09UU0003','BSc Physics');
CREATE TABLE Programme_Modules(
programme VARCHAR(8) NOT NULL,
module VARCHAR(10) NOT NULL,
FOREIGN KEY (programme) REFERENCES Programmes(id),
FOREIGN KEY (module) REFERENCES Modules(code));
INSERT INTO Programme_Modules VALUES('09UU0001','CMP020C101');
INSERT INTO Programme_Modules VALUES('09UU0001','CMP020C102');
INSERT INTO Programme_Modules VALUES('09UU0001','CMP020C103');
INSERT INTO Programme_Modules VALUES('09UU0001','CMP020C104');
INSERT INTO Programme_Modules VALUES('09UU0001','CMP020C105');
INSERT INTO Programme_Modules VALUES('09UU0001','CMP020C106');
INSERT INTO Programme_Modules VALUES('09UU0002','CMP020C101');
INSERT INTO Programme_Modules VALUES('09UU0002','CMP020C102');
INSERT INTO Programme_Modules VALUES('09UU0002','CMP020C103');
INSERT INTO Programme_Modules VALUES('09UU0002','CMP020C104');
INSERT INTO Programme_Modules VALUES('09UU0002','CMP020C105');
INSERT INTO Programme_Modules VALUES('09UU0002','CMP020C106');
INSERT INTO Programme_Modules VALUES('09UU0003','PHY020C101');
INSERT INTO Programme_Modules VALUES('09UU0003','PHY020C102');
INSERT INTO Programme_Modules VALUES('09UU0003','PHY020C103');
INSERT INTO Programme_Modules VALUES('09UU0003','PHY020C104');
INSERT INTO Programme_Modules VALUES('09UU0003','PHY020C105');
INSERT INTO Programme_Modules VALUES('09UU0003','PHY020C106');
CREATE TABLE Students(
id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL);
INSERT INTO Students VALUES(1,'Kevin Chalmers');
INSERT INTO Students VALUES(2,'Lisa Haskel');
INSERT INTO Students VALUES(3,'Arturo Araujo');
INSERT INTO Students VALUES(4,'Foo Bar');
INSERT INTO Students VALUES(100,'Mohammed Ali');
INSERT INTO Students VALUES(200,'Ada Lovelace');
CREATE TABLE Student_Programme(
id INT,
programme VARCHAR(8),
FOREIGN KEY (id) REFERENCES Students(id),
FOREIGN KEY (programme) REFERENCES Programmes(id));
INSERT INTO Student_Programme VALUES(1,'09UU0002');
INSERT INTO Student_Programme VALUES(2,'09UU0001');
INSERT INTO Student_Programme VALUES(3,'09UU0003');
INSERT INTO Student_Programme VALUES(4,'09UU0001');
