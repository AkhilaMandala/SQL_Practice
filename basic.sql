MySQL Shell 8.0.44

Copyright (c) 2016, 2025, Oracle and/or its affiliates.
Oracle is a registered trademark of Oracle Corporation and/or its affiliates.
Other names may be trademarks of their respective owners.

Type '\help' or '\?' for help; '\quit' to exit.
 MySQL  JS > \connect root@localhhost
Creating a session to 'root@localhhost'
Please provide the password for 'root@localhhost': ************
MySQL Error 2005: No such host is known 'localhhost'
 MySQL  JS > \connect root@localhost
Creating a session to 'root@localhost'
Please provide the password for 'root@localhost': ************
Save password for 'root@localhost'? [Y]es/[N]o/Ne[v]er (default No): y
Fetching schema names for auto-completion... Press ^C to stop.
Your MySQL connection id is 13 (X protocol)
Server version: 8.0.43 MySQL Community Server - GPL
No default schema selected; type \use <schema> to set one.
 MySQL  localhost:33060+ ssl  JS > \sql
Switching to SQL mode... Commands end with ;
Fetching global names for auto-completion... Press ^C to stop.
 MySQL  localhost:33060+ ssl  SQL > show databases;
+--------------------+
| Database           |
+--------------------+
| employee           |
| information_schema |
| learning           |
| mysql              |
| performance_schema |
| student            |
| sys                |
+--------------------+
7 rows in set (0.0228 sec)
 MySQL  localhost:33060+ ssl  SQL > use student;
Default schema set to `student`.
Fetching global names, object names from `student` for auto-completion... Press ^C to stop.
 MySQL  localhost:33060+ ssl  student  SQL > show tables;
