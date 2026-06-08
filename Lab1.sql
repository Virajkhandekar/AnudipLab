/*     
Create Database StudentManagementSystem

1.Create Table student

with attribute:  ●StudentID (Primary Key)
●Name
●Age
●Address


2.Create a table with named Feedback 

with attributes: ● FeedbackID (Primary Key) 
● StudentID (Foreign key) 
● Date 
● InstructorName 
● Feedback

Add 5 Records in table

 */
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| attendance_db      |
| attendx            |
| customer           |
| e_commerce         |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
10 rows in set (0.13 sec)

mysql> create database StudentManagementSystem;
Query OK, 1 row affected (0.04 sec)

mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| attendance_db           |
| attendx                 |
| customer                |
| e_commerce              |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
11 rows in set (0.00 sec)

mysql> use studentmanagementsystem;
Database changed
mysql> CREATE TABLE Student (StudentID INT PRIMARY KEY, Name VARCHAR(50) NOT NULL, Age INT, Address VARCHAR(255));
Query OK, 0 rows affected (0.14 sec)

mysql> desc student;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| StudentID | int          | NO   | PRI | NULL    |       |
| Name      | varchar(50)  | NO   |     | NULL    |       |
| Age       | int          | YES  |     | NULL    |       |
| Address   | varchar(255) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.04 sec)

mysql> ALTER TABLE Student MODIFY StudentID VARCHAR(10);
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| StudentID | varchar(10)  | NO   | PRI | NULL    |       |
| Name      | varchar(50)  | NO   |     | NULL    |       |
| Age       | int          | YES  |     | NULL    |       |
| Address   | varchar(255) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into student values('0001','Viraj Khandekar',20,'Thane'),('0002','Sagar bhoir',22,'kalyan'),('0003','Sujal Patil',23,'Kalwa'),('0004','Vicky vaze',24,'Mulund'),('0005','Pamya Jadhav',20,'Bhandup');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+-----------+-----------------+------+---------+
| StudentID | Name            | Age  | Address |
+-----------+-----------------+------+---------+
| 0001      | Viraj Khandekar |   20 | Thane   |
| 0002      | Sagar bhoir     |   22 | kalyan  |
| 0003      | Sujal Patil     |   23 | Kalwa   |
| 0004      | Vicky vaze      |   24 | Mulund  |
| 0005      | Pamya Jadhav    |   20 | Bhandup |
+-----------+-----------------+------+---------+
5 rows in set (0.01 sec)

mysql> create table feedback(feedback_id varchar(10) not null primary key,student_id varchar(10) not null,date date not null,instructor_name varchar(50) not null,feedback varchar(255) not null,foreign key(student_id) references student(StudentID));
Query OK, 0 rows affected (0.09 sec)

mysql> desc feedback;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| feedback_id     | varchar(10)  | NO   | PRI | NULL    |       |
| student_id      | varchar(10)  | NO   | MUL | NULL    |       |
| date            | date         | NO   |     | NULL    |       |
| instructor_name | varchar(50)  | NO   |     | NULL    |       |
| feedback        | varchar(255) | NO   |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
5 rows in set (0.03 sec)

mysql> insert into feedback values('F0001','0001','2025-06-01','Pawan Sharma','Excellent teaching'),('F0002','0002','2025-06-02','Suraj Mehta','Very  supportive'),('F0003','0003','2025-06-03','Deepak Patel','Explains concepts clearly'),('F0004','0004','2025-06-04','Dhruv Singh','Needs more practical examples'),('F0005','0005','2025-06-05','Janvi Joshi','Good classroom interaction');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from feedback;
+-------------+------------+------------+-----------------+-------------------------------+
| feedback_id | student_id | date       | instructor_name | feedback                      |
+-------------+------------+------------+-----------------+-------------------------------+
| F0001       | 0001       | 2025-06-01 | Pawan Sharma    | Excellent teaching            |
| F0002       | 0002       | 2025-06-02 | Suraj Mehta     | Very  supportive              |
| F0003       | 0003       | 2025-06-03 | Deepak Patel    | Explains concepts clearly     |
| F0004       | 0004       | 2025-06-04 | Dhruv Singh     | Needs more practical examples |
| F0005       | 0005       | 2025-06-05 | Janvi Joshi     | Good classroom interaction    |
+-------------+------------+------------+-----------------+-------------------------------+
5 rows in set (0.01 sec)

mysql>