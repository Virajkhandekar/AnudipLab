/*

Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order

*/

mysql> CREATE DATABASE StudentInfo;
Query OK, 1 row affected (0.02 sec)

mysql> USE StudentInfo;
Database changed
mysql> CREATE TABLE student (
    ->     stud_id INT NOT NULL,
    ->     FirstName VARCHAR(50) NOT NULL,
    ->     LastName VARCHAR(50) NOT NULL,
    ->     Age INT NOT NULL,
    ->     Phoneno VARCHAR(20) NOT NULL,
    ->     Address VARCHAR(100) NOT NULL
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> DESC student;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| stud_id   | int          | NO   |     | NULL    |       |
| FirstName | varchar(50)  | NO   |     | NULL    |       |
| LastName  | varchar(50)  | NO   |     | NULL    |       |
| Age       | int          | NO   |     | NULL    |       |
| Phoneno   | varchar(20)  | NO   |     | NULL    |       |
| Address   | varchar(100) | NO   |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
6 rows in set (0.03 sec)

mysql> INSERT INTO student
    -> VALUES (201,'Rohan','Patel',21,'9876543211','Surat');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO student
    -> VALUES (202,'Anjali','Verma',22,'9876543212','Nagpur'),
    -> (203,'Karan','Shinde',20,'9876543213','Pune'),
    -> (204,'Pooja','Joshi',23,'9876543214','Mumbai'),
    -> (205,'Vikas','Kulkarni',22,'9876543215','Nashik');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM student;
+---------+-----------+----------+-----+------------+---------+
| stud_id | FirstName | LastName | Age | Phoneno    | Address |
+---------+-----------+----------+-----+------------+---------+
|     201 | Rohan     | Patel    |  21 | 9876543211 | Surat   |
|     202 | Anjali    | Verma    |  22 | 9876543212 | Nagpur  |
|     203 | Karan     | Shinde   |  20 | 9876543213 | Pune    |
|     204 | Pooja     | Joshi    |  23 | 9876543214 | Mumbai  |
|     205 | Vikas     | Kulkarni |  22 | 9876543215 | Nashik  |
+---------+-----------+----------+-----+------------+---------+
5 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM student
    -> ORDER BY LastName ASC;
+---------+-----------+----------+-----+------------+---------+
| stud_id | FirstName | LastName | Age | Phoneno    | Address |
+---------+-----------+----------+-----+------------+---------+
|     204 | Pooja     | Joshi    |  23 | 9876543214 | Mumbai  |
|     205 | Vikas     | Kulkarni |  22 | 9876543215 | Nashik  |
|     201 | Rohan     | Patel    |  21 | 9876543211 | Surat   |
|     203 | Karan     | Shinde   |  20 | 9876543213 | Pune    |
|     202 | Anjali    | Verma    |  22 | 9876543212 | Nagpur  |
+---------+-----------+----------+-----+------------+---------+
5 rows in set (0.01 sec)