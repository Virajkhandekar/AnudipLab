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
11 rows in set (0.12 sec)

mysql> use e_commerce;
Database changed
mysql> CREATE TABLE EMPLOYEE(employeeID int(10) not null primary key, employeeName varchar(50) not null, salary double not null);
Query OK, 0 rows affected, 1 warning (0.09 sec)

mysql> desc employee;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| employeeID   | int         | NO   | PRI | NULL    |       |
| employeeName | varchar(50) | NO   |     | NULL    |       |
| salary       | double      | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.02 sec)

mysql> INSERT INTO employee VALUES
    -> (101, 'Rahul Sharma', 45000),
    -> (102, 'Priya Patel', 52000),
    -> (103, 'Amit Kumar', 60000),
    -> (104, 'Neha Singh', 48000),
    -> (105, 'Vikas Gupta', 55000);
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------------+--------------+--------+
| employeeID | employeeName | salary |
+------------+--------------+--------+
|        101 | Rahul Sharma |  45000 |
|        102 | Priya Patel  |  52000 |
|        103 | Amit Kumar   |  60000 |
|        104 | Neha Singh   |  48000 |
|        105 | Vikas Gupta  |  55000 |
+------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> update employee set salary=80000 where employeeID=103;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+------------+--------------+--------+
| employeeID | employeeName | salary |
+------------+--------------+--------+
|        101 | Rahul Sharma |  45000 |
|        102 | Priya Patel  |  52000 |
|        103 | Amit Kumar   |  80000 |
|        104 | Neha Singh   |  48000 |
|        105 | Vikas Gupta  |  55000 |
+------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> update employee set employeeName='mihir patil' where employeeID=105;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+------------+--------------+--------+
| employeeID | employeeName | salary |
+------------+--------------+--------+
|        101 | Rahul Sharma |  45000 |
|        102 | Priya Patel  |  52000 |
|        103 | Amit Kumar   |  80000 |
|        104 | Neha Singh   |  48000 |
|        105 | mihir patil  |  55000 |
+------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> delete from employee where employeeID=105;
Query OK, 1 row affected (0.01 sec)

mysql> select * from employee;
+------------+--------------+--------+
| employeeID | employeeName | salary |
+------------+--------------+--------+
|        101 | Rahul Sharma |  45000 |
|        102 | Priya Patel  |  52000 |
|        103 | Amit Kumar   |  80000 |
|        104 | Neha Singh   |  48000 |
+------------+--------------+--------+
4 rows in set (0.00 sec)

mysql> delete from employee;
Query OK, 4 rows affected (0.01 sec)

mysql> select * from employee;
Empty set (0.00 sec)

mysql> INSERT INTO employee VALUES
    -> ^C
mysql> desc employee;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| employeeID   | int         | NO   | PRI | NULL    |       |
| employeeName | varchar(50) | NO   |     | NULL    |       |
| salary       | double      | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.04 sec)

mysql> INSERT INTO employee VALUES
    -> (101, 'Rahul Sharma', 45000),
    -> (102, 'Priya Patel', 52000),
    -> (103, 'Amit Kumar', 60000),
    -> (104, 'Neha Singh', 48000),
    -> (105, 'Vikas Gupta', 55000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> truncate table employee;
Query OK, 0 rows affected (0.06 sec)

mysql> select * from employee;
Empty set (0.01 sec)

mysql> drop table employee;
Query OK, 0 rows affected (0.03 sec)

mysql> select * from employee;
ERROR 1146 (42S02): Table 'e_commerce.employee' doesn't exist
mysql> CREATE TABLE EMPLOYEE(employeeID int(10) not null primary key, employeeName varchar(50) not null, salary double not null);
Query OK, 0 rows affected, 1 warning (0.05 sec)

mysql> INSERT INTO employee VALUES
    -> (101, 'Rahul Sharma', 45000),
    -> (102, 'Priya Patel', 52000),
    -> (103, 'Amit Kumar', 60000),
    -> (104, 'Neha Singh', 48000),
    -> (105, 'Vikas Gupta', 55000);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------------+--------------+--------+
| employeeID | employeeName | salary |
+------------+--------------+--------+
|        101 | Rahul Sharma |  45000 |
|        102 | Priya Patel  |  52000 |
|        103 | Amit Kumar   |  60000 |
|        104 | Neha Singh   |  48000 |
|        105 | Vikas Gupta  |  55000 |
+------------+--------------+--------+
5 rows in set (0.01 sec)

mysql> alter table employee add email varchar
    -> :
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ':' at line 2
mysql>
mysql> alter table employee add email varchar(100) not null;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(50)  | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
| email        | varchar(100) | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.02 sec)

mysql> alter table employee modify employeeName varchar(100) not null;
Query OK, 5 rows affected (0.07 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
| email        | varchar(100) | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> alter table employee drop colunm email;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'email' at line 1
mysql> alter table employee drop column email;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> alter table employee rename to employee_details;
Query OK, 0 rows affected (0.02 sec)

mysql> desc employee;
ERROR 1146 (42S02): Table 'e_commerce.employee' doesn't exist
mysql> desc employee_details;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee
    -> ;
ERROR 1146 (42S02): Table 'e_commerce.employee' doesn't exist
mysql> alter table employee_details drop primary key;
Query OK, 5 rows affected (0.12 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee_details;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   |     | NULL    |       |
| employeeName | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
3 rows in set (0.03 sec)

mysql> alter table employee_details add constraint primary key(employeeID);
Query OK, 0 rows affected (0.14 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee_details;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)