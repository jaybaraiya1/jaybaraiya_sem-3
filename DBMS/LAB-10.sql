CREATE TABLE STUDENT_INFO(
   RNo INT,
   Name VARCHAR(50),
   Branch VARCHAR(50),
   SPI DECIMAL(5,2),
   Bklog INT
);
INSERT INTO STUDENT_INFO VALUES(101 ,'Raju', 'CE', 8.80, 0),
								(102, 'Amit', 'CE', 2.20 ,3),
								(103,' Sanjay',' ME', 1.50, 6),
								(104 ,'Neha',' EC' ,7.65, 1),
								(105 ,'Meera ','EE' ,5.52, 2),
								(106 ,'Mahesh', 'EC' ,4.50, 3)
--Create a view Personal with all columns.
 CREATE VIEW Personal
 AS
SELECT * FROM STUDENT_INFO
SELECT * FROM Personal

--Create a view Student_Details having columns Name, Branch & SPI. 
 CREATE VIEW Student_Details
 AS
 SELECT Name, Branch ,SPI FROM STUDENT_INFO
 SELECT * FROM Student_Details


 --Create a view AcademicData having columns RNo, Name, Branch.
 CREATE VIEW AcademicData
 AS
 SELECT RNo,Name, Branch FROM STUDENT_INFO
 SELECT * FROM AcademicData

 --4. Create a view Student_ bklog having all columns but students whose bklog more than 2.
 CREATE VIEW Student_bklog
 AS
 SELECT * FROM STUDENT_INFO WHERE Bklog>2
 SELECT * FROM Student_bklog

 --5. Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four letters.
 CREATE VIEW Student_Pattern
 AS
 SELECT RNo,Name, Branch FROM STUDENT_INFO WHERE Name LIKE '____'
 SELECT * FROM Student_Pattern --6. Insert a new record to AcademicData view. (107, Meet, ME)INSERT INTO AcademicData VALUES(107, 'Meet', 'ME') SELECT * FROM AcademicData --7 Update the branch of Amit from CE to ME in Student_Details view UPDATE Student_Details SET Branch='ME' WHERE NAME='AMIT'  SELECT * FROM Student_Details  --8. Delete a student whose roll number is 104 from AcademicData view.DELETE FROM AcademicData WHERE RNo=104--PART B----1. Create a view that displays information of all students whose SPI is above 8.5   CREATE VIEW students   AS   SELECT SPI FROM STUDENT_INFO WHERE SPI>8.5--2. Create a view that displays 0 backlog students.   CREATE VIEW students   AS   SELECT Bklog FROM STUDENT_INFO WHERE Bklog=0--3. Create a view Computerview that displays CE branch data only. CREATE VIEW Computerview   AS   SELECT branch FROM STUDENT_INFO WHERE branch='CE'   SELECT * FROM Computerview--PART C----1. Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC.   CREATE VIEW Result_EC   AS   SELECT SPI,NAME  FROM STUDENT_INFO WHERE SPI<5 AND branch='EC'   SELECT * FROM Result_EC--2. Update the result of student MAHESH to 4.90 in Result_EC view.    UPDATE Result_EC SET SPI=4.90 WHERE NAME='Mahesh'--3. Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with ‘M’ and having bklogs more than 5.
   CREATE VIEW Stu_Bklog   AS   SELECT RNo,NAME,Bklog  FROM STUDENT_INFO WHERE NAME LIKE 'M%' AND Bklog>5
     SELECT * FROM Stu_Bklog

--4. Drop Computerview form the database.
  DROP VIEW Computerview
