ezh@ezh-VirtualBox:~/linux_lessons/docker_phpmyadmin$ mysql -u root -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 12
Server version: 8.0.19 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| example            |
| from_dump_db       |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| vk                 |
+--------------------+
7 rows in set (0,01 sec)

mysql> use vk;
Database changed
mysql>
mysql> mysql> show tables;
+---------------------+
| Tables_in_vk        |
+---------------------+
| communities         |
| communities_users   |
| friendship          |
| friendship_statuses |
| media               |
| media_types         |
| messages            |
| profiles            |
| users               |
+---------------------+
9 rows in set (0,00 sec)

mysql>
mysql> describe table communities;
+----+-------------+-------------+------------+-------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table       | partitions | type  | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+-------------+------------+-------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | communities | NULL       | index | NULL          | name | 602     | NULL |    1 |   100.00 | Using index |
+----+-------------+-------------+------------+-------+---------------+------+---------+------+------+----------+-------------+
1 row in set, 1 warning (0,01 sec)

mysql> describe table users;
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------+
| id | select_type | table | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra |
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------+
|  1 | SIMPLE      | users | NULL       | ALL  | NULL          | NULL | NULL    | NULL |    1 |   100.00 | NULL  |
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------+
1 row in set, 1 warning (0,01 sec)
mysql> exit

------сгенерировал данные на сайте http://filldb.info

ezh@ezh-VirtualBox:~/linux_lessons/docker_phpmyadmin$ mysql vk < fulldb_vk_31-03-2020.sql

ezh@ezh-VirtualBox:~/linux_lessons/docker_phpmyadmin$ mysql -u root -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 15
Server version: 8.0.19 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| example            |
| from_dump_db       |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| vk                 |
+--------------------+
7 rows in set (0,01 sec)

mysql> use vk;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+---------------------+
| Tables_in_vk        |
+---------------------+
| communities         |
| communities_users   |
| friendship          |
| friendship_statuses |
| media               |
| media_types         |
| messages            |
| profiles            |
| users               |
+---------------------+
9 rows in set (0,00 sec)

mysql>
mysql> SELECT * FROM users LIMIT 15;
+----+------------+---------------+------------------------------+----------------------+---------------------+---------------------+
| id | first_name | last_name     | email                        | phone                | created_at          | updated_at          |
+----+------------+---------------+------------------------------+----------------------+---------------------+---------------------+
|  1 | Simone     | Beahan        | daija95@example.net          | 1-489-319-0469       | 2010-11-09 17:22:15 | 2010-11-03 18:21:26 |
|  2 | Toney      | Halvorson     | madalyn19@example.com        | (511)917-5824x845    | 2011-03-10 19:36:02 | 2012-02-20 15:19:03 |
|  3 | Annamarie  | Johns         | karina.mraz@example.org      | 1-654-985-9044x6548  | 2011-01-23 19:50:19 | 2019-03-04 12:50:05 |
|  4 | Katlyn     | Ritchie       | kautzer.carmine@example.org  | (094)748-1529        | 2011-11-14 04:56:36 | 2019-02-20 20:13:41 |
|  5 | Beaulah    | Bernier       | addison.eichmann@example.com | 06910389543          | 2019-11-13 23:46:41 | 2010-05-08 19:36:42 |
|  6 | Dustin     | Little        | morgan93@example.com         | 1-602-423-6963x13800 | 2013-11-15 15:25:48 | 2011-10-13 10:15:40 |
|  7 | Julien     | Beier         | khagenes@example.com         | (392)470-0934        | 2018-08-15 22:11:02 | 2015-01-21 13:55:39 |
|  8 | Ebony      | Pollich       | blesch@example.org           | (891)374-9639x3322   | 2011-05-11 01:50:59 | 2015-03-04 15:45:45 |
|  9 | Maryjane   | Koss          | vivien.vonrueden@example.org | 918.887.1313         | 2010-05-18 17:53:55 | 2019-03-13 18:35:44 |
| 10 | Cordie     | Raynor        | jorge95@example.org          | 301-038-6485x6910    | 2018-10-22 08:34:39 | 2018-06-01 11:09:14 |
| 11 | Drew       | Runolfsdottir | mason70@example.org          | (989)669-8230        | 2018-07-21 18:41:25 | 2019-04-02 02:41:01 |
| 12 | Gabrielle  | Swift         | felicity36@example.org       | +74(2)1054959248     | 2012-05-18 04:12:30 | 2016-07-01 11:50:17 |
| 13 | Beau       | Spencer       | sierra20@example.com         | (886)989-8134        | 2011-01-19 04:50:57 | 2014-09-20 11:06:38 |
| 14 | Kristy     | Reichel       | cortez10@example.net         | 194.503.8123x12092   | 2014-05-28 01:06:39 | 2017-11-02 06:47:43 |
| 15 | Unique     | Willms        | o'connell.felipe@example.com | +75(5)8093650210     | 2013-05-18 00:22:28 | 2013-03-08 20:30:28 |
+----+------------+---------------+------------------------------+----------------------+---------------------+---------------------+
15 rows in set (0,00 sec)

