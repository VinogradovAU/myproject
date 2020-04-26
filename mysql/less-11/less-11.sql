
# 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs
и products в таблицу logs помещается время и дата создания записи, название таблицы, идентификатор
ервичного ключа и содержимое поля name.


mysql>  desc log;
+------------+--------------+------+-----+-------------------+-------------------+
| Field      | Type         | Null | Key | Default           | Extra             |
+------------+--------------+------+-----+-------------------+-------------------+
| id         | int unsigned | NO   | PRI | NULL              | auto_increment    |
| table_name | text         | NO   |     | NULL              |                   |       <-------Создал таблицу log
| id_key     | int unsigned | NO   |     | NULL              |                   |
| field_name | text         | NO   |     | NULL              |                   |
| created_at | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+------------+--------------+------+-----+-------------------+-------------------+
5 rows in set (0,00 sec)

mysql> SHOW CREATE TABLE log;
+-------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table | Create Table                                                                                                                                                                                                                                                                                                |
+-------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| log   | CREATE TABLE `log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `table_name` text NOT NULL,
  `id_key` int unsigned NOT NULL,
  `field_name` text NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=ARCHIVE DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |                    <-------Тип движка Archive
+-------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0,00 sec)

mysql>
--------------------mysql workbench----------------------

DROP TABLE IF EXISTS log;
CREATE TABLE IF NOT EXISTS log (
   `id` int unsigned NOT NULL AUTO_INCREMENT,
   `table_name` text NOT NULL,
   `id_key` INT unsigned NOT NULL,
   `field_name` text NOT NULL,
   `created_at` datetime DEFAULT current_timestamp(),
   PRIMARY KEY (`id`)
 ) ENGINE=ARCHIVE;


DELIMITER //
DROP TRIGGER IF EXISTS log_insert_data_from_users//
CREATE TRIGGER log_insert_data_from_users AFTER INSERT ON shop.users
FOR EACH ROW
BEGIN
  INSERT INTO `log` (
		`table_name`,
		`id_key`,
		`field_name`)
    VALUES (
		'users',
        NEW.id,
        NEW.name
        );
END//

DELIMITER ;

desc catalogs;
SELECT * from catalogs limit 5;
desc shop.products;

DELIMITER //
DROP TRIGGER IF EXISTS log_insert_data_from_catalogs//
CREATE TRIGGER log_insert_data_from_catalogs AFTER INSERT ON shop.catalogs
FOR EACH ROW
BEGIN
  INSERT INTO `log` (
		`table_name`,
		`id_key`,
		`field_name`)
    VALUES (
		'catalogs',
        NEW.id,
        NEW.name
        );
END//

DELIMITER ;

DESC products;
SELECT * FROM products limit 5;
DELIMITER //

DROP TRIGGER IF EXISTS log_insert_data_from_products//
CREATE TRIGGER log_insert_data_from_products AFTER INSERT ON shop.products
FOR EACH ROW
BEGIN
  INSERT INTO `log` (
		`table_name`,
		`id_key`,
		`field_name`)
    VALUES (
		'products',
        NEW.id,
        NEW.name
        );
END//
--------------------mysql workbench----------------------

mysql> show triggers;
+-------------------------------+--------+----------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+------------------------+-----------------------------------------------------------------------------------------------------------------------+----------------+----------------------+----------------------+--------------------+
| Trigger                       | Event  | Table    | Statement                                                                                                                                                 | Timing | Created                | sql_mode                                                                                                              | Definer        | character_set_client | collation_connection | Database Collation |
+-------------------------------+--------+----------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+------------------------+-----------------------------------------------------------------------------------------------------------------------+----------------+----------------------+----------------------+--------------------+
| log_insert_data_from_catalogs | INSERT | catalogs | BEGIN
  INSERT INTO `log` (
		`table_name`,
		`id_key`,
		`field_name`)
    VALUES (
		'catalogs',
        NEW.id,
        NEW.name
        );
END | AFTER  | 2020-04-26 21:28:20.51 | ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION | root@localhost | utf8mb4              | utf8mb4_0900_ai_ci   | utf8mb4_0900_ai_ci |
| log_insert_data_from_products | INSERT | products | BEGIN
  INSERT INTO `log` (
		`table_name`,
		`id_key`,
		`field_name`)
    VALUES (
		'products',
        NEW.id,
        NEW.name
        );
END | AFTER  | 2020-04-26 21:30:23.34 | ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION | root@localhost | utf8mb4              | utf8mb4_0900_ai_ci   | utf8mb4_0900_ai_ci |
| log_insert_data_from_users    | INSERT | users    | BEGIN
  INSERT INTO `log` (
		`table_name`,
		`id_key`,
		`field_name`)
    VALUES (
		'users',
        NEW.id,
        NEW.name
        );
END    | AFTER  | 2020-04-26 21:25:59.28 | ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION | root@localhost | utf8mb4              | utf8mb4_0900_ai_ci   | utf8mb4_0900_ai_ci |
+-------------------------------+--------+----------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+------------------------+-----------------------------------------------------------------------------------------------------------------------+----------------+----------------------+----------------------+--------------------+
3 rows in set (0,01 sec)

mysql> select * from log;
Empty set (0,00 sec)

mysql> select * from users limit 2;
+----+------------------+-------------+---------------------+---------------------+
| id | name             | birthday_at | created_at          | updated_at          |
+----+------------------+-------------+---------------------+---------------------+
|  1 | Геннадий         | 1990-10-05  | 2020-04-12 22:04:13 | 2020-04-12 22:04:13 |
|  2 | Наталья          | 1984-11-12  | 2020-04-12 22:04:13 | 2020-04-12 22:04:13 |
+----+------------------+-------------+---------------------+---------------------+
2 rows in set (0,00 sec)

mysql> insert into users (name, birthday_at) VALUES ('Vasya', '2014-10-08');
Query OK, 1 row affected (0,01 sec)

mysql> select * from catalogs limit 2;
+----+-----------------------------------+
| id | name                              |
+----+-----------------------------------+
|  1 | Процессоры                        |
|  2 | Материнские платы                 |
+----+-----------------------------------+
2 rows in set (0,01 sec)

mysql> insert into catalogs (name) VALUES ('Power Supply');
Query OK, 1 row affected (0,01 sec)

mysql> select * from products limit 2;
+----+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+----------+------------+---------------------+---------------------+
| id | name               | description                                                                                                                                         | price    | catalog_id | created_at          | updated_at          |
+----+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+----------+------------+---------------------+---------------------+
|  1 | Intel Core i3-8100 | Процессор для настольных персональных компьютеров, основанных на платформе Intel.                                                                   |  7890.00 |          1 | 2020-04-12 22:04:13 | 2020-04-12 22:04:13 |
|  2 | Intel Core i5-7400 | Процессор для настольных персональных компьютеров, основанных на платформе Intel.                                                                   | 12700.00 |          1 | 2020-04-12 22:04:13 | 2020-04-12 22:04:13 |
+----+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+----------+------------+---------------------+---------------------+
2 rows in set (0,00 sec)

mysql> insert into products (name, description, price, catalog_id) VALUE ('Core i7', 'Processor Intel', 26000, 1);
Query OK, 1 row affected (0,02 sec)

mysql> select * from log;
+----+------------+--------+--------------+---------------------+
| id | table_name | id_key | field_name   | created_at          |
+----+------------+--------+--------------+---------------------+
|  1 | users      |      7 | Vasya        | 2020-04-26 21:36:51 |
|  2 | catalogs   |      6 | Power Supply | 2020-04-26 21:38:38 |
|  3 | products   |      8 | Core i7      | 2020-04-26 21:41:15 |
+----+------------+--------+--------------+---------------------+
3 rows in set (0,00 sec)

mysql>

# 2. (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.

--------------------mysql workbench---------------------- тренировка на тестовой таблице

SHOW tables;
DROP TABLE if exists test1;


CREATE TABLE test1 (
id int unsigned NOT NULL auto_increment,
`name` VARCHAR(100),
`birthday_at` date DEFAULT NULL COMMENT 'Дата рождения',
primary key (`id`)
) engine=InnoDB;

select * from test1;

INSERT INTO test1 (name, birthday_at)
SELECT nn.cc, bb.dd
from
(select concat('andry', n0.n + 10*n1.n + 100*n2.n + 1000*n3.n) as cc, (n0.n + 10*n1.n + 100*n2.n + 1000*n3.n) as num_num_1
	from
	(select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
	union all select 6 union all select 7 union all select 8 union all select 9) AS n0
		JOIN
	(select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
	union all select 6 union all select 7 union all select 8 union all select 9) AS n1
		JOIN
	(select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
	union all select 6 union all select 7 union all select 8 union all select 9) AS n2
    JOIN
	(select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
	union all select 6 union all select 7 union all select 8 union all select 9) AS n3

    ) AS nn
JOIN
(select DATE_ADD(CURDATE(), INTERVAL n0.n + 10*n1.n + 100*n2.n + 1000*n3.n DAY) AS dd, (n0.n + 10*n1.n + 100*n2.n + 1000*n3.n) as num_num_2
from
	(select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
	union all select 6 union all select 7 union all select 8 union all select 9) AS n0
		JOIN
	(select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
	union all select 6 union all select 7 union all select 8 union all select 9) AS n1
		JOIN
	(select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
	union all select 6 union all select 7 union all select 8 union all select 9) AS n2
    JOIN
	(select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
	union all select 6 union all select 7 union all select 8 union all select 9) AS n3

    ) AS bb
    ON nn.num_num_1 = bb.num_num_2;


--------------------mysql workbench---------------------- тренировка на тестовой таблице



mysql> INSERT INTO test1 (name, birthday_at)
    -> SELECT nn.cc, bb.dd
    -> from
    -> (select concat('andry', n0.n + 10*n1.n + 100*n2.n + 1000*n3.n) as cc, (n0.n + 10*n1.n + 100*n2.n + 1000*n3.n) as num_num_1
    -> from
    -> (select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
    -> union all select 6 union all select 7 union all select 8 union all select 9) AS n0
    ->
Display all 846 possibilities? (y or n)
    -> JOIN
    -> (select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
    -> union all select 6 union all select 7 union all select 8 union all select 9) AS n1
    ->
Display all 846 possibilities? (y or n)
    -> JOIN
    -> (select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
    -> union all select 6 union all select 7 union all select 8 union all select 9) AS n2
    ->     JOIN
    -> (select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
    -> union all select 6 union all select 7 union all select 8 union all select 9) AS n3
    ->
    ->     ) AS nn
    -> JOIN
    -> (select DATE_ADD(CURDATE(), INTERVAL n0.n + 10*n1.n + 100*n2.n + 1000*n3.n DAY) AS dd, (n0.n + 10*n1.n + 100*n2.n + 1000*n3.n) as num_num_2
    -> from
    -> (select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
    -> union all select 6 union all select 7 union all select 8 union all select 9) AS n0
    ->
Display all 846 possibilities? (y or n)
    -> JOIN
    -> (select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
    -> union all select 6 union all select 7 union all select 8 union all select 9) AS n1
    ->
Display all 846 possibilities? (y or n)
    -> JOIN
    -> (select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
    -> union all select 6 union all select 7 union all select 8 union all select 9) AS n2
    ->     JOIN
    -> (select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
    -> union all select 6 union all select 7 union all select 8 union all select 9) AS n3
    ->
    ->     ) AS bb
    ->     ON nn.num_num_1 = bb.num_num_2;
Query OK, 10000 rows affected (21,17 sec)
Records: 10000  Duplicates: 0  Warnings: 0


mysql> select * from test1 limit 1, 20;
+----+-----------+-------------+
| id | name      | birthday_at |
+----+-----------+-------------+
|  2 | andry100  | 2020-08-05  |
|  3 | andry1100 | 2023-05-02  |
|  4 | andry200  | 2020-11-13  |
|  5 | andry1200 | 2023-08-10  |
|  6 | andry300  | 2021-02-21  |
|  7 | andry1300 | 2023-11-18  |
|  8 | andry400  | 2021-06-01  |
|  9 | andry1400 | 2024-02-26  |
| 10 | andry500  | 2021-09-09  |
| 11 | andry1500 | 2024-06-05  |
| 12 | andry600  | 2021-12-18  |
| 13 | andry1600 | 2024-09-13  |
| 14 | andry700  | 2022-03-28  |
| 15 | andry1700 | 2024-12-22  |
| 16 | andry1800 | 2025-04-01  |
| 17 | andry1900 | 2025-07-10  |
| 18 | andry10   | 2020-05-07  |
| 19 | andry1000 | 2023-01-22  |
| 20 | andry110  | 2020-08-15  |
| 21 | andry1110 | 2023-05-12  |
+----+-----------+-------------+
20 rows in set (0,00 sec)

mysql> select count(*) AS count FROM (select * FROM test1) as nn;
+-------+
| count |
+-------+
| 10000 |
+-------+
1 row in set (0,01 sec)

mysql> select count(*) AS count FROM (select DISTINCT * FROM test1) as nn;
+-------+
| count |
+-------+
| 10000 |
+-------+
1 row in set (0,00 sec)

mysql> select count(*) AS count FROM (select DISTINCT name FROM test1) as nn;
+-------+
| count |
+-------+
| 10000 |
+-------+
1 row in set (0,01 sec)

mysql> select count(*) AS count FROM (select DISTINCT birthday_at FROM test1) as nn;
+-------+
| count |
+-------+
| 10000 |
+-------+
1 row in set (0,01 sec)

CREATE TABLE `users_old` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Имя покупателя',
  `birthday_at` date DEFAULT NULL COMMENT 'Дата рождения',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Покупатели' ;

insert into users_old select * from users;

mysql> select * from users_old;
+----+--------------------+-------------+---------------------+---------------------+
| id | name               | birthday_at | created_at          | updated_at          |
+----+--------------------+-------------+---------------------+---------------------+
|  1 | Геннадий           | 1990-10-05  | 2020-04-12 22:04:13 | 2020-04-12 22:04:13 |
|  2 | Наталья            | 1984-11-12  | 2020-04-12 22:04:13 | 2020-04-12 22:04:13 |
|  3 | Александр          | 1985-05-20  | 2020-04-12 22:04:13 | 2020-04-12 22:04:13 |
|  4 | Сергей             | 1988-02-14  | 2020-04-12 22:04:13 | 2020-04-12 22:04:13 |
|  5 | Andry              | 1998-01-12  | 2020-04-12 22:04:13 | 2020-04-21 15:17:00 |
|  6 | Мария              | 1992-08-29  | 2020-04-12 22:04:13 | 2020-04-12 22:04:13 |
|  7 | Vasya              | 2014-10-08  | 2020-04-26 21:36:51 | 2020-04-26 21:36:51 |
+----+--------------------+-------------+---------------------+---------------------+
7 rows in set (0,00 sec)

mysql>

#----------------------------ЗАПРОС ВСТАВКИ 1000 000 записей в таблицу users---------------------------
INSERT INTO users (name, birthday_at)
SELECT nn.cc, bb.dd
from
(select concat('andry', n0.n + 10*n1.n + 100*n2.n + 1000*n3.n + 10000*n4.n + 10000*n5.n) as cc, (n0.n + 10*n1.n + 100*n2.n + 1000*n3.n + 10000*n4.n + 10000*n5.n) as num_num_1
	from
	(select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
	union all select 6 union all select 7 union all select 8 union all select 9) AS n0
		JOIN
	(select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
	union all select 6 union all select 7 union all select 8 union all select 9) AS n1
		JOIN
	(select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
	union all select 6 union all select 7 union all select 8 union all select 9) AS n2
    JOIN
	(select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
	union all select 6 union all select 7 union all select 8 union all select 9) AS n3
     JOIN
	(select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
	union all select 6 union all select 7 union all select 8 union all select 9) AS n4
     JOIN
	(select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
	union all select 6 union all select 7 union all select 8 union all select 9) AS n5

    ) AS nn
JOIN
(select DATE_ADD(CURDATE(), INTERVAL n0.n + 10*n1.n + 100*n2.n + 1000*n3.n + 10000*n4.n + 10000*n5.n DAY) AS dd, (n0.n + 10*n1.n + 100*n2.n + 1000*n3.n + 10000*n4.n + 10000*n5.n) as num_num_2
from
	(select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
	union all select 6 union all select 7 union all select 8 union all select 9) AS n0
		JOIN
	(select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
	union all select 6 union all select 7 union all select 8 union all select 9) AS n1
		JOIN
	(select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
	union all select 6 union all select 7 union all select 8 union all select 9) AS n2
    JOIN
	(select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
	union all select 6 union all select 7 union all select 8 union all select 9) AS n3
     JOIN
	(select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
	union all select 6 union all select 7 union all select 8 union all select 9) AS n4
     JOIN
	(select 0 as n union all select 1 union all select 2 union all select 3 union all select 4 union all select 5
	union all select 6 union all select 7 union all select 8 union all select 9) AS n5

    ) AS bb
    ON nn.num_num_1 = bb.num_num_2;

ERROR 3 (HY000): Error writing file '/tmp/MYfd=849' (OS errno 28 - No space left on device)

mysql> PURGE MASTER LOGS BEFORE '2020-04-27 01:00:00';
Query OK, 0 rows affected, 1 warning (0,01 sec)

#-----------------------------------
nano ./mysql.conf.d/mysqld.cnf
tmp_table_size = 256M
service mysqld restart
#-----------------------------------

mysql> SHOW VARIABLES LIKE 'tmp%';
+----------------+-----------+
| Variable_name  | Value     |
+----------------+-----------+
| tmp_table_size | 268435456 |
| tmpdir         | /tmp      |
+----------------+-----------+
2 rows in set (0,00 sec)

SET GLOBAL tmp_table_size = 1024 * 1024 * 512;
SET GLOBAL max_heap_table_size = 1024 * 1024 * 512;

mysql> SHOW VARIABLES LIKE 'tmp%';
+----------------+-----------+
| Variable_name  | Value     |
+----------------+-----------+
| tmp_table_size | 536870912 |
| tmpdir         | /tmp      |
+----------------+-----------+
2 rows in set (0,00 sec)

mysql> SHOW VARIABLES LIKE 'max_heap%';
+---------------------+-----------+
| Variable_name       | Value     |
+---------------------+-----------+
| max_heap_table_size | 536870912 |
+---------------------+-----------+
1 row in set (0,00 sec)

все равно ошибка при попытке сгенерить и вставить 1 млн. записей:

ERROR 3 (HY000): Error writing file '/tmp/MYfd=813' (OS errno 28 - No space left on device)
