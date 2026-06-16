mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| attendance_db           |
| attendx                 |
| bankdb                  |
| customer                |
| e_commerce              |
| information_schema      |
| joins                   |
| mysql                   |
| performance_schema      |
| sakila                  |
| storeprocedureeg        |
| studentinfo             |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
15 rows in set (0.01 sec)

mysql> CREATE DATABASE StudentsManagementSystem;
Query OK, 1 row affected (0.01 sec)

mysql> USE StudentsManagementSystem;
Database changed
mysql> CREATE TABLE Student (StudentId INT PRIMARY KEY, FirstName VARCHAR(50), LastName VARCHAR(50));
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE Course (CourseId INT PRIMARY KEY, CourseName VARCHAR(100));
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> CREATE TABLE Enrollment (EnrollmentID INT PRIMARY KEY, StudentID INT, CourseID INT, FOREIGN KEY (StudentID) REFERENCES Student(StudentId), FOREIGN KEY (CourseID) REFERENCES Course(CourseId));
Query OK, 0 rows affected (0.04 sec)

mysql> INSERT INTO Student VALUES (1,'John','Doe'),(2,'Alice','Smith'),(3,'Bob','Johnson'),(4,'David','Brown'),(5,'Emma','Wilson');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student
    -> ;
+-----------+-----------+----------+
| StudentId | FirstName | LastName |
+-----------+-----------+----------+
|         1 | John      | Doe      |
|         2 | Alice     | Smith    |
|         3 | Bob       | Johnson  |
|         4 | David     | Brown    |
|         5 | Emma      | Wilson   |
+-----------+-----------+----------+
5 rows in set (0.00 sec)

mysql> INSERT INTO Course VALUES (101,'Database Management'),(102,'Java Programming'),(103,'Web Development'),(104,'Data Structures'),(105,'Operating Systems');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from course;
+----------+---------------------+
| CourseId | CourseName          |
+----------+---------------------+
|      101 | Database Management |
|      102 | Java Programming    |
|      103 | Web Development     |
|      104 | Data Structures     |
|      105 | Operating Systems   |
+----------+---------------------+
5 rows in set (0.00 sec)

mysql> INSERT INTO Enrollment VALUES (1,1,101),(2,2,102),(3,3,103),(4,4,104),(5,5,105);
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from enrollment;
+--------------+-----------+----------+
| EnrollmentID | StudentID | CourseID |
+--------------+-----------+----------+
|            1 |         1 |      101 |
|            2 |         2 |      102 |
|            3 |         3 |      103 |
|            4 |         4 |      104 |
|            5 |         5 |      105 |
+--------------+-----------+----------+
5 rows in set (0.00 sec)
mysql> SELECT Student.StudentId,Student.FirstName,Student.LastName,Course.CourseId,Course.CourseName
    -> FROM Enrollment INNER JOIN Student ON Enrollment.StudentID = Student.StudentId INNER JOIN Course ON Enrollment.CourseID = Course.CourseId;
+-----------+-----------+----------+----------+---------------------+
| StudentId | FirstName | LastName | CourseId | CourseName          |
+-----------+-----------+----------+----------+---------------------+
|         1 | John      | Doe      |      101 | Database Management |
|         2 | Alice     | Smith    |      102 | Java Programming    |
|         3 | Bob       | Johnson  |      103 | Web Development     |
|         4 | David     | Brown    |      104 | Data Structures     |
|         5 | Emma      | Wilson   |      105 | Operating Systems   |
+-----------+-----------+----------+----------+---------------------+
5 rows in set (0.00 sec)