mysql> create database joins;
Query OK, 1 row affected (0.06 sec)

mysql> use joins
Database changed
mysql> create table department(department_id int not null primary key,department_name varchar(30) not null);
Query OK, 0 rows affected (0.05 sec)

mysql> desc department
    -> ;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| department_id   | int         | NO   | PRI | NULL    |       |
| department_name | varchar(30) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.02 sec)

mysql> insert into department values(1,'HR'),(2,'IT'),(3,'Finanace),(4,'Marketing);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Marketing)' at line 1
mysql> insert into department values(1,'HR'),(2,'IT'),(3,'Finanace),(4,'Marketing');
    '> ;
    '> ^C
mysql> insert into department values(1,'HR'),(2,'IT'),(3,'Finanace'),(4,'Marketing');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from departments;
ERROR 1146 (42S02): Table 'joins.departments' doesn't exist
mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finanace        |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> CREATE TABLE employee (employeeId INT PRIMARY KEY NOT NULL, employee_name VARCHAR(30) NOT NULL, department_id INT, FOREIGN KEY (department_id) REFERENCES department(department_id));
Query OK, 0 rows affected (0.07 sec)

mysql> desc employe
    -> ;
ERROR 1146 (42S02): Table 'joins.employe' doesn't exist
mysql> desc employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employeeId    | int         | NO   | PRI | NULL    |       |
| employee_name | varchar(30) | NO   |     | NULL    |       |
| department_id | int         | YES  | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> INSERT INTO employee VALUES (1,'Rohan',1),(2,'Mohan',2),(3,'Riya',1),(4,'Roshan',NULL),(5,'Krishna',4);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------------+---------------+---------------+
| employeeId | employee_name | department_id |
+------------+---------------+---------------+
|          1 | Rohan         |             1 |
|          2 | Mohan         |             2 |
|          3 | Riya          |             1 |
|          4 | Roshan        |          NULL |
|          5 | Krishna       |             4 |
+------------+---------------+---------------+
5 rows in set (0.00 sec)

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finanace        |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.01 sec)

mysql> selcet employee_name,department_name from employee inner join departmenmt on employee.department_id=department.department_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'selcet employee_name,department_name from employee inner join departmenmt on emp' at line 1
mysql> select employee_name,department_name from employee inner join departmenmt on employee.department_id=department.department_id;
ERROR 1146 (42S02): Table 'joins.departmenmt' doesn't exist
mysql> select employee_name,department_name from employee inner join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rohan         | HR              |
| Riya          | HR              |
| Mohan         | IT              |
| Krishna       | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee left join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rohan         | HR              |
| Mohan         | IT              |
| Riya          | HR              |
| Roshan        | NULL            |
| Krishna       | Marketing       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finanace        |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select * from employee;
+------------+---------------+---------------+
| employeeId | employee_name | department_id |
+------------+---------------+---------------+
|          1 | Rohan         |             1 |
|          2 | Mohan         |             2 |
|          3 | Riya          |             1 |
|          4 | Roshan        |          NULL |
|          5 | Krishna       |             4 |
+------------+---------------+---------------+
5 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee right join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rohan         | HR              |
| Riya          | HR              |
| Mohan         | IT              |
| NULL          | Finanace        |
| Krishna       | Marketing       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee cross join department;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rohan         | Marketing       |
| Rohan         | Finanace        |
| Rohan         | IT              |
| Rohan         | HR              |
| Mohan         | Marketing       |
| Mohan         | Finanace        |
| Mohan         | IT              |
| Mohan         | HR              |
| Riya          | Marketing       |
| Riya          | Finanace        |
| Riya          | IT              |
| Riya          | HR              |
| Roshan        | Marketing       |
| Roshan        | Finanace        |
| Roshan        | IT              |
| Roshan        | HR              |
| Krishna       | Marketing       |
| Krishna       | Finanace        |
| Krishna       | IT              |
| Krishna       | HR              |
+---------------+-----------------+
20 rows in set (0.01 sec)

mysql> select employee_name,department_name from employee left outer' join department on employee.department_id=department.department_id;
    '>
    '> ;
    '> ^X^C
mysql> select employee_name,department_name from employee left outer join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rohan         | HR              |
| Mohan         | IT              |
| Riya          | HR              |
| Roshan        | NULL            |
| Krishna       | Marketing       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee right outer join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rohan         | HR              |
| Riya          | HR              |
| Mohan         | IT              |
| NULL          | Finanace        |
| Krishna       | Marketing       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee right  join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rohan         | HR              |
| Riya          | HR              |
| Mohan         | IT              |
| NULL          | Finanace        |
| Krishna       | Marketing       |
+---------------+-----------------+
5 rows in set (0.00 sec)


mysql> select employee_name,department_name from employee right  join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rohan         | HR              |
| Riya          | HR              |
| Mohan         | IT              |
| NULL          | Finanace        |
| Krishna       | Marketing       |
+---------------+-----------------+
5 rows in set (0.00 sec)