+-------------------+
| Tables_in_student |
+-------------------+
| employee          |
| studentinfo       |
+-------------------+
2 rows in set (0.0025 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee;
+-----+---------+--------+------------+------------+
| eid | ename   | salary | mobile     | dept       |
+-----+---------+--------+------------+------------+
|   1 | Akhila  |  45000 | 9908370913 | IT         |
|   2 | Akshaya |  56000 | 9908312345 | Electrical |
|   3 | Akhil   |  45000 | 8973270913 | HR         |
|   4 | Ankith  |  30000 | 9908312234 | Admin      |
|   5 | Suresh  |  45000 | 8973275513 | Admin      |
|   6 | Manohar |  30000 | 9908355555 | HR         |
|   7 | Pavani  |  30000 | 6673270913 | HR         |
|   8 | Kala    |  45000 | 9778312234 | IT         |
|   9 | Amul    |  35000 | 8974440913 | HR         |
|  10 | Ram     |  50000 | 9908312333 | IT         |
|  11 | Likith  |  45000 | 8966270913 | HR         |
|  12 | Ramya   |  35000 | 8808312234 | Admin      |
+-----+---------+--------+------------+------------+
12 rows in set (0.0222 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee where dept='IT';
+-----+--------+--------+------------+------+
| eid | ename  | salary | mobile     | dept |
+-----+--------+--------+------------+------+
|   1 | Akhila |  45000 | 9908370913 | IT   |
|   8 | Kala   |  45000 | 9778312234 | IT   |
|  10 | Ram    |  50000 | 9908312333 | IT   |
+-----+--------+--------+------------+------+
3 rows in set (0.0011 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee where not dept='IT';
+-----+---------+--------+------------+------------+
| eid | ename   | salary | mobile     | dept       |
+-----+---------+--------+------------+------------+
|   2 | Akshaya |  56000 | 9908312345 | Electrical |
|   3 | Akhil   |  45000 | 8973270913 | HR         |
|   4 | Ankith  |  30000 | 9908312234 | Admin      |
|   5 | Suresh  |  45000 | 8973275513 | Admin      |
|   6 | Manohar |  30000 | 9908355555 | HR         |
|   7 | Pavani  |  30000 | 6673270913 | HR         |
|   9 | Amul    |  35000 | 8974440913 | HR         |
|  11 | Likith  |  45000 | 8966270913 | HR         |
|  12 | Ramya   |  35000 | 8808312234 | Admin      |
+-----+---------+--------+------------+------------+
9 rows in set (0.0200 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee where salary>=35000;
+-----+---------+--------+------------+------------+
| eid | ename   | salary | mobile     | dept       |
+-----+---------+--------+------------+------------+
|   1 | Akhila  |  45000 | 9908370913 | IT         |
|   2 | Akshaya |  56000 | 9908312345 | Electrical |
|   3 | Akhil   |  45000 | 8973270913 | HR         |
|   5 | Suresh  |  45000 | 8973275513 | Admin      |
|   8 | Kala    |  45000 | 9778312234 | IT         |
|   9 | Amul    |  35000 | 8974440913 | HR         |
|  10 | Ram     |  50000 | 9908312333 | IT         |
|  11 | Likith  |  45000 | 8966270913 | HR         |
|  12 | Ramya   |  35000 | 8808312234 | Admin      |
+-----+---------+--------+------------+------------+
9 rows in set (0.0010 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee where salary<=35000;
+-----+---------+--------+------------+-------+
| eid | ename   | salary | mobile     | dept  |
+-----+---------+--------+------------+-------+
|   4 | Ankith  |  30000 | 9908312234 | Admin |
|   6 | Manohar |  30000 | 9908355555 | HR    |
|   7 | Pavani  |  30000 | 6673270913 | HR    |
|   9 | Amul    |  35000 | 8974440913 | HR    |
|  12 | Ramya   |  35000 | 8808312234 | Admin |
+-----+---------+--------+------------+-------+
5 rows in set (0.0011 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee where salary!=35000;
+-----+---------+--------+------------+------------+
| eid | ename   | salary | mobile     | dept       |
+-----+---------+--------+------------+------------+
|   1 | Akhila  |  45000 | 9908370913 | IT         |
|   2 | Akshaya |  56000 | 9908312345 | Electrical |
|   3 | Akhil   |  45000 | 8973270913 | HR         |
|   4 | Ankith  |  30000 | 9908312234 | Admin      |
|   5 | Suresh  |  45000 | 8973275513 | Admin      |
|   6 | Manohar |  30000 | 9908355555 | HR         |
|   7 | Pavani  |  30000 | 6673270913 | HR         |
|   8 | Kala    |  45000 | 9778312234 | IT         |
|  10 | Ram     |  50000 | 9908312333 | IT         |
|  11 | Likith  |  45000 | 8966270913 | HR         |
+-----+---------+--------+------------+------------+
10 rows in set (0.0011 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee where salary==35000;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '==35000' at line 1
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee where salary=35000;
+-----+-------+--------+------------+-------+
| eid | ename | salary | mobile     | dept  |
+-----+-------+--------+------------+-------+
|   9 | Amul  |  35000 | 8974440913 | HR    |
|  12 | Ramya |  35000 | 8808312234 | Admin |
+-----+-------+--------+------------+-------+
2 rows in set (0.0010 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select ename from employee where salary>45000 and salary<60;
Empty set (0.0021 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select ename from employee where salary>45000 and salary<60000;
+---------+
| ename   |
+---------+
| Akshaya |
| Ram     |
+---------+
2 rows in set (0.0009 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee where salary salary between 45000 and 60000;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'salary between 45000 and 60000' at line 1
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee where salary between 45000 and 60000;
+-----+---------+--------+------------+------------+
| eid | ename   | salary | mobile     | dept       |
+-----+---------+--------+------------+------------+
|   1 | Akhila  |  45000 | 9908370913 | IT         |
|   2 | Akshaya |  56000 | 9908312345 | Electrical |
|   3 | Akhil   |  45000 | 8973270913 | HR         |
|   5 | Suresh  |  45000 | 8973275513 | Admin      |
|   8 | Kala    |  45000 | 9778312234 | IT         |
|  10 | Ram     |  50000 | 9908312333 | IT         |
|  11 | Likith  |  45000 | 8966270913 | HR         |
+-----+---------+--------+------------+------------+
7 rows in set (0.0207 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee where salary between 45000 or 60000;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'or 60000' at line 1
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee where eid in(1,2,3,4,5);
+-----+---------+--------+------------+------------+
| eid | ename   | salary | mobile     | dept       |
+-----+---------+--------+------------+------------+
|   1 | Akhila  |  45000 | 9908370913 | IT         |
|   2 | Akshaya |  56000 | 9908312345 | Electrical |
|   3 | Akhil   |  45000 | 8973270913 | HR         |
|   4 | Ankith  |  30000 | 9908312234 | Admin      |
|   5 | Suresh  |  45000 | 8973275513 | Admin      |
+-----+---------+--------+------------+------------+
5 rows in set (0.0019 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee where eid not in(1,2,3,4,5);
+-----+---------+--------+------------+-------+
| eid | ename   | salary | mobile     | dept  |
+-----+---------+--------+------------+-------+
|   6 | Manohar |  30000 | 9908355555 | HR    |
|   7 | Pavani  |  30000 | 6673270913 | HR    |
|   8 | Kala    |  45000 | 9778312234 | IT    |
|   9 | Amul    |  35000 | 8974440913 | HR    |
|  10 | Ram     |  50000 | 9908312333 | IT    |
|  11 | Likith  |  45000 | 8966270913 | HR    |
|  12 | Ramya   |  35000 | 8808312234 | Admin |
+-----+---------+--------+------------+-------+
7 rows in set (0.0012 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee order by salary;
+-----+---------+--------+------------+------------+
| eid | ename   | salary | mobile     | dept       |
+-----+---------+--------+------------+------------+
|   4 | Ankith  |  30000 | 9908312234 | Admin      |
|   6 | Manohar |  30000 | 9908355555 | HR         |
|   7 | Pavani  |  30000 | 6673270913 | HR         |
|   9 | Amul    |  35000 | 8974440913 | HR         |
|  12 | Ramya   |  35000 | 8808312234 | Admin      |
|   1 | Akhila  |  45000 | 9908370913 | IT         |
|   3 | Akhil   |  45000 | 8973270913 | HR         |
|   5 | Suresh  |  45000 | 8973275513 | Admin      |
|   8 | Kala    |  45000 | 9778312234 | IT         |
|  11 | Likith  |  45000 | 8966270913 | HR         |
|  10 | Ram     |  50000 | 9908312333 | IT         |
|   2 | Akshaya |  56000 | 9908312345 | Electrical |
+-----+---------+--------+------------+------------+
12 rows in set (0.0194 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee order by salary asc;
+-----+---------+--------+------------+------------+
| eid | ename   | salary | mobile     | dept       |
+-----+---------+--------+------------+------------+
|   4 | Ankith  |  30000 | 9908312234 | Admin      |
|   6 | Manohar |  30000 | 9908355555 | HR         |
|   7 | Pavani  |  30000 | 6673270913 | HR         |
|   9 | Amul    |  35000 | 8974440913 | HR         |
|  12 | Ramya   |  35000 | 8808312234 | Admin      |
|   1 | Akhila  |  45000 | 9908370913 | IT         |
|   3 | Akhil   |  45000 | 8973270913 | HR         |
|   5 | Suresh  |  45000 | 8973275513 | Admin      |
|   8 | Kala    |  45000 | 9778312234 | IT         |
|  11 | Likith  |  45000 | 8966270913 | HR         |
|  10 | Ram     |  50000 | 9908312333 | IT         |
|   2 | Akshaya |  56000 | 9908312345 | Electrical |
+-----+---------+--------+------------+------------+
12 rows in set (0.0051 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee order by salary desc;
+-----+---------+--------+------------+------------+
| eid | ename   | salary | mobile     | dept       |
+-----+---------+--------+------------+------------+
|   2 | Akshaya |  56000 | 9908312345 | Electrical |
|  10 | Ram     |  50000 | 9908312333 | IT         |
|   1 | Akhila  |  45000 | 9908370913 | IT         |
|   3 | Akhil   |  45000 | 8973270913 | HR         |
|   5 | Suresh  |  45000 | 8973275513 | Admin      |
|   8 | Kala    |  45000 | 9778312234 | IT         |
|  11 | Likith  |  45000 | 8966270913 | HR         |
|   9 | Amul    |  35000 | 8974440913 | HR         |
|  12 | Ramya   |  35000 | 8808312234 | Admin      |
|   4 | Ankith  |  30000 | 9908312234 | Admin      |
|   6 | Manohar |  30000 | 9908355555 | HR         |
|   7 | Pavani  |  30000 | 6673270913 | HR         |
+-----+---------+--------+------------+------------+
12 rows in set (0.0012 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee order by salary desc limit(5);
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(5)' at line 1
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee order by salary desc limit 5;
+-----+---------+--------+------------+------------+
| eid | ename   | salary | mobile     | dept       |
+-----+---------+--------+------------+------------+
|   2 | Akshaya |  56000 | 9908312345 | Electrical |
|  10 | Ram     |  50000 | 9908312333 | IT         |
|   1 | Akhila  |  45000 | 9908370913 | IT         |
|   3 | Akhil   |  45000 | 8973270913 | HR         |
|   5 | Suresh  |  45000 | 8973275513 | Admin      |
+-----+---------+--------+------------+------------+
5 rows in set (0.0012 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee order by salary desc limit 4 offset 5;
+-----+--------+--------+------------+-------+
| eid | ename  | salary | mobile     | dept  |
+-----+--------+--------+------------+-------+
|   8 | Kala   |  45000 | 9778312234 | IT    |
|  11 | Likith |  45000 | 8966270913 | HR    |
|   9 | Amul   |  35000 | 8974440913 | HR    |
|  12 | Ramya  |  35000 | 8808312234 | Admin |
+-----+--------+--------+------------+-------+
4 rows in set (0.0011 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee;
+-----+---------+--------+------------+------------+
| eid | ename   | salary | mobile     | dept       |
+-----+---------+--------+------------+------------+
|   1 | Akhila  |  45000 | 9908370913 | IT         |
|   2 | Akshaya |  56000 | 9908312345 | Electrical |
|   3 | Akhil   |  45000 | 8973270913 | HR         |
|   4 | Ankith  |  30000 | 9908312234 | Admin      |
|   5 | Suresh  |  45000 | 8973275513 | Admin      |
|   6 | Manohar |  30000 | 9908355555 | HR         |
|   7 | Pavani  |  30000 | 6673270913 | HR         |
|   8 | Kala    |  45000 | 9778312234 | IT         |
|   9 | Amul    |  35000 | 8974440913 | HR         |
|  10 | Ram     |  50000 | 9908312333 | IT         |
|  11 | Likith  |  45000 | 8966270913 | HR         |
|  12 | Ramya   |  35000 | 8808312234 | Admin      |
+-----+---------+--------+------------+------------+
12 rows in set (0.0021 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee order by salary desc limit 1 offset 1;
+-----+-------+--------+------------+------+
| eid | ename | salary | mobile     | dept |
+-----+-------+--------+------------+------+
|  10 | Ram   |  50000 | 9908312333 | IT   |
+-----+-------+--------+------------+------+
1 row in set (0.0012 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee order by salary asc limit 1 offset 2;
+-----+--------+--------+------------+-------+
| eid | ename  | salary | mobile     | dept  |
+-----+--------+--------+------------+-------+
|   4 | Ankith |  30000 | 9908312234 | Admin |
+-----+--------+--------+------------+-------+
1 row in set (0.0012 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select dept,count(*) as department from employee group by dept;
+------------+------------+
| dept       | department |
+------------+------------+
| IT         |          3 |
| Electrical |          1 |
| HR         |          5 |
| Admin      |          3 |
+------------+------------+
4 rows in set (0.0025 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select dept,count(*) as dp from employee group by dept having dp=1;
+------------+----+
| dept       | dp |
+------------+----+
| Electrical |  1 |
+------------+----+
1 row in set (0.0199 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select distinct dept from employee;
+------------+
| dept       |
+------------+
| IT         |
| Electrical |
| HR         |
| Admin      |
+------------+
4 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee where ename like "%a";
+-----+---------+--------+------------+------------+
| eid | ename   | salary | mobile     | dept       |
+-----+---------+--------+------------+------------+
|   1 | Akhila  |  45000 | 9908370913 | IT         |
|   2 | Akshaya |  56000 | 9908312345 | Electrical |
|   8 | Kala    |  45000 | 9778312234 | IT         |
|  12 | Ramya   |  35000 | 8808312234 | Admin      |
+-----+---------+--------+------------+------------+
4 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee where ename like "%a%";
+-----+---------+--------+------------+------------+
| eid | ename   | salary | mobile     | dept       |
+-----+---------+--------+------------+------------+
|   1 | Akhila  |  45000 | 9908370913 | IT         |
|   2 | Akshaya |  56000 | 9908312345 | Electrical |
|   3 | Akhil   |  45000 | 8973270913 | HR         |
|   4 | Ankith  |  30000 | 9908312234 | Admin      |
|   6 | Manohar |  30000 | 9908355555 | HR         |
|   7 | Pavani  |  30000 | 6673270913 | HR         |
|   8 | Kala    |  45000 | 9778312234 | IT         |
|   9 | Amul    |  35000 | 8974440913 | HR         |
|  10 | Ram     |  50000 | 9908312333 | IT         |
|  12 | Ramya   |  35000 | 8808312234 | Admin      |
+-----+---------+--------+------------+------------+
10 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee where ename like "a%";
+-----+---------+--------+------------+------------+
| eid | ename   | salary | mobile     | dept       |
+-----+---------+--------+------------+------------+
|   1 | Akhila  |  45000 | 9908370913 | IT         |
|   2 | Akshaya |  56000 | 9908312345 | Electrical |
|   3 | Akhil   |  45000 | 8973270913 | HR         |
|   4 | Ankith  |  30000 | 9908312234 | Admin      |
|   9 | Amul    |  35000 | 8974440913 | HR         |
+-----+---------+--------+------------+------------+
5 rows in set (0.0013 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee where ename like "_a%";
+-----+---------+--------+------------+-------+
| eid | ename   | salary | mobile     | dept  |
+-----+---------+--------+------------+-------+
|   6 | Manohar |  30000 | 9908355555 | HR    |
|   7 | Pavani  |  30000 | 6673270913 | HR    |
|   8 | Kala    |  45000 | 9778312234 | IT    |
|  10 | Ram     |  50000 | 9908312333 | IT    |
|  12 | Ramya   |  35000 | 8808312234 | Admin |
+-----+---------+--------+------------+-------+
5 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  student  SQL > select * from employee where ename like "_____";
+-----+-------+--------+------------+-------+
| eid | ename | salary | mobile     | dept  |
+-----+-------+--------+------------+-------+
|   3 | Akhil |  45000 | 8973270913 | HR    |
|  12 | Ramya |  35000 | 8808312234 | Admin |
+-----+-------+--------+------------+-------+
2 rows in set (0.0012 sec)
 MySQL  localhost:33060+ ssl  student  SQL >