mysql> select * from profiles limit 15
    -> ;
+---------+--------+------------+--------------------+-----------------------------+----------+---------------------+---------------------+
| user_id | gender | birthday   | city               | country                     | photo_id | created_at          | updated_at          |
+---------+--------+------------+--------------------+-----------------------------+----------+---------------------+---------------------+
|       1 | f      | 2011-05-19 | Port Shemarstad    | Falkland Islands (Malvinas) |        1 | 1993-03-15 15:59:17 | 1985-03-30 12:12:50 |
|       2 | f      | 1971-04-10 | Port Kiarabury     | Sri Lanka                   |        2 | 1978-06-12 10:31:35 | 2013-03-28 02:03:06 |
|       3 | m      | 1999-03-01 | North Maida        | Uganda                      |        3 | 2011-06-12 10:00:38 | 2009-09-05 20:59:20 |
|       4 | f      | 2014-03-25 | South Shayna       | Mayotte                     |        4 | 1987-04-24 17:49:22 | 1978-11-15 12:30:43 |
|       5 | f      | 1997-08-27 | Dejonland          | Jordan                      |        5 | 2012-01-02 23:52:54 | 2018-04-09 01:10:00 |
|       6 | m      | 2002-08-03 | New Rosie          | Zambia                      |        6 | 1981-11-14 11:33:03 | 1992-08-28 17:59:04 |
|       7 | m      | 1982-11-14 | Volkmanview        | Kazakhstan                  |        7 | 1998-01-01 21:28:19 | 1983-09-15 11:18:54 |
|       8 | f      | 2001-12-27 | East Ciara         | Oman                        |        8 | 1990-06-09 17:44:04 | 1990-01-28 20:10:33 |
|       9 | m      | 1983-11-29 | East Gwendolynland | Nicaragua                   |        9 | 1993-04-21 04:51:17 | 2013-03-13 16:41:30 |
|      10 | f      | 1979-08-27 | South Rae          | Tuvalu                      |       10 | 1986-05-05 10:44:18 | 2010-11-15 14:29:22 |
|      11 | m      | 2017-03-25 | East Brendanhaven  | New Zealand                 |       11 | 1972-03-20 00:29:44 | 2013-11-25 20:03:55 |
|      12 | f      | 1990-07-21 | Stehrfurt          | Bangladesh                  |       12 | 2020-03-26 17:25:03 | 1996-12-14 17:44:35 |
|      13 | m      | 1989-05-25 | Otiliastad         | Chad                        |       13 | 2018-06-11 20:57:56 | 2015-10-04 02:54:18 |
|      14 | f      | 1996-07-08 | Heathcotechester   | Ghana                       |       14 | 1991-03-16 02:32:26 | 1978-03-24 01:49:23 |
|      15 | m      | 2015-06-08 | East Lenny         | Azerbaijan                  |       15 | 2009-06-07 20:18:07 | 2000-05-15 12:16:48 |
+---------+--------+------------+--------------------+-----------------------------+----------+---------------------+---------------------+
15 rows in set (0,00 sec)

mysql>
mysql> select * from messages limit 5;
+----+--------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------+--------------+---------------------+
| id | from_user_id | to_user_id | body                                                                                                                                                                                    | is_important | is_delivered | created_at          |
+----+--------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------+--------------+---------------------+
|  1 |            1 |          1 | Rerum rerum cum excepturi eius. Est dolorem illo recusandae exercitationem est non. Aliquid omnis voluptas veritatis nihil et qui. Quis eum nihil doloremque aliquam quam.              |            1 |            1 | 1975-01-09 15:08:56 |
|  2 |            2 |          2 | Et consequatur pariatur perferendis fugiat nulla. Tempora sequi quibusdam reiciendis eum dignissimos ullam quis. Ipsa et deleniti voluptatem perspiciatis magni debitis ut dignissimos. |            1 |            0 | 2006-06-05 09:49:41 |
|  3 |            3 |          3 | Dicta molestiae rerum sed a reiciendis quia quia. Repellat dolorem ex quia eos quae dolorum nobis. Beatae incidunt et iusto.                                                            |            0 |            0 | 2001-03-28 15:39:10 |
|  4 |            4 |          4 | Officia harum corporis neque tenetur sint. Qui eius rerum quis esse.                                                                                                                    |            0 |            0 | 1988-05-30 00:38:33 |
|  5 |            5 |          5 | Distinctio ratione ab excepturi eius. Quod qui sit minus omnis. Consequatur dignissimos eaque asperiores quia doloremque. Mollitia consequatur quia est et quaerat.                     |            0 |            0 | 1995-07-04 06:00:13 |
+----+--------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------+--------------+---------------------+
5 rows in set (0,00 sec)

