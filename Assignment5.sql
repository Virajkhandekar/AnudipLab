mysql> CREATE DATABASE STOREPROCEDUREEG;
Query OK, 1 row affected (0.04 sec)

mysql> CREATE TABLE employee(
    ->     employeeId INT PRIMARY KEY NOT NULL,
    ->     name VARCHAR(50) NOT NULL,
    ->     department VARCHAR(50) NOT NULL,
    ->     salary INT NOT NULL
    -> );
mysql> use storeprocedureeg;
Database changed
mysql> CREATE TABLE employee(
    ->     employeeId INT PRIMARY KEY NOT NULL,
    ->     name VARCHAR(50) NOT NULL,
    ->     department VARCHAR(50) NOT NULL,
    ->     salary INT NOT NULL
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> desc employee;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| employeeId | int         | NO   | PRI | NULL    |       |
| name       | varchar(50) | NO   |     | NULL    |       |
| department | varchar(50) | NO   |     | NULL    |       |
| salary     | int         | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.02 sec)

mysql> INSERT INTO employee (employeeId, name, department, salary)
    -> VALUES
    -> (1, 'John', 'HR', 50000),
    -> (2, 'Alice', 'IT', 70000),
    -> (3, 'Bob', 'Finance', 60000),
    -> (4, 'David', 'Marketing', 55000),
    -> (5, 'Emma', 'Sales', 65000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------------+-------+------------+--------+
| employeeId | name  | department | salary |
+------------+-------+------------+--------+
|          1 | John  | HR         |  50000 |
|          2 | Alice | IT         |  70000 |
|          3 | Bob   | Finance    |  60000 |
|          4 | David | Marketing  |  55000 |
|          5 | Emma  | Sales      |  65000 |
+------------+-------+------------+--------+
5 rows in set (0.00 sec)

mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE getEmployeeDetails()
    -> BEGIN
    ->     SELECT * FROM employee;
    -> END //
Query OK, 0 rows affected (0.02 sec)

mysql>
mysql> DELIMITER ;
mysql> CALL getEmployeeDetails();
+------------+-------+------------+--------+
| employeeId | name  | department | salary |
+------------+-------+------------+--------+
|          1 | John  | HR         |  50000 |
|          2 | Alice | IT         |  70000 |
|          3 | Bob   | Finance    |  60000 |
|          4 | David | Marketing  |  55000 |
|          5 | Emma  | Sales      |  65000 |
+------------+-------+------------+--------+
5 rows in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> delimiter //
mysql> create procedure getempdepartment1(in name varchar(10))
    -> begin
    -> select * from employee where department = name;
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> DELIMITER ;
mysql> call getempdepartment1('IT');
+------------+-------+------------+--------+
| employeeId | name  | department | salary |
+------------+-------+------------+--------+
|          2 | Alice | IT         |  70000 |
+------------+-------+------------+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> delimiter //
mysql> create procedure getempcount(out total int)
    -> begin
    -> select count(*) into total
    -> from employee;
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> delimiter ;
mysql> call getempcount(@total);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT @total;
+--------+
| @total |
+--------+
|      5 |
+--------+
1 row in set (0.00 sec)
mysql> delimiter //
mysql> create procedure addemp(in employeeid int, in name varchar(50),in department varchar(50),in salary int)
    -> begin
    -> insert into employee values (employeeid,name,department,salary);
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> delimiter ;
mysql> call addemp(106,'Viraj','IT',100000);
ERROR 1062 (23000): Duplicate entry '106' for key 'employee.PRIMARY'
mysql> call addemp(7,'Niraj','IT',200000);
Query OK, 1 row affected (0.01 sec)

mysql> select * from employee;
+------------+-------+------------+--------+
| employeeId | name  | department | salary |
+------------+-------+------------+--------+
|          0 |       |            |      0 |
|          1 | John  | HR         |  50000 |
|          2 | Alice | IT         |  70000 |
|          3 | Bob   | Finance    |  60000 |
|          4 | David | Marketing  |  55000 |
|          5 | Emma  | Sales      |  65000 |
|          7 | Niraj | IT         | 200000 |
+------------+-------+------------+--------+
8 rows in set (0.00 sec)
