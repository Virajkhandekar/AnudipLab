mysql> SHOW DATABASES;
+-------------------------+
| Database                |
+-------------------------+
| attendance_db           |
| attendx                 |
| bankdb                  |
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
12 rows in set (0.23 sec)

mysql> USE e_commerce;
Database changed
mysql> SELECT * FROM employee_details;
+------------+--------------+--------+
| employeeID | employeeName | salary |
+------------+--------------+--------+
|        101 | Rahul Sharma |  45000 |
|        102 | Priya Patel  |  52000 |
|        103 | Amit Kumar   |  60000 |
|        104 | Neha Singh   |  48000 |
|        105 | Vikas Gupta  |  55000 |
+------------+--------------+--------+
5 rows in set (0.03 sec)

mysql> SELECT *
    -> FROM employee_details
    -> WHERE employeeSalary > 60000;
ERROR 1054 (42S22): Unknown column 'employeeSalary' in 'where clause'
mysql> FROM employee_details
    -> WHERE Salary > 60000;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM employee_details
WHERE Salary > 60000' at line 1
mysql> SELECT * From employee_details where salary>60000;
Empty set (0.00 sec)

mysql> SELECT * From employee_details where salary>50000;
+------------+--------------+--------+
| employeeID | employeeName | salary |
+------------+--------------+--------+
|        102 | Priya Patel  |  52000 |
|        103 | Amit Kumar   |  60000 |
|        105 | Vikas Gupta  |  55000 |
+------------+--------------+--------+
3 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM employee
    -> ORDER BY Salary DESC;
ERROR 1146 (42S02): Table 'e_commerce.employee' doesn't exist
mysql> SELECT *
    -> FROM employee_details
    -> ORDER BY Salary DESC;
+------------+--------------+--------+
| employeeID | employeeName | salary |
+------------+--------------+--------+
|        103 | Amit Kumar   |  60000 |
|        105 | Vikas Gupta  |  55000 |
|        102 | Priya Patel  |  52000 |
|        104 | Neha Singh   |  48000 |
|        101 | Rahul Sharma |  45000 |
+------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM employee_details
    -> ORDER BY Salary ;
+------------+--------------+--------+
| employeeID | employeeName | salary |
+------------+--------------+--------+
|        101 | Rahul Sharma |  45000 |
|        104 | Neha Singh   |  48000 |
|        102 | Priya Patel  |  52000 |
|        105 | Vikas Gupta  |  55000 |
|        103 | Amit Kumar   |  60000 |
+------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|       10 | c103        | p103       |       25 |      250000 | cash         | 2026-06-06 00:00:00 | shipping     |
|      101 | c102        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c103        | p103       |       25 |      250000 | cash         | 2026-06-06 00:00:00 | shipping     |
|      103 | c104        | p104       |       28 |      250000 | cash         | 2026-06-06 00:00:00 | shipping     |
|      104 | c105        | p105       |       30 |      250000 | check        | 2026-06-06 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.02 sec)

mysql> CREATE TABLE orders (
    ->     order_id INT PRIMARY KEY,
    ->     department VARCHAR(50) NOT NULL,
    ->     amount DOUBLE NOT NULL
    -> );
Query OK, 0 rows affected (0.09 sec)

mysql> INSERT INTO orders
    -> VALUES
    -> (1, 'sales', 1000),
    -> (2, 'sales', 1500),
    -> (3, 'HR', 800);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM orders;
+----------+------------+--------+
| order_id | department | amount |
+----------+------------+--------+
|        1 | sales      |   1000 |
|        2 | sales      |   1500 |
|        3 | HR         |    800 |
+----------+------------+--------+
3 rows in set (0.00 sec)

mysql> SELECT department,
    ->        SUM(amount) AS total_amount
    -> FROM orders
    -> GROUP BY department;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         2500 |
| HR         |          800 |
+------------+--------------+
2 rows in set (0.00 sec)

mysql> SELECT department,
    ->        AVG(amount) AS total_amount
    -> FROM orders
    -> GROUP BY department;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         1250 |
| HR         |          800 |
+------------+--------------+
2 rows in set (0.00 sec)

mysql> SELECT department,
    ->        SUM(amount) AS total_amount
    -> FROM orders
    -> GROUP BY department
    -> HAVING SUM(amount) > 1000;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         2500 |
+------------+--------------+
1 row in set (0.01 sec)

mysql> CREATE TABLE employee_details1 (
    ->     employee_id INT NOT NULL,
    ->     name VARCHAR(50) NOT NULL,
    ->     department VARCHAR(50) NOT NULL,
    ->     salary DOUBLE NOT NULL
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO employee_details1
    -> VALUES
    -> (1, 'Anjali Singh', 'HR', 6000),
    -> (2, 'Vikas Gupta', 'IT', 12000),
    -> (3, 'Pooja Mehta', 'Finance', 9000),
    -> (4, 'Karan Shah', 'Sales', 7000),
    -> (5, 'Nikita Rao', 'Marketing', 8000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM employee_details1;
+-------------+--------------+------------+--------+
| employee_id | name         | department | salary |
+-------------+--------------+------------+--------+
|           1 | Anjali Singh | HR         |   6000 |
|           2 | Vikas Gupta  | IT         |  12000 |
|           3 | Pooja Mehta  | Finance    |   9000 |
|           4 | Karan Shah   | Sales      |   7000 |
|           5 | Nikita Rao   | Marketing  |   8000 |
+-------------+--------------+------------+--------+
5 rows in set (0.00 sec)

mysql> SELECT department,
    ->        COUNT(*) AS total_employee
    -> FROM employee_details1
    -> GROUP BY department;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |              1 |
| IT         |              1 |
| Finance    |              1 |
| Sales      |              1 |
| Marketing  |              1 |
+------------+----------------+
5 rows in set (0.00 sec)

mysql> SELECT department,
    ->        SUM(salary) AS total_salary
    -> FROM employee_details1
    -> GROUP BY department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |         6000 |
| IT         |        12000 |
| Finance    |         9000 |
| Sales      |         7000 |
| Marketing  |         8000 |
+------------+--------------+
5 rows in set (0.00 sec)

mysql> SELECT department,
    ->        AVG(salary) AS total_avg
    -> FROM employee_details1
    -> GROUP BY department;
+------------+-----------+
| department | total_avg |
+------------+-----------+
| HR         |      6000 |
| IT         |     12000 |
| Finance    |      9000 |
| Sales      |      7000 |
| Marketing  |      8000 |
+------------+-----------+
5 rows in set (0.00 sec)

mysql> SELECT department,
    ->        salary,
    ->        COUNT(*)
    -> FROM employee_details1
    -> GROUP BY department, salary;
+------------+--------+----------+
| department | salary | COUNT(*) |
+------------+--------+----------+
| HR         |   6000 |        1 |
| IT         |  12000 |        1 |
| Finance    |   9000 |        1 |
| Sales      |   7000 |        1 |
| Marketing  |   8000 |        1 |
+------------+--------+----------+
5 rows in set (0.00 sec)

mysql> SELECT department,
    ->        COUNT(*) AS total
    -> FROM employee_details1
    -> GROUP BY department
    -> HAVING COUNT(*) > 1;
Empty set (0.00 sec)

mysql> SELECT department,
    ->        COUNT(*) AS total
    -> FROM employee_details1
    -> GROUP BY department
    -> HAVING COUNT(*) <= 1;
+------------+-------+
| department | total |
+------------+-------+
| HR         |     1 |
| IT         |     1 |
| Finance    |     1 |
| Sales      |     1 |
| Marketing  |     1 |
+------------+-------+
5 rows in set (0.00 sec)

mysql>