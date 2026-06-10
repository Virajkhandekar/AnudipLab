
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
11 rows in set (0.08 sec)

mysql> use customer;
Database changed
mysql> select * from employee_details;
ERROR 1146 (42S02): Table 'customer.employee_details' doesn't exist
mysql> use e_commerce;
Database changed
mysql> select * from employee_details;
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

mysql> select * from employee_details o;
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

mysql> select * from employee_details order by salary ;
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

mysql> select * from employee_details order by salary desc;
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

mysql> select * from employee_details order by salary desc limit 2;
+------------+--------------+--------+
| employeeID | employeeName | salary |
+------------+--------------+--------+
|        103 | Amit Kumar   |  60000 |
|        105 | Vikas Gupta  |  55000 |
+------------+--------------+--------+
2 rows in set (0.00 sec)

mysql> select * from employee_details order by salary desc limit 1;
+------------+--------------+--------+
| employeeID | employeeName | salary |
+------------+--------------+--------+
|        103 | Amit Kumar   |  60000 |
+------------+--------------+--------+
1 row in set (0.00 sec)

mysql> select * from employee_details order by salary desc limit 4;
+------------+--------------+--------+
| employeeID | employeeName | salary |
+------------+--------------+--------+
|        103 | Amit Kumar   |  60000 |
|        105 | Vikas Gupta  |  55000 |
|        102 | Priya Patel  |  52000 |
|        104 | Neha Singh   |  48000 |
+------------+--------------+--------+
4 rows in set (0.00 sec)

mysql> select * from employee_details order by salary asc limit  4;
+------------+--------------+--------+
| employeeID | employeeName | salary |
+------------+--------------+--------+
|        101 | Rahul Sharma |  45000 |
|        104 | Neha Singh   |  48000 |
|        102 | Priya Patel  |  52000 |
|        105 | Vikas Gupta  |  55000 |
+------------+--------------+--------+
4 rows in set (0.00 sec)

mysql> select * from employee_details order by salary asc limit  2;
+------------+--------------+--------+
| employeeID | employeeName | salary |
+------------+--------------+--------+
|        101 | Rahul Sharma |  45000 |
|        104 | Neha Singh   |  48000 |
+------------+--------------+--------+
2 rows in set (0.00 sec)

mysql> use customer;
Database changed
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


mysql> use studentmangementsystem;
ERROR 1049 (42000): Unknown database 'studentmangementsystem'
mysql> use studentmanagementsystem;
Database changed
mysql> show tables;
+-----------------------------------+
| Tables_in_studentmanagementsystem |
+-----------------------------------+
| feedback                          |
| student                           |
+-----------------------------------+
2 rows in set (0.01 sec)

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
5 rows in set (0.02 sec)


mysql> use studentmanagementsystem;
Database changed
mysql> use studentmanagementsystem;
Database changed
mysql> select distinct address from student;
+---------+
| address |
+---------+
| Thane   |
| kalyan  |
| Kalwa   |
| Mulund  |
| Bhandup |
+---------+
5 rows in set (0.01 sec)

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

mysql> use e_commerce;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| employee_details     |
| order_details        |
| product              |
+----------------------+
4 rows in set (0.00 sec)

mysql> use e_commerce;
Database changed
mysql> select * from customer;
+-------------+--------------+----------+---------------------------+-------------+-------------------------+----------+
| customer_id | name         | city     | email                     | phone_no    | address                 | pin_code |
+-------------+--------------+----------+---------------------------+-------------+-------------------------+----------+
| c101        | viraj        | bhiwandi | khandekarviraj5@gmail.com | 9322420518  | shree siddhivinayak apt |   421302 |
| c102        | Nitya Modi   | bhiwandi | niyamodi08@gmail.com      | 932596643   | shree siddhivinayak apt |   421302 |
| c103        | chumya patil | thane    | chumya08@gmail.com        | 93222400510 | shree siddhivinayak apt |   421302 |
| c104        | bunty patil  | thane    | patilll08@gmail.com       | 90522400510 | shree siddhivinayak apt |   421302 |
| c105        | sager bhoir  | thane    | sagarbb@gmail.com         | 93222400555 | shree siddhivinayak apt |   421302 |
+-------------+--------------+----------+---------------------------+-------------+-------------------------+----------+
5 rows in set (0.02 sec)

mysql> select * from customer where customer_id between 'c102' and 'c104';
+-------------+--------------+----------+----------------------+-------------+-------------------------+----------+
| customer_id | name         | city     | email                | phone_no    | address                 | pin_code |
+-------------+--------------+----------+----------------------+-------------+-------------------------+----------+
| c102        | Nitya Modi   | bhiwandi | niyamodi08@gmail.com | 932596643   | shree siddhivinayak apt |   421302 |
| c103        | chumya patil | thane    | chumya08@gmail.com   | 93222400510 | shree siddhivinayak apt |   421302 |
| c104        | bunty patil  | thane    | patilll08@gmail.com  | 90522400510 | shree siddhivinayak apt |   421302 |
+-------------+--------------+----------+----------------------+-------------+-------------------------+----------+
3 rows in set (0.00 sec)