mysql>
mysql> select * from media limit 10;
+----+---------------+---------+-----------+------+----------+---------------------+---------------------+
| id | media_type_id | user_id | file_path | size | metadata | created_at          | updated_at          |
+----+---------------+---------+-----------+------+----------+---------------------+---------------------+
|  1 |             1 |       1 |           |  356 | NULL     | 1980-03-17 07:10:08 | 2008-06-24 19:08:45 |
|  2 |             2 |       2 |           |  425 | NULL     | 1998-07-03 00:12:23 | 2018-11-18 06:07:43 |
|  3 |             3 |       3 |           |  894 | NULL     | 1997-11-16 16:05:17 | 1972-06-14 11:09:54 |
|  4 |             4 |       4 |           |  389 | NULL     | 1975-08-31 09:06:19 | 1984-05-20 02:25:59 |
|  5 |             5 |       5 |           |  872 | NULL     | 1971-12-23 05:24:35 | 1985-09-09 14:14:50 |
|  6 |             6 |       6 |           |  438 | NULL     | 2003-01-12 21:32:20 | 1984-05-30 21:08:01 |
|  7 |             7 |       7 |           |  208 | NULL     | 1970-04-29 14:09:53 | 1986-02-07 07:26:18 |
|  8 |             8 |       8 |           |  164 | NULL     | 2017-01-23 15:41:37 | 2012-09-30 15:41:28 |
|  9 |             9 |       9 |           |  641 | NULL     | 1974-11-18 20:36:21 | 2009-08-06 06:55:48 |
| 10 |            10 |      10 |           |  712 | NULL     | 1991-02-22 19:16:01 | 2017-02-03 05:51:57 |
+----+---------------+---------+-----------+------+----------+---------------------+---------------------+
10 rows in set (0,00 sec)

mysql>
mysql> select * from media_types limit 10;
+----+------+
| id | name |
+----+------+
| 77 | 1    |
| 38 | 10   |
| 82 | 100  |
| 13 | 11   |
| 54 | 12   |
|  7 | 13   |
| 81 | 14   |
| 66 | 15   |
| 76 | 16   |
| 16 | 17   |
+----+------+
10 rows in set (0,00 sec)

mysql>
mysql> select * from friendship limit 10;
+---------+-----------+-----------+---------------------+---------------------+
| user_id | friend_id | status_id | requested_at        | confirmed_at        |
+---------+-----------+-----------+---------------------+---------------------+
|       1 |         1 |         1 | 2013-06-10 11:46:16 | 1986-11-22 14:04:15 |
|       2 |         2 |         2 | 1991-07-08 15:25:02 | 1970-06-01 05:43:23 |
|       3 |         3 |         3 | 1992-12-25 08:44:23 | 1998-12-26 11:17:57 |
|       4 |         4 |         4 | 2014-11-15 19:21:22 | 1992-03-10 13:42:32 |
|       5 |         5 |         1 | 1994-09-26 10:40:31 | 1981-09-19 11:05:02 |
|       6 |         6 |         2 | 2005-03-02 00:44:29 | 1985-02-25 17:25:19 |
|       7 |         7 |         3 | 1984-08-09 12:11:20 | 1994-08-29 16:01:51 |
|       8 |         8 |         4 | 2019-06-30 04:18:49 | 1996-08-10 11:09:54 |
|       9 |         9 |         1 | 1989-07-30 05:59:38 | 1997-02-18 17:37:54 |
|      10 |        10 |         2 | 1980-01-14 12:43:44 | 2005-12-19 15:19:06 |
+---------+-----------+-----------+---------------------+---------------------+
10 rows in set (0,00 sec)

mysql> select * from friendship_statuses limit 10;
+----+--------------------+
| id | name               |
+----+--------------------+
|  2 | accepted           |
|  3 | friendship request |
|  1 | pending            |
|  4 | rejected           |
+----+--------------------+
4 rows in set (0,00 sec)

mysql>
mysql> select * from communities;
+----+--------+
| id | name   |
+----+--------+
|  1 | group1 |
|  4 | group2 |
|  3 | group3 |
|  2 | group4 |
+----+--------+
4 rows in set (0,00 sec)

mysql> select * from communities_users limit 15;
+--------------+---------+
| community_id | user_id |
+--------------+---------+
|            1 |       1 |
|            1 |       5 |
|            1 |       9 |
|            1 |      13 |
|            1 |      17 |
|            1 |      21 |
|            1 |      25 |
|            1 |      29 |
|            1 |      33 |
|            1 |      37 |
|            1 |      41 |
|            1 |      45 |
|            1 |      49 |
|            1 |      53 |
|            1 |      57 |
+--------------+---------+
15 rows in set (0,00 sec)

mysql>


