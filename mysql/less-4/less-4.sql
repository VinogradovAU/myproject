mysql> UPDATE users SET phone = CONCAT("8-",FLOOR(100 + (RAND() * 899)),"-",FLOOR(100 + (RAND() * 899)),"-",FLOOR(10 + (RAND() * 89)),"-",FLOOR(10 + (RAND() * 89)));
Query OK, 100 rows affected (0,02 sec)
Rows matched: 100  Changed: 100  Warnings: 0

mysql> select * from users limit 10                                                                                                                                     -> ;
+----+------------+-----------+------------------------------+-----------------+---------------------+---------------------+
| id | first_name | last_name | email                        | phone           | created_at          | updated_at          |
+----+------------+-----------+------------------------------+-----------------+---------------------+---------------------+
|  1 | Simone     | Beahan    | daija95@example.net          | 8-790-974-59-87 | 2010-11-09 17:22:15 | 2020-04-01 23:40:07 |
|  2 | Toney      | Halvorson | madalyn19@example.com        | 8-718-837-13-75 | 2011-03-10 19:36:02 | 2020-04-01 23:40:07 |
|  3 | Annamarie  | Johns     | karina.mraz@example.org      | 8-585-556-91-16 | 2011-01-23 19:50:19 | 2020-04-01 23:40:07 |
|  4 | Katlyn     | Ritchie   | kautzer.carmine@example.org  | 8-637-799-18-22 | 2011-11-14 04:56:36 | 2020-04-01 23:40:07 |
|  5 | Beaulah    | Bernier   | addison.eichmann@example.com | 8-455-614-69-67 | 2019-11-13 23:46:41 | 2020-04-01 23:40:07 |
|  6 | Dustin     | Little    | morgan93@example.com         | 8-313-307-49-56 | 2013-11-15 15:25:48 | 2020-04-01 23:40:07 |
|  7 | Julien     | Beier     | khagenes@example.com         | 8-375-954-84-37 | 2018-08-15 22:11:02 | 2020-04-01 23:40:07 |
|  8 | Ebony      | Pollich   | blesch@example.org           | 8-152-421-64-97 | 2011-05-11 01:50:59 | 2020-04-01 23:40:07 |
|  9 | Maryjane   | Koss      | vivien.vonrueden@example.org | 8-193-599-51-68 | 2010-05-18 17:53:55 | 2020-04-01 23:40:07 |
| 10 | Cordie     | Raynor    | jorge95@example.org          | 8-924-634-29-39 | 2018-10-22 08:34:39 | 2020-04-01 23:40:07 |
+----+------------+-----------+------------------------------+-----------------+---------------------+---------------------+
10 rows in set (0,00 sec)

mysql>
mysql> update users set updated_at=DATE_ADD(created_at, INTERVAL +floor(rand()*40000) MINUTE);
Query OK, 100 rows affected (0,00 sec)
Rows matched: 100  Changed: 100  Warnings: 0

mysql> select * from users limit 10;
+----+------------+-----------+------------------------------+-----------------+---------------------+---------------------+
| id | first_name | last_name | email                        | phone           | created_at          | updated_at          |
+----+------------+-----------+------------------------------+-----------------+---------------------+---------------------+
|  1 | Simone     | Beahan    | daija95@example.net          | 8-790-974-59-87 | 2010-11-09 17:22:15 | 2010-12-06 00:12:15 |
|  2 | Toney      | Halvorson | madalyn19@example.com        | 8-718-837-13-75 | 2011-03-10 19:36:02 | 2011-03-14 14:44:02 |
|  3 | Annamarie  | Johns     | karina.mraz@example.org      | 8-585-556-91-16 | 2011-01-23 19:50:19 | 2011-02-16 07:01:19 |
|  4 | Katlyn     | Ritchie   | kautzer.carmine@example.org  | 8-637-799-18-22 | 2011-11-14 04:56:36 | 2011-12-06 19:26:36 |
|  5 | Beaulah    | Bernier   | addison.eichmann@example.com | 8-455-614-69-67 | 2019-11-13 23:46:41 | 2019-11-28 20:04:41 |
|  6 | Dustin     | Little    | morgan93@example.com         | 8-313-307-49-56 | 2013-11-15 15:25:48 | 2013-11-22 01:27:48 |
|  7 | Julien     | Beier     | khagenes@example.com         | 8-375-954-84-37 | 2018-08-15 22:11:02 | 2018-08-31 06:05:02 |
|  8 | Ebony      | Pollich   | blesch@example.org           | 8-152-421-64-97 | 2011-05-11 01:50:59 | 2011-05-12 21:57:59 |
|  9 | Maryjane   | Koss      | vivien.vonrueden@example.org | 8-193-599-51-68 | 2010-05-18 17:53:55 | 2010-06-06 12:06:55 |
| 10 | Cordie     | Raynor    | jorge95@example.org          | 8-924-634-29-39 | 2018-10-22 08:34:39 | 2018-10-27 07:19:39 |
+----+------------+-----------+------------------------------+-----------------+---------------------+---------------------+
10 rows in set (0,00 sec)

mysql>
mysql> select * from profiles limit 10;
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
+---------+--------+------------+--------------------+-----------------------------+----------+---------------------+---------------------+
10 rows in set (0,00 sec)

mysql>
mysql> update profiles set created_at = (select created_at from users where users.id = profiles.user_id);
Query OK, 100 rows affected (0,01 sec)
Rows matched: 100  Changed: 100  Warnings: 0

mysql> select * from profiles limit 10;
+---------+--------+------------+--------------------+-----------------------------+----------+---------------------+---------------------+
| user_id | gender | birthday   | city               | country                     | photo_id | created_at          | updated_at          |
+---------+--------+------------+--------------------+-----------------------------+----------+---------------------+---------------------+
|       1 | f      | 2011-05-19 | Port Shemarstad    | Falkland Islands (Malvinas) |        1 | 2010-11-09 17:22:15 | 2020-04-02 00:43:20 |
|       2 | f      | 1971-04-10 | Port Kiarabury     | Sri Lanka                   |        2 | 2011-03-10 19:36:02 | 2020-04-02 00:43:20 |
|       3 | m      | 1999-03-01 | North Maida        | Uganda                      |        3 | 2011-01-23 19:50:19 | 2020-04-02 00:43:20 |
|       4 | f      | 2014-03-25 | South Shayna       | Mayotte                     |        4 | 2011-11-14 04:56:36 | 2020-04-02 00:43:20 |
|       5 | f      | 1997-08-27 | Dejonland          | Jordan                      |        5 | 2019-11-13 23:46:41 | 2020-04-02 00:43:20 |
|       6 | m      | 2002-08-03 | New Rosie          | Zambia                      |        6 | 2013-11-15 15:25:48 | 2020-04-02 00:43:20 |
|       7 | m      | 1982-11-14 | Volkmanview        | Kazakhstan                  |        7 | 2018-08-15 22:11:02 | 2020-04-02 00:43:20 |
|       8 | f      | 2001-12-27 | East Ciara         | Oman                        |        8 | 2011-05-11 01:50:59 | 2020-04-02 00:43:20 |
|       9 | m      | 1983-11-29 | East Gwendolynland | Nicaragua                   |        9 | 2010-05-18 17:53:55 | 2020-04-02 00:43:20 |
|      10 | f      | 1979-08-27 | South Rae          | Tuvalu                      |       10 | 2018-10-22 08:34:39 | 2020-04-02 00:43:20 |
+---------+--------+------------+--------------------+-----------------------------+----------+---------------------+---------------------+
10 rows in set (0,00 sec)