mysql> select * from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|       10 | c103        | p103       |       25 |      250000 | cash         | 2026-06-06 00:00:00 | shipping     |
|      101 | c102        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c103        | p103       |       25 |      250000 | cash         | 2026-06-06 00:00:00 | shipping     |
|      103 | c104        | p104       |       28 |      250000 | cash         | 2026-06-06 00:00:00 | shipping     |
|      104 | c105        | p105       |       30 |      250000 | check        | 2026-06-06 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.01 sec)

mysql> select * from customer where customer_id not between 'c102' and 'c104';
+-------------+-------------+----------+---------------------------+-------------+-------------------------+----------+
| customer_id | name        | city     | email                     | phone_no    | address                 | pin_code |
+-------------+-------------+----------+---------------------------+-------------+-------------------------+----------+
| c101        | viraj       | bhiwandi | khandekarviraj5@gmail.com | 9322420518  | shree siddhivinayak apt |   421302 |
| c105        | sager bhoir | thane    | sagarbb@gmail.com         | 93222400555 | shree siddhivinayak apt |   421302 |
+-------------+-------------+----------+---------------------------+-------------+-------------------------+----------+
2 rows in set (0.00 sec)

mysql> select distinct city from customer;
+----------+
| city     |
+----------+
| bhiwandi |
| thane    |
+----------+
2 rows in set (0.00 sec)

mysql> select * from customer where customer_id in('c102','c105');
+-------------+-------------+----------+----------------------+-------------+-------------------------+----------+
| customer_id | name        | city     | email                | phone_no    | address                 | pin_code |
+-------------+-------------+----------+----------------------+-------------+-------------------------+----------+
| c102        | Nitya Modi  | bhiwandi | niyamodi08@gmail.com | 932596643   | shree siddhivinayak apt |   421302 |
| c105        | sager bhoir | thane    | sagarbb@gmail.com    | 93222400555 | shree siddhivinayak apt |   421302 |
+-------------+-------------+----------+----------------------+-------------+-------------------------+----------+
2 rows in set (0.00 sec)

mysql> select * from customer where customer_id not in('c102','c105');
+-------------+--------------+----------+---------------------------+-------------+-------------------------+----------+
| customer_id | name         | city     | email                     | phone_no    | address                 | pin_code |
+-------------+--------------+----------+---------------------------+-------------+-------------------------+----------+
| c101        | viraj        | bhiwandi | khandekarviraj5@gmail.com | 9322420518  | shree siddhivinayak apt |   421302 |
| c103        | chumya patil | thane    | chumya08@gmail.com        | 93222400510 | shree siddhivinayak apt |   421302 |
| c104        | bunty patil  | thane    | patilll08@gmail.com       | 90522400510 | shree siddhivinayak apt |   421302 |
+-------------+--------------+----------+---------------------------+-------------+-------------------------+----------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_id is null;
Empty set (0.00 sec)

mysql> select * from customer where customer_id is not null;
+-------------+--------------+----------+---------------------------+-------------+-------------------------+----------+
| customer_id | name         | city     | email                     | phone_no    | address                 | pin_code |
+-------------+--------------+----------+---------------------------+-------------+-------------------------+----------+
| c101        | viraj        | bhiwandi | khandekarviraj5@gmail.com | 9322420518  | shree siddhivinayak apt |   421302 |
| c102        | Nitya Modi   | bhiwandi | niyamodi08@gmail.com      | 932596643   | shree siddhivinayak apt |   421302 |
| c103        | chumya patil | thane    | chumya08@gmail.com        | 93222400510 | shree siddhivinayak apt |   421302 |
| c104        | bunty patil  | thane    | patilll08@gmail.com       | 90522400510 | shree siddhivinayak apt |   421302 |
| c105        | sager bhoir  | thane    | sagarbb@gmail.com         | 93222400555 | shree siddhivinayak apt |   421302 |
+-------------+--------------+----------+---------------------------+-------------+-------------------------+----------+
5 rows in set (0.00 sec)


mysql> select * from customer where city='thane'or address='shree siddhivinayak apt' is not null;
+-------------+--------------+----------+---------------------------+-------------+-------------------------+----------+
| customer_id | name         | city     | email                     | phone_no    | address                 | pin_code |
+-------------+--------------+----------+---------------------------+-------------+-------------------------+----------+
| c101        | viraj        | bhiwandi | khandekarviraj5@gmail.com | 9322420518  | shree siddhivinayak apt |   421302 |
| c102        | Nitya Modi   | bhiwandi | niyamodi08@gmail.com      | 932596643   | shree siddhivinayak apt |   421302 |
| c103        | chumya patil | thane    | chumya08@gmail.com        | 93222400510 | shree siddhivinayak apt |   421302 |
| c104        | bunty patil  | thane    | patilll08@gmail.com       | 90522400510 | shree siddhivinayak apt |   421302 |
| c105        | sager bhoir  | thane    | sagarbb@gmail.com         | 93222400555 | shree siddhivinayak apt |   421302 |
+-------------+--------------+----------+---------------------------+-------------+-------------------------+----------+
5 rows in set (0.00 sec)

mysql> select distinct city from customer;
+----------+
| city     |
+----------+
| bhiwandi |
| thane    |
+----------+
2 rows in set (0.00 sec)