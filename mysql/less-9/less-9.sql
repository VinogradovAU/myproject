1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. Переместите
запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.


mysql>
mysql> USE sample;
Database changed
mysql>  CREATE TABLE `users` (
    ->   `id` bigint unsigned NOT NULL AUTO_INCREMENT,
    ->   `name` varchar(255) DEFAULT NULL COMMENT 'Имя покупателя',
    ->   `birthday_at` date DEFAULT NULL COMMENT 'Дата рождения',
    ->   `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
    ->   `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `id` (`id`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Покупатели';
Query OK, 0 rows affected (0,10 sec)

mysql> show tables;
+------------------+
| Tables_in_sample |
+------------------+
| users            |
+------------------+
1 row in set (0,00 sec)

mysql> select * from shop.users;
+----+--------------------+-------------+---------------------+---------------------+
| id | name               | birthday_at | created_at          | updated_at          |
+----+--------------------+-------------+---------------------+---------------------+
|  1 | Геннадий           | 1990-10-05  | 2020-04-12 22:04:13 | 2020-04-12 22:04:13 |
|  2 | Наталья            | 1984-11-12  | 2020-04-12 22:04:13 | 2020-04-12 22:04:13 |
|  3 | Александр          | 1985-05-20  | 2020-04-12 22:04:13 | 2020-04-12 22:04:13 |
|  4 | Сергей             | 1988-02-14  | 2020-04-12 22:04:13 | 2020-04-12 22:04:13 |
|  5 | Иван               | 1998-01-12  | 2020-04-12 22:04:13 | 2020-04-12 22:04:13 |
|  6 | Мария              | 1992-08-29  | 2020-04-12 22:04:13 | 2020-04-12 22:04:13 |
+----+--------------------+-------------+---------------------+---------------------+
6 rows in set (0,00 sec)

mysql> select * from sample.users;
Empty set (0,01 sec)

mysql> START TRANSACTION;
Query OK, 0 rows affected (0,01 sec)

mysql> INSERT INTO sample.users (id, name, birthday_at) VALUES
    -> ((SELECT id FROM shop.users WHERE id=1),
    -> (SELECT name FROM shop.users WHERE id=1),
    -> (SELECT birthday_at FROM shop.users WHERE id=1));
Query OK, 1 row affected (0,00 sec)

mysql> select * from sample.users;
+----+------------------+-------------+---------------------+---------------------+
| id | name             | birthday_at | created_at          | updated_at          |
+----+------------------+-------------+---------------------+---------------------+
|  1 | Геннадий         | 1990-10-05  | 2020-04-20 01:22:21 | 2020-04-20 01:22:21 |
+----+------------------+-------------+---------------------+---------------------+
1 row in set (0,00 sec)

mysql> COMMIT;
Query OK, 0 rows affected (0,01 sec)

mysql>

2. Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее
название каталога name из таблицы catalogs.


mysql> select p.name AS products, c.name AS catalog_name FROM catalogs AS c JOIN products AS p ON c.id=p.catalog_id;
+-------------------------+-----------------------------------+
| products                | catalog_name                      |
+-------------------------+-----------------------------------+
| Intel Core i3-8100      | Процессоры                        |
| Intel Core i5-7400      | Процессоры                        |
| AMD FX-8320E            | Процессоры                        |
| AMD FX-8320             | Процессоры                        |
| ASUS ROG MAXIMUS X HERO | Материнские платы                 |
| Gigabyte H310M S2H      | Материнские платы                 |
| MSI B250M GAMING PRO    | Материнские платы                 |
+-------------------------+-----------------------------------+
7 rows in set (0,01 sec)

mysql> CREATE VIEW product_view (products, catalog_name) AS
    -> select p.name AS products, c.name AS catalog_name FROM catalogs AS c JOIN products AS p ON c.id=p.catalog_id;
Query OK, 0 rows affected (0,01 sec)

mysql> SELECT * FROM product_view;
+-------------------------+-----------------------------------+
| products                | catalog_name                      |
+-------------------------+-----------------------------------+
| Intel Core i3-8100      | Процессоры                        |
| Intel Core i5-7400      | Процессоры                        |
| AMD FX-8320E            | Процессоры                        |
| AMD FX-8320             | Процессоры                        |
| ASUS ROG MAXIMUS X HERO | Материнские платы                 |
| Gigabyte H310M S2H      | Материнские платы                 |
| MSI B250M GAMING PRO    | Материнские платы                 |
+-------------------------+-----------------------------------+
7 rows in set (0,00 sec)

mysql> show tables;
+----------------------+
| Tables_in_shop       |
+----------------------+
| catalogs             |
| cities               |
| discounts            |
| flights              |
| orders               |
| orders_products      |
| product_view         |   <--------------------------- представление как отдельная таблица
| products             |
| rubrics              |
| storehouses          |
| storehouses_products |
| users                |
+----------------------+
12 rows in set (0,00 sec)

mysql>

3. (по желанию) Пусть имеется любая таблица с календарным полем created_at. Создайте запрос, который
удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.

----------------------ИЩЕМ ДАТУ---------------------------
mysql> CREATE VIEW posts_view (data) AS SELECT created_at AS c from posts order by c DESC limit 5;
Query OK, 0 rows affected (0,01 sec)

mysql> select * from posts_view;
+---------------------+
| data                |
+---------------------+
| 2019-11-30 03:31:27 |
| 2018-07-14 21:44:53 |
| 2018-01-25 11:13:54 |
| 2017-08-12 23:54:04 |
| 2017-03-07 16:33:55 |
+---------------------+
5 rows in set (0,00 sec)

mysql> select * from posts_view order by data;
+---------------------+
| data                |
+---------------------+
| 2017-03-07 16:33:55 |
| 2017-08-12 23:54:04 |
| 2018-01-25 11:13:54 |
| 2018-07-14 21:44:53 |
| 2019-11-30 03:31:27 |
+---------------------+
5 rows in set (0,00 sec)

mysql> select * from posts_view order by data limit 1;
+---------------------+
| data                |
+---------------------+
| 2017-03-07 16:33:55 |   <-----------------------------------------НАШЛИ ДАТУ
+---------------------+
1 row in set (0,00 sec)

mysql> CREATE VIEW posts_table_copy AS select * from posts;     <----------создал таблицу  в которой буду удалять записи
Query OK, 0 rows affected (0,01 sec)


mysql> select id, created_at, head from posts_table_copy order by created_at desc limit 20;
+----+---------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| id | created_at          | head                                                                                                                                                                                                                                     |
+----+---------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 93 | 2019-11-30 03:31:27 | Sunt quia maiores quo et deleniti reprehenderit aut. Assumenda sit explicabo facilis eius voluptas eum. Saepe harum asperiores ab numquam harum perferendis maxime labore.                                                               |
|  9 | 2018-07-14 21:44:53 | Aut molestias pariatur voluptate consequatur aut quae suscipit. Repellendus molestias velit at impedit recusandae doloremque. Aspernatur aspernatur reprehenderit non aut. Dolorem possimus sapiente a voluptatum.                       |
| 47 | 2018-01-25 11:13:54 | Et in totam quia soluta qui. Reprehenderit dolorum iste nulla suscipit quae. Sit animi omnis dolorum natus quae. Ut maiores qui molestiae qui id sed.                                                                                    |
| 16 | 2017-08-12 23:54:04 | Aliquid dicta accusamus molestiae sed quo eum. Consequatur doloremque in est qui. Sit qui tempore architecto et quia. Vel asperiores praesentium ea eos ratione voluptas sapiente.                                                       |
| 26 | 2017-03-07 16:33:55 | Ipsum atque inventore voluptas harum sit. Praesentium vero repellat ut nesciunt nulla dolore. Expedita magni asperiores rerum maxime id. Repudiandae non repellendus magni cumque dolorem.                                               |
| 86 | 2016-12-11 00:50:14 | Quisquam doloremque vel adipisci. Unde dolore delectus in numquam rerum facilis minus corrupti. Modi vitae rerum vel impedit quaerat aut alias.                                                                                          |
| 23 | 2015-10-15 09:49:11 | Veniam ut dolore iusto et. Quisquam est itaque maxime praesentium. Atque ullam a sed ipsum asperiores. Aperiam autem praesentium iure enim quas.                                                                                         |
| 50 | 2015-04-29 18:57:45 | Optio eius id ut eum ut voluptas. Maxime sint eum voluptatum qui eaque blanditiis. Eum provident nobis nesciunt dolor hic placeat fugiat. Consectetur eius cum nobis mollitia quae nemo velit.                                           |
| 45 | 2013-07-25 04:33:04 | Saepe occaecati enim est tenetur ut. Sed neque omnis quia sit et incidunt hic. Corporis blanditiis sit voluptate. Quis sint est nostrum maxime perferendis hic voluptatum.                                                               |
| 34 | 2013-04-22 21:19:16 | Temporibus est minima quia ducimus hic qui neque. Nam ipsa accusantium et veniam nemo eveniet voluptas. Exercitationem non itaque illum qui et architecto eveniet. Et iure eos nihil ullam ea repudiandae. Illo alias impedit voluptate. |
| 49 | 2013-04-13 21:43:04 | Ut recusandae explicabo porro illo. Voluptatem qui dicta totam minima ex. Est beatae ad consequatur.                                                                                                                                     |
| 60 | 2013-03-14 13:52:25 | Dolor ut atque accusantium cum quisquam id sint rerum. Numquam et animi dolorum similique et. Omnis molestiae id molestiae deserunt. Quam et voluptas quia et dolore.                                                                    |
| 19 | 2013-01-02 03:29:33 | Quasi modi et alias. Sed qui similique et quia dolorum incidunt. Quis ipsa cumque dolor dolorem ducimus illum. Sit necessitatibus tenetur excepturi nulla facilis aspernatur. A voluptates enim quia odit pariatur.                      |
| 67 | 2012-10-08 03:32:23 | Libero deserunt quia autem et aspernatur. Voluptas eos et quo dolorem consequatur pariatur. Aut ea non commodi. Ducimus velit sed qui sit rerum. Dolores ullam quisquam molestiae.                                                       |
|  8 | 2012-10-07 00:37:59 | Culpa doloribus omnis in doloremque. Sapiente ratione voluptates temporibus est voluptatem tempora. Rerum ut veniam sequi pariatur. Est qui sit delectus fugit.                                                                          |
| 85 | 2012-04-05 00:51:43 | Ea saepe et id asperiores. Quos qui aut consequuntur quod commodi. Unde iure quia occaecati distinctio cupiditate.                                                                                                                       |
|  5 | 2012-03-31 09:28:30 | Amet dolores est voluptatem laborum. Consequatur nihil qui quaerat exercitationem illum. Impedit corporis et est et sint non sed. Ex qui iusto et vero.                                                                                  |
| 17 | 2012-01-13 10:01:24 | Rerum iusto voluptates aut corporis et quas non delectus. Excepturi eveniet iusto quos quod. Nemo quaerat est natus error. Quo sed nihil consequatur fugit.                                                                              |
| 97 | 2011-08-14 06:56:06 | Sed adipisci dolorem unde voluptas et. Qui dolores eos occaecati dolor sapiente. Iure ex ea eos sunt rerum. Velit accusamus nemo est debitis delectus.                                                                                   |
| 37 | 2010-11-20 22:20:59 | In omnis quod enim sunt. Mollitia voluptate corporis accusantium velit aut. Sed aut expedita molestiae excepturi pariatur eligendi labore officia.                                                                                       |
+----+---------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
20 rows in set (0,00 sec)

mysql>

mysql> DELETE FROM posts_table_copy WHERE created_at < (select * from posts_view order by data limit 1);
Query OK, 95 rows affected (0,02 sec)

mysql> select id, created_at from posts_table_copy;
+----+---------------------+
| id | created_at          |
+----+---------------------+
|  9 | 2018-07-14 21:44:53 |
| 16 | 2017-08-12 23:54:04 |
| 26 | 2017-03-07 16:33:55 |
| 47 | 2018-01-25 11:13:54 |
| 93 | 2019-11-30 03:31:27 |
+----+---------------------+
5 rows in set (0,00 sec)

mysql> desc posts_table_copy;
+--------------+--------------+------+-----+-------------------+-----------------------------------------------+
| Field        | Type         | Null | Key | Default           | Extra                                         |
+--------------+--------------+------+-----+-------------------+-----------------------------------------------+
| id           | int unsigned | NO   |     | 0                 |                                               |
| user_id      | int unsigned | NO   |     | NULL              |                                               |
| community_id | int unsigned | YES  |     | NULL              |                                               |
| head         | varchar(255) | YES  |     | NULL              |                                               |
| body         | text         | NO   |     | NULL              |                                               |
| media_id     | int unsigned | YES  |     | NULL              |                                               |
| created_at   | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED                             |
| updated_at   | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
+--------------+--------------+------+-----+-------------------+-----------------------------------------------+
8 rows in set (0,01 sec)