mysql> select * from users limit 10;
+----+------------+-----------+------------------------------+-----------------+---------------------+---------------------+
| id | first_name | last_name | email                        | phone           | created_at          | updated_at          |
+----+------------+-----------+------------------------------+-----------------+---------------------+---------------------+
|  1 | Simone     | Beahan    | daija95@example.net          | 8-790-974-59-87 | 2010-11-09 17:22:15 | 2010-12-06 00:12:15 |
|  2 | Toney      | Halvorson | madalyn19@example.com        | 8-718-837-13-75 | 2011-03-10 19:36:02 | 2011-03-14 14:44:02 |
|  3 | Annamarie  | Johns     | karina.mraz@example.org      | 8-585-556-91-16 | 2011-01-23 19:50:19 | 2011-02-16 07:01:19 |
|  4 | Katlyn     | Ritchie   | kautzer.carmine@example.org  | 8-637-799-18-22 | 2011-11-14 04:56:36 | 2011-12-06 19:26:36 |
|  5 | Beaulah    | Bernier   | addison.eichmann@example.com | 8-455-614-69-67 | 2019-11-13 23:46:41 | 2019-11-28 20:04:41 |
|  6 | Dustin     | Little    | morgan93@example.com         | 8-313-307-49-56 | 2013-11-15 15:25:48 | 2013-11-22 01:27:48 |
|  7 | Julien     | Beier     | khagenes@example.com         | 8-375-954-84-37 | 2018-08-15 22:11:02 | 2018-08-31 06:05:02 |
|  8 | Ebony      | Pollich   | blesch@example.org           | 8-152-421-64-97 | 2011-05-11 01:50:59 | 2011-05-12 21:57:59 |
|  9 | Maryjane   | Koss      | vivien.vonrueden@example.org | 8-193-599-51-68 | 2010-05-18 17:53:55 | 2010-06-06 12:06:55 |
| 10 | Cordie     | Raynor    | jorge95@example.org          | 8-924-634-29-39 | 2018-10-22 08:34:39 | 2018-10-27 07:19:39 |
+----+------------+-----------+------------------------------+-----------------+---------------------+---------------------+
10 rows in set (0,00 sec)

mysql>update profiles set updated_at=DATE_ADD(created_at, INTERVAL +floor(rand()*20000) MINUTE);
Query OK, 100 rows affected (0,00 sec)
Rows matched: 100  Changed: 100  Warnings: 0

mysql> select * from profiles limit 10;
+---------+--------+------------+--------------------+-----------------------------+----------+---------------------+---------------------+
| user_id | gender | birthday   | city               | country                     | photo_id | created_at          | updated_at          |
+---------+--------+------------+--------------------+-----------------------------+----------+---------------------+---------------------+
|       1 | f      | 2011-05-19 | Port Shemarstad    | Falkland Islands (Malvinas) |        1 | 2010-11-09 17:22:15 | 2010-11-22 15:42:15 |
|       2 | f      | 1971-04-10 | Port Kiarabury     | Sri Lanka                   |        2 | 2011-03-10 19:36:02 | 2011-03-11 11:43:02 |
|       3 | m      | 1999-03-01 | North Maida        | Uganda                      |        3 | 2011-01-23 19:50:19 | 2011-01-30 01:26:19 |
|       4 | f      | 2014-03-25 | South Shayna       | Mayotte                     |        4 | 2011-11-14 04:56:36 | 2011-11-15 13:54:36 |
|       5 | f      | 1997-08-27 | Dejonland          | Jordan                      |        5 | 2019-11-13 23:46:41 | 2019-11-16 01:08:41 |
|       6 | m      | 2002-08-03 | New Rosie          | Zambia                      |        6 | 2013-11-15 15:25:48 | 2013-11-21 19:24:48 |
|       7 | m      | 1982-11-14 | Volkmanview        | Kazakhstan                  |        7 | 2018-08-15 22:11:02 | 2018-08-26 16:42:02 |
|       8 | f      | 2001-12-27 | East Ciara         | Oman                        |        8 | 2011-05-11 01:50:59 | 2011-05-18 15:45:59 |
|       9 | m      | 1983-11-29 | East Gwendolynland | Nicaragua                   |        9 | 2010-05-18 17:53:55 | 2010-05-24 07:56:55 |
|      10 | f      | 1979-08-27 | South Rae          | Tuvalu                      |       10 | 2018-10-22 08:34:39 | 2018-10-27 13:03:39 |
+---------+--------+------------+--------------------+-----------------------------+----------+---------------------+---------------------+
10 rows in set (0,00 sec)

mysql>
mysql> update messages set created_at=DATE_ADD((select created_at from users where users.id = messages.from_user_id),INTERVAL +floor(rand()*40000) MINUTE);
Query OK, 100 rows affected (0,01 sec)
Rows matched: 100  Changed: 100  Warnings: 0

mysql> select * from messages limit 5;
+----+--------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------+--------------+---------------------+
| id | from_user_id | to_user_id | body                                                                                                                                                                                    | is_important | is_delivered | created_at          |
+----+--------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------+--------------+---------------------+
|  1 |            1 |          1 | Rerum rerum cum excepturi eius. Est dolorem illo recusandae exercitationem est non. Aliquid omnis voluptas veritatis nihil et qui. Quis eum nihil doloremque aliquam quam.              |            1 |            1 | 2010-11-20 05:16:15 |
|  2 |            2 |          2 | Et consequatur pariatur perferendis fugiat nulla. Tempora sequi quibusdam reiciendis eum dignissimos ullam quis. Ipsa et deleniti voluptatem perspiciatis magni debitis ut dignissimos. |            1 |            0 | 2011-03-23 09:44:02 |
|  3 |            3 |          3 | Dicta molestiae rerum sed a reiciendis quia quia. Repellat dolorem ex quia eos quae dolorum nobis. Beatae incidunt et iusto.                                                            |            0 |            0 | 2011-01-27 12:09:19 |
|  4 |            4 |          4 | Officia harum corporis neque tenetur sint. Qui eius rerum quis esse.                                                                                                                    |            0 |            0 | 2011-11-22 14:46:36 |
|  5 |            5 |          5 | Distinctio ratione ab excepturi eius. Quod qui sit minus omnis. Consequatur dignissimos eaque asperiores quia doloremque. Mollitia consequatur quia est et quaerat.                     |            0 |            0 | 2019-11-17 05:22:41 |
+----+--------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------+--------------+---------------------+
5 rows in set (0,00 sec)

