
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


