mysql> CREATE DATABASE bankdb;
Query OK, 1 row affected (0.11 sec)

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
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
12 rows in set (0.03 sec)

mysql> use bankdb;
Database changed
mysql> create table BankAccount(account_id varchar(20) primary key,account_holder_name varchar(50) not null ,account_balance int );
Query OK, 0 rows affected (0.09 sec)

mysql> show tables;
+------------------+
| Tables_in_bankdb |
+------------------+
| bankaccount      |
+------------------+
1 row in set (0.01 sec)

mysql> desc bankaccount;
+---------------------+-------------+------+-----+---------+-------+
| Field               | Type        | Null | Key | Default | Extra |
+---------------------+-------------+------+-----+---------+-------+
| account_id          | varchar(20) | NO   | PRI | NULL    |       |
| account_holder_name | varchar(50) | NO   |     | NULL    |       |
| account_balance     | int         | YES  |     | NULL    |       |
+---------------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> INSERT INTO BankAccount VALUES
    -> (101, 'Rahul Sharma', 45000),
    -> (102, 'Priya Patel', 25000),
    -> (103, 'Amit Kumar', 60000),
    -> (104, 'Neha Singh', 35000),
    -> (105, 'Vikas Gupta', 28000)
    -> ^C
mysql> INSERT INTO BankAccount VALUES
    -> (101, 'Suraj Patil', 45000),
    -> (102, 'Viraj Khandekar', 25000),
    -> (103, 'Bunty Bhoir', 60000),
    -> (104, 'Sunny Sagre', 35000),
    -> (105, 'Gitesh Naik', 28000)
    -> ;
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from Bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | Suraj Patil         |           45000 |
| 102        | Viraj Khandekar     |           25000 |
| 103        | Bunty Bhoir         |           60000 |
| 104        | Sunny Sagre         |           35000 |
| 105        | Gitesh Naik         |           28000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> select account_holder_name,account_balance from Bankaccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Suraj Patil         |           45000 |
| Viraj Khandekar     |           25000 |
| Bunty Bhoir         |           60000 |
| Sunny Sagre         |           35000 |
| Gitesh Naik         |           28000 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> select account_holder_name,account_balance from Bankaccount where account_balance>30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Suraj Patil         |           45000 |
| Bunty Bhoir         |           60000 |
| Sunny Sagre         |           35000 |
+---------------------+-----------------+
3 rows in set (0.00 sec)

mysql> update bankaccount set account_balance=50000 where account_id=101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from Bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | Suraj Patil         |           50000 |
| 102        | Viraj Khandekar     |           25000 |
| 103        | Bunty Bhoir         |           60000 |
| 104        | Sunny Sagre         |           35000 |
| 105        | Gitesh Naik         |           28000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)