mysql>
mysql> update messages set from_user_id = floor(1+(rand()*100)), to_user_id = floor(1+(rand()*100));
Query OK, 100 rows affected (0,02 sec)
Rows matched: 100  Changed: 100  Warnings: 0

mysql> select * from messages limit 5;
+----+--------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------+--------------+---------------------+
| id | from_user_id | to_user_id | body                                                                                                                                                                                    | is_important | is_delivered | created_at          |
+----+--------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------+--------------+---------------------+
|  1 |           81 |         34 | Rerum rerum cum excepturi eius. Est dolorem illo recusandae exercitationem est non. Aliquid omnis voluptas veritatis nihil et qui. Quis eum nihil doloremque aliquam quam.              |            1 |            1 | 2010-11-20 05:16:15 |
|  2 |           27 |         32 | Et consequatur pariatur perferendis fugiat nulla. Tempora sequi quibusdam reiciendis eum dignissimos ullam quis. Ipsa et deleniti voluptatem perspiciatis magni debitis ut dignissimos. |            1 |            0 | 2011-03-23 09:44:02 |
|  3 |           77 |         91 | Dicta molestiae rerum sed a reiciendis quia quia. Repellat dolorem ex quia eos quae dolorum nobis. Beatae incidunt et iusto.                                                            |            0 |            0 | 2011-01-27 12:09:19 |
|  4 |           21 |         32 | Officia harum corporis neque tenetur sint. Qui eius rerum quis esse.                                                                                                                    |            0 |            0 | 2011-11-22 14:46:36 |
|  5 |           97 |         86 | Distinctio ratione ab excepturi eius. Quod qui sit minus omnis. Consequatur dignissimos eaque asperiores quia doloremque. Mollitia consequatur quia est et quaerat.                     |            0 |            0 | 2019-11-17 05:22:41 |
+----+--------------+------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------+--------------+---------------------+
5 rows in set (0,00 sec)

mysql>
mysql> select * from media_types;
+-----+------+
| id  | name |
+-----+------+
|  77 | 1    |
|  38 | 10   |
|  82 | 100  |
|  13 | 11   |
|  54 | 12   |
|   7 | 13   |
|  81 | 14   |
|  66 | 15   |
|  76 | 16   |
|  16 | 17   |
|  35 | 18   |
|  65 | 19   |
|  26 | 2    |
|   2 | 20   |
|  67 | 21   |
|  20 | 22   |
|  80 | 23   |
|  39 | 24   |
|  52 | 25   |
|  98 | 26   |
|  15 | 27   |
|  58 | 28   |
|  61 | 29   |
|  25 | 3    |
| 100 | 30   |
|  79 | 31   |
|  71 | 32   |
|  72 | 33   |
|  10 | 34   |
|  24 | 35   |
|  68 | 36   |
|  59 | 37   |
|  49 | 38   |
|  14 | 39   |
|  75 | 4    |
|  57 | 40   |
|  17 | 41   |
|   1 | 42   |
|  31 | 43   |
|  29 | 44   |
|  97 | 45   |
|  32 | 46   |
|  90 | 47   |
|  19 | 48   |
|  62 | 49   |
|  94 | 5    |
|  12 | 50   |
|  91 | 51   |
|  74 | 52   |
|  70 | 53   |
|  11 | 54   |
|  45 | 55   |
|  51 | 56   |
|  99 | 57   |
|  50 | 58   |
|  93 | 59   |
|  84 | 6    |
|  95 | 60   |
|   9 | 61   |
|   3 | 62   |
|  44 | 63   |
|  36 | 64   |
|  88 | 65   |
|  46 | 66   |
|  42 | 67   |
|  43 | 68   |
|  30 | 69   |
|  41 | 7    |
|  63 | 70   |
|  37 | 71   |
|  40 | 72   |
|   5 | 73   |
|  83 | 74   |
|  28 | 75   |
|  73 | 76   |
|  23 | 77   |
|  86 | 78   |
|  21 | 79   |
|  22 | 8    |
|  27 | 80   |
|  87 | 81   |
|  69 | 82   |
|  92 | 83   |
|  48 | 84   |
|  56 | 85   |
|  78 | 86   |
|  18 | 87   |
|  55 | 88   |
|   6 | 89   |
|  34 | 9    |
|   8 | 90   |
|  33 | 91   |
|  96 | 92   |
|  60 | 93   |
|  85 | 94   |
|  89 | 95   |
|  47 | 96   |
|   4 | 97   |
|  53 | 98   |
|  64 | 99   |
+-----+------+
100 rows in set (0,00 sec)

mysql>  delete from media_types;
Query OK, 100 rows affected (0,01 sec)

mysql> select * from media_types;
Empty set (0,00 sec)

mysql>
mysql> insert into media_types (name) VALUES ("audio");
Query OK, 1 row affected (0,00 sec)

mysql> insert into media_types (name) VALUES ("video"),("photo");
Query OK, 2 rows affected (0,01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from media_types;
+-----+-------+
| id  | name  |
+-----+-------+
| 101 | audio |
| 103 | photo |
| 102 | video |
+-----+-------+
3 rows in set (0,00 sec)

mysql>
mysql> update media set media_type_id = floor(101+rand()*3);
Query OK, 70 rows affected (0,00 sec)
Rows matched: 100  Changed: 70  Warnings: 0

mysql> select * from media limit 15;
+----+---------------+---------+-----------+------+----------+---------------------+---------------------+
| id | media_type_id | user_id | file_path | size | metadata | created_at          | updated_at          |
+----+---------------+---------+-----------+------+----------+---------------------+---------------------+
|  1 |           102 |       1 |           |  356 | NULL     | 1980-03-17 07:10:08 | 2020-04-02 01:50:53 |
|  2 |           103 |       2 |           |  425 | NULL     | 1998-07-03 00:12:23 | 2020-04-02 01:52:34 |
|  3 |           102 |       3 |           |  894 | NULL     | 1997-11-16 16:05:17 | 2020-04-02 01:52:34 |
|  4 |           101 |       4 |           |  389 | NULL     | 1975-08-31 09:06:19 | 2020-04-02 01:52:34 |
|  5 |           101 |       5 |           |  872 | NULL     | 1971-12-23 05:24:35 | 2020-04-02 01:50:53 |
|  6 |           101 |       6 |           |  438 | NULL     | 2003-01-12 21:32:20 | 2020-04-02 01:52:34 |
|  7 |           102 |       7 |           |  208 | NULL     | 1970-04-29 14:09:53 | 2020-04-02 01:52:34 |
|  8 |           101 |       8 |           |  164 | NULL     | 2017-01-23 15:41:37 | 2020-04-02 01:50:53 |
|  9 |           103 |       9 |           |  641 | NULL     | 1974-11-18 20:36:21 | 2020-04-02 01:52:34 |
| 10 |           102 |      10 |           |  712 | NULL     | 1991-02-22 19:16:01 | 2020-04-02 01:52:34 |
| 11 |           101 |      11 |           |  500 | NULL     | 2010-09-14 04:02:45 | 2020-04-02 01:52:34 |
| 12 |           102 |      12 |           |  737 | NULL     | 1971-04-30 18:53:40 | 2020-04-02 01:52:34 |
| 13 |           102 |      13 |           |  772 | NULL     | 1990-06-06 04:24:01 | 2020-04-02 01:52:34 |
| 14 |           102 |      14 |           |  300 | NULL     | 2008-08-05 05:24:02 | 2020-04-02 01:52:34 |
| 15 |           102 |      15 |           |   66 | NULL     | 1994-12-08 16:10:01 | 2020-04-02 01:52:34 |
+----+---------------+---------+-----------+------+----------+---------------------+---------------------+
15 rows in set (0,00 sec)

mysql>
mysql> update media set user_id = floor(1+rand()*99);
Query OK, 99 rows affected (0,01 sec)
Rows matched: 100  Changed: 99  Warnings: 0

mysql> select * from media limit 20;
+----+---------------+---------+-----------+------+----------+---------------------+---------------------+
| id | media_type_id | user_id | file_path | size | metadata | created_at          | updated_at          |
+----+---------------+---------+-----------+------+----------+---------------------+---------------------+
|  1 |           102 |      81 |           |  356 | NULL     | 1980-03-17 07:10:08 | 2020-04-02 01:56:29 |
|  2 |           103 |      76 |           |  425 | NULL     | 1998-07-03 00:12:23 | 2020-04-02 01:56:29 |
|  3 |           102 |      40 |           |  894 | NULL     | 1997-11-16 16:05:17 | 2020-04-02 01:56:29 |
|  4 |           101 |      71 |           |  389 | NULL     | 1975-08-31 09:06:19 | 2020-04-02 01:56:29 |
|  5 |           101 |      34 |           |  872 | NULL     | 1971-12-23 05:24:35 | 2020-04-02 01:56:29 |
|  6 |           101 |      55 |           |  438 | NULL     | 2003-01-12 21:32:20 | 2020-04-02 01:56:29 |
|  7 |           102 |      76 |           |  208 | NULL     | 1970-04-29 14:09:53 | 2020-04-02 01:56:29 |
|  8 |           101 |      15 |           |  164 | NULL     | 2017-01-23 15:41:37 | 2020-04-02 01:56:29 |
|  9 |           103 |      43 |           |  641 | NULL     | 1974-11-18 20:36:21 | 2020-04-02 01:56:29 |
| 10 |           102 |      73 |           |  712 | NULL     | 1991-02-22 19:16:01 | 2020-04-02 01:56:29 |
| 11 |           101 |      35 |           |  500 | NULL     | 2010-09-14 04:02:45 | 2020-04-02 01:56:29 |
| 12 |           102 |      55 |           |  737 | NULL     | 1971-04-30 18:53:40 | 2020-04-02 01:56:29 |
| 13 |           102 |      69 |           |  772 | NULL     | 1990-06-06 04:24:01 | 2020-04-02 01:56:29 |
| 14 |           102 |      83 |           |  300 | NULL     | 2008-08-05 05:24:02 | 2020-04-02 01:56:29 |
| 15 |           102 |       8 |           |   66 | NULL     | 1994-12-08 16:10:01 | 2020-04-02 01:56:29 |
| 16 |           102 |      89 |           |  697 | NULL     | 2006-02-23 09:00:19 | 2020-04-02 01:56:29 |
| 17 |           102 |      24 |           |  148 | NULL     | 2009-05-05 05:15:36 | 2020-04-02 01:56:29 |
| 18 |           101 |      50 |           |  352 | NULL     | 2007-01-18 14:00:25 | 2020-04-02 01:56:29 |
| 19 |           101 |      80 |           |  572 | NULL     | 2009-10-31 19:14:15 | 2020-04-02 01:56:29 |
| 20 |           103 |      49 |           |  598 | NULL     | 1984-04-15 07:20:23 | 2020-04-02 01:56:29 |
+----+---------------+---------+-----------+------+----------+---------------------+---------------------+
20 rows in set (0,00 sec)
mysql> update media set file_path = concat("https://dropbox.com/path/to/file_",floor(rand()*20000));
Query OK, 100 rows affected (0,01 sec)
Rows matched: 100  Changed: 100  Warnings: 0

mysql> select * from media limit 10;
+----+---------------+---------+----------------------------------------+------+----------+---------------------+---------------------+
| id | media_type_id | user_id | file_path                              | size | metadata | created_at          | updated_at          |
+----+---------------+---------+----------------------------------------+------+----------+---------------------+---------------------+
|  1 |           102 |      81 | https://dropbox.com/path/to/file_8797  |  356 | NULL     | 1980-03-17 07:10:08 | 2020-04-02 01:59:55 |
|  2 |           103 |      76 | https://dropbox.com/path/to/file_5109  |  425 | NULL     | 1998-07-03 00:12:23 | 2020-04-02 01:59:55 |
|  3 |           102 |      40 | https://dropbox.com/path/to/file_19154 |  894 | NULL     | 1997-11-16 16:05:17 | 2020-04-02 01:59:55 |
|  4 |           101 |      71 | https://dropbox.com/path/to/file_442   |  389 | NULL     | 1975-08-31 09:06:19 | 2020-04-02 01:59:55 |
|  5 |           101 |      34 | https://dropbox.com/path/to/file_4749  |  872 | NULL     | 1971-12-23 05:24:35 | 2020-04-02 01:59:55 |
|  6 |           101 |      55 | https://dropbox.com/path/to/file_2419  |  438 | NULL     | 2003-01-12 21:32:20 | 2020-04-02 01:59:55 |
|  7 |           102 |      76 | https://dropbox.com/path/to/file_17847 |  208 | NULL     | 1970-04-29 14:09:53 | 2020-04-02 01:59:55 |
|  8 |           101 |      15 | https://dropbox.com/path/to/file_1980  |  164 | NULL     | 2017-01-23 15:41:37 | 2020-04-02 01:59:55 |
|  9 |           103 |      43 | https://dropbox.com/path/to/file_16360 |  641 | NULL     | 1974-11-18 20:36:21 | 2020-04-02 01:59:55 |
| 10 |           102 |      73 | https://dropbox.com/path/to/file_15859 |  712 | NULL     | 1991-02-22 19:16:01 | 2020-04-02 01:59:55 |
+----+---------------+---------+----------------------------------------+------+----------+---------------------+---------------------+
10 rows in set (0,00 sec)

mysql>
mysql> update media set size = floor(1024 * rand()*1000);
Query OK, 100 rows affected (0,01 sec)
Rows matched: 100  Changed: 100  Warnings: 0

mysql> select * from media limit 20;
+----+---------------+---------+----------------------------------------+--------+----------+---------------------+---------------------+
| id | media_type_id | user_id | file_path                              | size   | metadata | created_at          | updated_at          |
+----+---------------+---------+----------------------------------------+--------+----------+---------------------+---------------------+
|  1 |           102 |      81 | https://dropbox.com/path/to/file_8797  | 687923 | NULL     | 1980-03-17 07:10:08 | 2020-04-02 02:02:31 |
|  2 |           103 |      76 | https://dropbox.com/path/to/file_5109  | 225891 | NULL     | 1998-07-03 00:12:23 | 2020-04-02 02:02:31 |
|  3 |           102 |      40 | https://dropbox.com/path/to/file_19154 |  89687 | NULL     | 1997-11-16 16:05:17 | 2020-04-02 02:02:31 |
|  4 |           101 |      71 | https://dropbox.com/path/to/file_442   | 794760 | NULL     | 1975-08-31 09:06:19 | 2020-04-02 02:02:31 |
|  5 |           101 |      34 | https://dropbox.com/path/to/file_4749  | 632740 | NULL     | 1971-12-23 05:24:35 | 2020-04-02 02:02:31 |
|  6 |           101 |      55 | https://dropbox.com/path/to/file_2419  | 779420 | NULL     | 2003-01-12 21:32:20 | 2020-04-02 02:02:31 |
|  7 |           102 |      76 | https://dropbox.com/path/to/file_17847 | 974883 | NULL     | 1970-04-29 14:09:53 | 2020-04-02 02:02:31 |
|  8 |           101 |      15 | https://dropbox.com/path/to/file_1980  | 488156 | NULL     | 2017-01-23 15:41:37 | 2020-04-02 02:02:31 |
|  9 |           103 |      43 | https://dropbox.com/path/to/file_16360 | 540129 | NULL     | 1974-11-18 20:36:21 | 2020-04-02 02:02:31 |
| 10 |           102 |      73 | https://dropbox.com/path/to/file_15859 | 212177 | NULL     | 1991-02-22 19:16:01 | 2020-04-02 02:02:31 |
| 11 |           101 |      35 | https://dropbox.com/path/to/file_10217 | 464501 | NULL     | 2010-09-14 04:02:45 | 2020-04-02 02:02:31 |
| 12 |           102 |      55 | https://dropbox.com/path/to/file_3507  | 661975 | NULL     | 1971-04-30 18:53:40 | 2020-04-02 02:02:31 |
| 13 |           102 |      69 | https://dropbox.com/path/to/file_6884  | 892372 | NULL     | 1990-06-06 04:24:01 | 2020-04-02 02:02:31 |
| 14 |           102 |      83 | https://dropbox.com/path/to/file_3902  | 427937 | NULL     | 2008-08-05 05:24:02 | 2020-04-02 02:02:31 |
| 15 |           102 |       8 | https://dropbox.com/path/to/file_18859 | 486566 | NULL     | 1994-12-08 16:10:01 | 2020-04-02 02:02:31 |
| 16 |           102 |      89 | https://dropbox.com/path/to/file_2590  | 125023 | NULL     | 2006-02-23 09:00:19 | 2020-04-02 02:02:31 |
| 17 |           102 |      24 | https://dropbox.com/path/to/file_16373 | 189415 | NULL     | 2009-05-05 05:15:36 | 2020-04-02 02:02:31 |
| 18 |           101 |      50 | https://dropbox.com/path/to/file_14097 | 572009 | NULL     | 2007-01-18 14:00:25 | 2020-04-02 02:02:31 |
| 19 |           101 |      80 | https://dropbox.com/path/to/file_1364  | 243800 | NULL     | 2009-10-31 19:14:15 | 2020-04-02 02:02:31 |
| 20 |           103 |      49 | https://dropbox.com/path/to/file_4532  | 526973 | NULL     | 1984-04-15 07:20:23 | 2020-04-02 02:02:31 |
+----+---------------+---------+----------------------------------------+--------+----------+---------------------+---------------------+
20 rows in set (0,00 sec)


mysql>
mysql> update media set created_at=DATE_ADD((select created_at from users where users.id = media.id),INTERVAL (+floor(rand()*40000)) MINUTE);
Query OK, 100 rows affected (0,01 sec)
Rows matched: 100  Changed: 100  Warnings: 0

mysql> select * from media limit 20;
+----+---------------+---------+----------------------------------------+--------+----------+---------------------+---------------------+
| id | media_type_id | user_id | file_path                              | size   | metadata | created_at          | updated_at          |
+----+---------------+---------+----------------------------------------+--------+----------+---------------------+---------------------+
|  1 |           102 |      81 | https://dropbox.com/path/to/file_8797  | 687923 | NULL     | 2010-11-21 13:50:15 | 2020-04-02 02:05:17 |
|  2 |           103 |      76 | https://dropbox.com/path/to/file_5109  | 225891 | NULL     | 2011-03-19 01:07:02 | 2020-04-02 02:05:17 |
|  3 |           102 |      40 | https://dropbox.com/path/to/file_19154 |  89687 | NULL     | 2011-01-29 10:01:19 | 2020-04-02 02:05:17 |
|  4 |           101 |      71 | https://dropbox.com/path/to/file_442   | 794760 | NULL     | 2011-11-17 11:18:36 | 2020-04-02 02:05:17 |
|  5 |           101 |      34 | https://dropbox.com/path/to/file_4749  | 632740 | NULL     | 2019-12-11 07:43:41 | 2020-04-02 02:05:17 |
|  6 |           101 |      55 | https://dropbox.com/path/to/file_2419  | 779420 | NULL     | 2013-12-01 09:24:48 | 2020-04-02 02:05:17 |
|  7 |           102 |      76 | https://dropbox.com/path/to/file_17847 | 974883 | NULL     | 2018-09-09 10:55:02 | 2020-04-02 02:05:17 |
|  8 |           101 |      15 | https://dropbox.com/path/to/file_1980  | 488156 | NULL     | 2011-05-30 22:13:59 | 2020-04-02 02:05:17 |
|  9 |           103 |      43 | https://dropbox.com/path/to/file_16360 | 540129 | NULL     | 2010-06-13 09:36:55 | 2020-04-02 02:05:17 |
| 10 |           102 |      73 | https://dropbox.com/path/to/file_15859 | 212177 | NULL     | 2018-11-04 12:41:39 | 2020-04-02 02:05:17 |
| 11 |           101 |      35 | https://dropbox.com/path/to/file_10217 | 464501 | NULL     | 2018-08-07 10:48:25 | 2020-04-02 02:05:17 |
| 12 |           102 |      55 | https://dropbox.com/path/to/file_3507  | 661975 | NULL     | 2012-06-03 05:45:30 | 2020-04-02 02:05:17 |
| 13 |           102 |      69 | https://dropbox.com/path/to/file_6884  | 892372 | NULL     | 2011-01-21 17:34:57 | 2020-04-02 02:05:17 |
| 14 |           102 |      83 | https://dropbox.com/path/to/file_3902  | 427937 | NULL     | 2014-06-17 01:30:39 | 2020-04-02 02:05:17 |
| 15 |           102 |       8 | https://dropbox.com/path/to/file_18859 | 486566 | NULL     | 2013-05-27 04:11:28 | 2020-04-02 02:05:17 |
| 16 |           102 |      89 | https://dropbox.com/path/to/file_2590  | 125023 | NULL     | 2017-03-06 04:14:55 | 2020-04-02 02:05:17 |
| 17 |           102 |      24 | https://dropbox.com/path/to/file_16373 | 189415 | NULL     | 2019-05-30 03:13:04 | 2020-04-02 02:05:17 |
| 18 |           101 |      50 | https://dropbox.com/path/to/file_14097 | 572009 | NULL     | 2018-01-29 01:19:12 | 2020-04-02 02:05:17 |
| 19 |           101 |      80 | https://dropbox.com/path/to/file_1364  | 243800 | NULL     | 2014-01-09 04:40:45 | 2020-04-02 02:05:17 |
| 20 |           103 |      49 | https://dropbox.com/path/to/file_4532  | 526973 | NULL     | 2015-02-20 08:13:44 | 2020-04-02 02:05:17 |
+----+---------------+---------+----------------------------------------+--------+----------+---------------------+---------------------+
20 rows in set (0,00 sec)

mysql>
mysql> update media set updated_at=DATE_ADD(created_at,INTERVAL (+floor(rand()*80000)) MINUTE);
Query OK, 100 rows affected (0,01 sec)
Rows matched: 100  Changed: 100  Warnings: 0

mysql> select * from media limit 20;
+----+---------------+---------+----------------------------------------+--------+----------+---------------------+---------------------+
| id | media_type_id | user_id | file_path                              | size   | metadata | created_at          | updated_at          |
+----+---------------+---------+----------------------------------------+--------+----------+---------------------+---------------------+
|  1 |           102 |      81 | https://dropbox.com/path/to/file_8797  | 687923 | NULL     | 2010-11-21 13:50:15 | 2010-12-08 08:18:15 |
|  2 |           103 |      76 | https://dropbox.com/path/to/file_5109  | 225891 | NULL     | 2011-03-19 01:07:02 | 2011-03-31 00:36:02 |
|  3 |           102 |      40 | https://dropbox.com/path/to/file_19154 |  89687 | NULL     | 2011-01-29 10:01:19 | 2011-02-08 00:05:19 |
|  4 |           101 |      71 | https://dropbox.com/path/to/file_442   | 794760 | NULL     | 2011-11-17 11:18:36 | 2011-11-29 11:11:36 |
|  5 |           101 |      34 | https://dropbox.com/path/to/file_4749  | 632740 | NULL     | 2019-12-11 07:43:41 | 2020-01-11 12:55:41 |
|  6 |           101 |      55 | https://dropbox.com/path/to/file_2419  | 779420 | NULL     | 2013-12-01 09:24:48 | 2013-12-10 09:08:48 |
|  7 |           102 |      76 | https://dropbox.com/path/to/file_17847 | 974883 | NULL     | 2018-09-09 10:55:02 | 2018-09-16 07:17:02 |
|  8 |           101 |      15 | https://dropbox.com/path/to/file_1980  | 488156 | NULL     | 2011-05-30 22:13:59 | 2011-06-07 04:52:59 |
|  9 |           103 |      43 | https://dropbox.com/path/to/file_16360 | 540129 | NULL     | 2010-06-13 09:36:55 | 2010-06-29 05:47:55 |
| 10 |           102 |      73 | https://dropbox.com/path/to/file_15859 | 212177 | NULL     | 2018-11-04 12:41:39 | 2018-11-06 08:19:39 |
| 11 |           101 |      35 | https://dropbox.com/path/to/file_10217 | 464501 | NULL     | 2018-08-07 10:48:25 | 2018-08-24 13:46:25 |
| 12 |           102 |      55 | https://dropbox.com/path/to/file_3507  | 661975 | NULL     | 2012-06-03 05:45:30 | 2012-06-27 20:20:30 |
| 13 |           102 |      69 | https://dropbox.com/path/to/file_6884  | 892372 | NULL     | 2011-01-21 17:34:57 | 2011-02-06 20:16:57 |
| 14 |           102 |      83 | https://dropbox.com/path/to/file_3902  | 427937 | NULL     | 2014-06-17 01:30:39 | 2014-06-23 19:15:39 |
| 15 |           102 |       8 | https://dropbox.com/path/to/file_18859 | 486566 | NULL     | 2013-05-27 04:11:28 | 2013-07-07 02:10:28 |
| 16 |           102 |      89 | https://dropbox.com/path/to/file_2590  | 125023 | NULL     | 2017-03-06 04:14:55 | 2017-03-23 20:57:55 |
| 17 |           102 |      24 | https://dropbox.com/path/to/file_16373 | 189415 | NULL     | 2019-05-30 03:13:04 | 2019-06-20 10:11:04 |
| 18 |           101 |      50 | https://dropbox.com/path/to/file_14097 | 572009 | NULL     | 2018-01-29 01:19:12 | 2018-03-23 10:02:12 |
| 19 |           101 |      80 | https://dropbox.com/path/to/file_1364  | 243800 | NULL     | 2014-01-09 04:40:45 | 2014-02-14 11:19:45 |
| 20 |           103 |      49 | https://dropbox.com/path/to/file_4532  | 526973 | NULL     | 2015-02-20 08:13:44 | 2015-03-13 15:20:44 |
+----+---------------+---------+----------------------------------------+--------+----------+---------------------+---------------------+
20 rows in set (0,00 sec)

mysql>
mysql> update media set metadata = concat ('{"owner":"',(select concat(first_name," ",last_name) from users where id = user_id),'"}');
Query OK, 100 rows affected (0,02 sec)
Rows matched: 100  Changed: 100  Warnings: 0

mysql> select * from media limit 10;
+----+---------------+---------+----------------------------------------+--------+----------------------------------+---------------------+---------------------+
| id | media_type_id | user_id | file_path                              | size   | metadata                         | created_at          | updated_at          |
+----+---------------+---------+----------------------------------------+--------+----------------------------------+---------------------+---------------------+
|  1 |           102 |      81 | https://dropbox.com/path/to/file_8797  | 687923 | {"owner":"Lucio Bauch"}          | 2010-11-21 13:50:15 | 2020-04-02 02:14:53 |
|  2 |           103 |      76 | https://dropbox.com/path/to/file_5109  | 225891 | {"owner":"Maximilian Bosco"}     | 2011-03-19 01:07:02 | 2020-04-02 02:14:53 |
|  3 |           102 |      40 | https://dropbox.com/path/to/file_19154 |  89687 | {"owner":"Jonathon Stoltenberg"} | 2011-01-29 10:01:19 | 2020-04-02 02:14:53 |
|  4 |           101 |      71 | https://dropbox.com/path/to/file_442   | 794760 | {"owner":"Aglae Emard"}          | 2011-11-17 11:18:36 | 2020-04-02 02:14:53 |
|  5 |           101 |      34 | https://dropbox.com/path/to/file_4749  | 632740 | {"owner":"Catalina Bogisich"}    | 2019-12-11 07:43:41 | 2020-04-02 02:14:53 |
|  6 |           101 |      55 | https://dropbox.com/path/to/file_2419  | 779420 | {"owner":"Aron Gorczany"}        | 2013-12-01 09:24:48 | 2020-04-02 02:14:53 |
|  7 |           102 |      76 | https://dropbox.com/path/to/file_17847 | 974883 | {"owner":"Maximilian Bosco"}     | 2018-09-09 10:55:02 | 2020-04-02 02:14:53 |
|  8 |           101 |      15 | https://dropbox.com/path/to/file_1980  | 488156 | {"owner":"Unique Willms"}        | 2011-05-30 22:13:59 | 2020-04-02 02:14:53 |
|  9 |           103 |      43 | https://dropbox.com/path/to/file_16360 | 540129 | {"owner":"Catalina Wilkinson"}   | 2010-06-13 09:36:55 | 2020-04-02 02:14:53 |
| 10 |           102 |      73 | https://dropbox.com/path/to/file_15859 | 212177 | {"owner":"Chance Littel"}        | 2018-11-04 12:41:39 | 2020-04-02 02:14:53 |
+----+---------------+---------+----------------------------------------+--------+----------------------------------+---------------------+---------------------+
10 rows in set (0,00 sec)

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

mysql>

mysql> update friendship set user_id=floor(1+rand()*99), friend_id=floor(1+rand()*99);
ERROR 1062 (23000): Duplicate entry '9-49' for key 'friendship.PRIMARY'
mysql> update friendship set user_id=floor(1+rand()*99), friend_id=floor(1+rand()*99);
ERROR 1062 (23000): Duplicate entry '55-41' for key 'friendship.PRIMARY'
mysql> update friendship set user_id=floor(1+rand()*99), friend_id=floor(1+rand()*99);
Query OK, 100 rows affected (0,01 sec)
Rows matched: 100  Changed: 100  Warnings: 0

mysql> select * from friendship limit 15;
+---------+-----------+-----------+---------------------+---------------------+
| user_id | friend_id | status_id | requested_at        | confirmed_at        |
+---------+-----------+-----------+---------------------+---------------------+
|       2 |        42 |         1 | 2001-03-30 21:00:36 | 1970-11-14 23:42:26 |
|       2 |        74 |         4 | 2002-05-04 05:11:36 | 1971-12-28 14:30:24 |
|       3 |        80 |         2 | 1976-12-04 11:01:53 | 2008-11-16 10:08:15 |
|       4 |        23 |         4 | 1988-03-06 15:35:37 | 1974-09-23 06:22:08 |
|       6 |        68 |         3 | 2003-07-28 03:57:42 | 1988-01-27 07:02:04 |
|       6 |        96 |         1 | 2012-01-02 04:01:00 | 1974-04-18 01:43:45 |
|       7 |         6 |         2 | 2001-03-29 23:57:52 | 2000-02-13 12:47:52 |
|       7 |        36 |         2 | 1973-11-15 15:29:29 | 2016-06-02 12:06:05 |
|       7 |        38 |         1 | 2011-05-14 14:57:21 | 1997-06-22 08:38:09 |
|       7 |        40 |         3 | 1982-11-30 22:40:28 | 2004-11-18 08:18:14 |
|       7 |        44 |         1 | 1994-09-29 19:26:33 | 2016-03-03 10:56:53 |
|      10 |        29 |         3 | 2003-10-14 00:31:11 | 1981-02-13 15:37:25 |
|      10 |        78 |         3 | 1995-06-06 04:33:17 | 2002-06-16 06:28:35 |
|      11 |        80 |         2 | 1980-01-14 12:43:44 | 2005-12-19 15:19:06 |
|      13 |        22 |         1 | 1974-11-18 07:21:35 | 1978-02-23 08:14:10 |
+---------+-----------+-----------+---------------------+---------------------+
15 rows in set (0,00 sec)


mysql> update friendship set requested_at=DATE_ADD((select created_at from users where users.id = friendship.user_id),INTERVAL (+floor(rand()*40000)) MINUTE);
Query OK, 100 rows affected (0,01 sec)
Rows matched: 100  Changed: 100  Warnings: 0

mysql> update friendship set confirmed_at=DATE_ADD(requested_at,INTERVAL (+floor(rand()*80000)) MINUTE);
Query OK, 100 rows affected (0,01 sec)
Rows matched: 100  Changed: 100  Warnings: 0

mysql> select * from friendship limit 15;
+---------+-----------+-----------+---------------------+---------------------+
| user_id | friend_id | status_id | requested_at        | confirmed_at        |
+---------+-----------+-----------+---------------------+---------------------+
|       2 |        42 |         1 | 2011-03-17 19:40:02 | 2011-05-04 21:43:02 |
|       2 |        74 |         4 | 2011-03-18 16:13:02 | 2011-03-20 14:00:02 |
|       3 |        80 |         2 | 2011-02-11 02:41:19 | 2011-03-15 01:30:19 |
|       4 |        23 |         4 | 2011-11-26 12:00:36 | 2012-01-08 10:05:36 |
|       6 |        68 |         3 | 2013-11-22 06:13:48 | 2013-11-29 21:32:48 |
|       6 |        96 |         1 | 2013-12-09 14:52:48 | 2013-12-30 03:52:48 |
|       7 |         6 |         2 | 2018-09-01 15:04:02 | 2018-09-25 20:49:02 |
|       7 |        36 |         2 | 2018-08-27 12:17:02 | 2018-08-31 12:40:02 |
|       7 |        38 |         1 | 2018-08-23 18:02:02 | 2018-08-26 16:02:02 |
|       7 |        40 |         3 | 2018-08-20 07:09:02 | 2018-08-22 20:01:02 |
|       7 |        44 |         1 | 2018-09-11 02:07:02 | 2018-09-15 00:28:02 |
|      10 |        29 |         3 | 2018-10-28 22:41:39 | 2018-11-09 23:52:39 |
|      10 |        78 |         3 | 2018-11-01 08:43:39 | 2018-12-19 19:36:39 |
|      11 |        80 |         2 | 2018-07-24 06:24:25 | 2018-09-01 17:15:25 |
|      13 |        22 |         1 | 2011-01-29 09:39:57 | 2011-03-22 07:14:57 |
+---------+-----------+-----------+---------------------+---------------------+
15 rows in set (0,00 sec)

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

mysql> desc communities;
+-------+--------------+------+-----+---------+----------------+
| Field | Type         | Null | Key | Default | Extra          |
+-------+--------------+------+-----+---------+----------------+
| id    | int unsigned | NO   | PRI | NULL    | auto_increment |
| name  | varchar(150) | NO   | UNI | NULL    |                |
+-------+--------------+------+-----+---------+----------------+
2 rows in set (0,00 sec)

mysql> delete from communities;
Query OK, 4 rows affected (0,01 sec)

mysql> select * from communities;
Empty set (0,00 sec)

mysql> insert into communities (name) values ("droup1");
Query OK, 1 row affected (0,01 sec)

mysql> insert into communities (name) values ("droup2");
Query OK, 1 row affected (0,00 sec)

mysql> insert into communities (name) values ("droup3");
Query OK, 1 row affected (0,01 sec)

mysql> insert into communities (name) values ("droup4");
Query OK, 1 row affected (0,01 sec)

mysql> insert into communities (name) values ("droup5");
Query OK, 1 row affected (0,00 sec)

mysql> insert into communities (name) values ("droup6");
Query OK, 1 row affected (0,00 sec)

mysql> insert into communities (name) values ("droup7");
Query OK, 1 row affected (0,01 sec)

mysql> insert into communities (name) values ("droup8");
Query OK, 1 row affected (0,00 sec)

mysql> insert into communities (name) values ("droup9");
Query OK, 1 row affected (0,00 sec)

mysql> insert into communities (name) values ("droup10");
Query OK, 1 row affected (0,00 sec)

mysql> select * from communities;
+----+---------+
| id | name    |
+----+---------+
|  8 | droup1  |
| 17 | droup10 |
|  9 | droup2  |
| 10 | droup3  |
| 11 | droup4  |
| 12 | droup5  |
| 13 | droup6  |
| 14 | droup7  |
| 15 | droup8  |
| 16 | droup9  |
+----+---------+
10 rows in set (0,00 sec)

mysql> select * from communities_users;
+--------------+---------+
| community_id | user_id |
+--------------+---------+
|            1 |       4 |
|            1 |       6 |
|            1 |      12 |
|            1 |      13 |
|            1 |      17 |
|            1 |      19 |
|            1 |      27 |
|            1 |      28 |
|            1 |      29 |
|            1 |      31 |
|            1 |      34 |
|            1 |      35 |
|            1 |      39 |
|            1 |      42 |
|            1 |      43 |
|            1 |      44 |
|            1 |      47 |
|            1 |      50 |
|            1 |      59 |
|            1 |      62 |
|            1 |      63 |
|            1 |      65 |
|            1 |      69 |
|            1 |      70 |
|            1 |      71 |
|            1 |      72 |
|            1 |      74 |
|            1 |      75 |
|            1 |      81 |
|            1 |      86 |
|            1 |      91 |
|            1 |      92 |
|            1 |      94 |
|            1 |      95 |
|            1 |      96 |
|            1 |     100 |
|            2 |       2 |
|            2 |       5 |
|            2 |      10 |
|            2 |      11 |
|            2 |      15 |
|            2 |      16 |
|            2 |      18 |
|            2 |      21 |
|            2 |      22 |
|            2 |      23 |
|            2 |      26 |
|            2 |      33 |
|            2 |      46 |
|            2 |      51 |
|            2 |      52 |
|            2 |      53 |
|            2 |      54 |
|            2 |      60 |
|            2 |      64 |
|            2 |      76 |
|            2 |      79 |
|            2 |      83 |
|            2 |      85 |
|            2 |      89 |
|            2 |      90 |
|            2 |      97 |
|            2 |      99 |
|            3 |       3 |
|            3 |       8 |
|            3 |      25 |
|            3 |      30 |
|            3 |      32 |
|            3 |      36 |
|            3 |      37 |
|            3 |      45 |
|            3 |      48 |
|            3 |      49 |
|            3 |      56 |
|            3 |      61 |
|            3 |      73 |
|            3 |      78 |
|            3 |      82 |
|            3 |      88 |
|            4 |       1 |
|            4 |       7 |
|            4 |       9 |
|            4 |      14 |
|            4 |      20 |
|            4 |      24 |
|            4 |      38 |
|            4 |      40 |
|            4 |      41 |
|            4 |      55 |
|            4 |      57 |
|            4 |      58 |
|            4 |      66 |
|            4 |      67 |
|            4 |      68 |
|            4 |      77 |
|            4 |      80 |
|            4 |      84 |
|            4 |      87 |
|            4 |      93 |
|            4 |      98 |
+--------------+---------+
100 rows in set (0,01 sec)
mysql> update communities_users set community_id = floor(1+rand()*10);
Query OK, 92 rows affected (0,01 sec)
Rows matched: 100  Changed: 92  Warnings: 0

mysql> select * from communities_users;
+--------------+---------+
| community_id | user_id |
+--------------+---------+
|            1 |      13 |
|            1 |      15 |
|            1 |      24 |
|            1 |      40 |
|            1 |      45 |
|            1 |      57 |
|            1 |      61 |
|            1 |      65 |
|            1 |      78 |
|            1 |      86 |
|            2 |      26 |
|            2 |      28 |
|            2 |      50 |
|            2 |      54 |
|            2 |      62 |
|            2 |      74 |
|            2 |      87 |
|            3 |       4 |
|            3 |       7 |
|            3 |      12 |
|            3 |      14 |
|            3 |      27 |
|            3 |      48 |
|            3 |      73 |
|            3 |      92 |
|            3 |      98 |
|            3 |      99 |
|            4 |       8 |
|            4 |      17 |
|            4 |      58 |
|            4 |      59 |
|            4 |      83 |
|            4 |      88 |
|            4 |      95 |
|            4 |      96 |
|            5 |       1 |
|            5 |       3 |
|            5 |       6 |
|            5 |      18 |
|            5 |      33 |
|            5 |      71 |
|            5 |      75 |
|            5 |      76 |
|            5 |      77 |
|            5 |      82 |
|            5 |      91 |
|            6 |      16 |
|            6 |      25 |
|            6 |      31 |
|            6 |      43 |
|            6 |      64 |
|            6 |      79 |
|            6 |      80 |
|            6 |      84 |
|            6 |     100 |
|            7 |       2 |
|            7 |      19 |
|            7 |      21 |
|            7 |      30 |
|            7 |      36 |
|            7 |      42 |
|            7 |      51 |
|            7 |      53 |
|            7 |      55 |
|            7 |      66 |
|            7 |      69 |
|            7 |      72 |
|            7 |      97 |
|            8 |       5 |
|            8 |       9 |
|            8 |      20 |
|            8 |      32 |
|            8 |      41 |
|            8 |      47 |
|            8 |      52 |
|            8 |      89 |
|            9 |      10 |
|            9 |      23 |
|            9 |      38 |
|            9 |      39 |
|            9 |      44 |
|            9 |      46 |
|            9 |      60 |
|            9 |      68 |
|            9 |      70 |
|            9 |      81 |
|            9 |      94 |
|           10 |      11 |
|           10 |      22 |
|           10 |      29 |
|           10 |      34 |
|           10 |      35 |
|           10 |      37 |
|           10 |      49 |
|           10 |      56 |
|           10 |      63 |
|           10 |      67 |
|           10 |      85 |
|           10 |      90 |
|           10 |      93 |
+--------------+---------+
100 rows in set (0,00 sec)

mysql>
------------------------------------------------------------------------

-- Таблица лайков пользователей(один пользователь ставил лайк другому)
CREATE TABLE likes (
  from_user_id BOOLEAN,
  to_user_id BOOLEAN,
  PRIMARY KEY (from_user_id, to_user_id)
);


from_user_1 to_user_1
from_user_1 to_user_5
from_user_1 to_user_20

или

from_user_4 to_user_1
from_user_4 to_user_5
from_user_4 to_user_20

есть запись , зачик есть лайк
