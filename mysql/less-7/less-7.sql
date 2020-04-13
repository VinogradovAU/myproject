
1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

# ЗГРУЗИЛ БД SHOP  ( В файле shop.sql была ошибка в названии столбца "desription" при создании тадлицы catalogs. Далее в
insert шло имя столбца уже "desсription". Эта ситуация давала ошибку при загрузки файла shop.sql в базу)

mysql> show tables;
+----------------------+
| Tables_in_shop       |
+----------------------+
| catalogs             |
| discounts            |
| orders               |
| orders_products      |
| products             |
| rubrics              |
| storehouses          |
| storehouses_products |
| users                |
+----------------------+
9 rows in set (0,00 sec)

#----------------------------------------------------Заполнил таблицу orders

mysql> INSERT INTO orders
    -> (user_id)
    -> VALUES (1),(3),(5),(1),(2),(5),(5),(5);
Query OK, 8 rows affected (0,01 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> select * from users;
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

mysql> select * from orders;
+----+---------+---------------------+---------------------+
| id | user_id | created_at          | updated_at          |
+----+---------+---------------------+---------------------+
|  1 |       1 | 2020-04-12 22:39:11 | 2020-04-12 22:39:11 |
|  2 |       3 | 2020-04-12 22:39:11 | 2020-04-12 22:39:11 |
|  3 |       5 | 2020-04-12 22:39:11 | 2020-04-12 22:39:11 |
|  4 |       1 | 2020-04-12 22:39:11 | 2020-04-12 22:39:11 |
|  5 |       2 | 2020-04-12 22:39:11 | 2020-04-12 22:39:11 |
|  6 |       5 | 2020-04-12 22:39:11 | 2020-04-12 22:39:11 |
|  7 |       5 | 2020-04-12 22:39:11 | 2020-04-12 22:39:11 |
|  8 |       5 | 2020-04-12 22:39:11 | 2020-04-12 22:39:11 |
+----+---------+---------------------+---------------------+
8 rows in set (0,00 sec)


mysql> SELECT users.id, users.name, orders.user_id FROM users JOIN orders WHERE users.id=orders.user_id;
+----+--------------------+---------+
| id | name               | user_id |
+----+--------------------+---------+
|  1 | Геннадий           |       1 |
|  1 | Геннадий           |       1 |
|  2 | Наталья            |       2 |
|  3 | Александр          |       3 |
|  5 | Иван               |       5 |
|  5 | Иван               |       5 |
|  5 | Иван               |       5 |
|  5 | Иван               |       5 |
+----+--------------------+---------+
8 rows in set (0,00 sec)

mysql> SELECT users.id, users.name, orders.user_id AS orders FROM users JOIN orders WHERE users.id=orders.user_id group by id;
+----+--------------------+--------+
| id | name               | orders |
+----+--------------------+--------+
|  1 | Геннадий           |      1 |
|  2 | Наталья            |      2 |
|  3 | Александр          |      3 |
|  5 | Иван               |      5 |
+----+--------------------+--------+
4 rows in set (0,00 sec)

mysql> SELECT users.name, orders.user_id AS orders FROM users JOIN orders WHERE users.id=orders.user_id group by orders;
+--------------------+--------+
| name               | orders |
+--------------------+--------+
| Геннадий           |      1 |
| Наталья            |      2 |
| Александр          |      3 |
| Иван               |      5 |
+--------------------+--------+
4 rows in set (0,00 sec)

mysql>

2. Выведите список товаров products и разделов catalogs, который соответствует товару.
mysql> SELECT catalogs.name, products.name FROM catalogs JOIN products WHERE catalogs.id=products.catalog_id;

+-----------------------------------+-------------------------+
| name                              | name                    |
+-----------------------------------+-------------------------+
| Процессоры                        | Intel Core i3-8100      |
| Процессоры                        | Intel Core i5-7400      |
| Процессоры                        | AMD FX-8320E            |
| Процессоры                        | AMD FX-8320             |
| Материнские платы                 | ASUS ROG MAXIMUS X HERO |
| Материнские платы                 | Gigabyte H310M S2H      |
| Материнские платы                 | MSI B250M GAMING PRO    |
+-----------------------------------+-------------------------+
7 rows in set (0,00 sec)

mysql> SELECT catalogs.name AS catalog_name, products.name AS product_name FROM catalogs JOIN products WHERE catalogs.id=products.catalog_id;
+-----------------------------------+-------------------------+
| catalog_name                      | product_name            |
+-----------------------------------+-------------------------+
| Процессоры                        | Intel Core i3-8100      |
| Процессоры                        | Intel Core i5-7400      |
| Процессоры                        | AMD FX-8320E            |
| Процессоры                        | AMD FX-8320             |
| Материнские платы                 | ASUS ROG MAXIMUS X HERO |
| Материнские платы                 | Gigabyte H310M S2H      |
| Материнские платы                 | MSI B250M GAMING PRO    |
+-----------------------------------+-------------------------+
7 rows in set (0,00 sec)

3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name).
Поля from, to и label содержат английские названия городов, поле name — русское.
Выведите список рейсов flights с русскими названиями городов.

---------------------------------------СОЗДАНИЕ НЕОБХОДИМЫХ ТАБЛИЦ С ДАННЫМИ

mysql> desc cities;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| label | varchar(255) | NO   | PRI | NULL    |       |
| name  | varchar(255) | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
2 rows in set (0,00 sec)

mysql> select * from cities;
+----------+------------------+
| label    | name             |
+----------+------------------+
| irkutsk  | Иркутск          |
| kazan    | Казань           |
| moscow   | Москва           |
| novgorod | Новгород         |
| omsk     | Омск             |
+----------+------------------+
5 rows in set (0,00 sec)

mysql> desc flights;
+-------+-----------------+------+-----+---------+----------------+
| Field | Type            | Null | Key | Default | Extra          |
+-------+-----------------+------+-----+---------+----------------+
| id    | bigint unsigned | NO   | PRI | NULL    | auto_increment |
| from  | varchar(255)    | YES  |     | NULL    |                |
| to    | varchar(255)    | YES  |     | NULL    |                |
+-------+-----------------+------+-----+---------+----------------+
3 rows in set (0,00 sec)

mysql> select * from flights;
+----+----------+---------+
| id | from     | to      |
+----+----------+---------+
|  1 | moscow   | omsk    |
|  2 | novgorod | kazan   |
|  3 | irkutsk  | moscow  |
|  4 | omsk     | irkutsk |
|  5 | moscow   | kazan   |
+----+----------+---------+
5 rows in set (0,01 sec)

mysql>
-------------------------------- в mysql workbanch---------------

Select
    f1.id AS id, c2.name AS `from`, c1.name AS `to`
    FROM
		cities AS c1
        JOIN flights AS f1
        ON c1.label=f1.to
        JOIN cities AS c2
        ON c2.label=f1.from
	;
-------------------------------- в mysql workbanch---------------

mysql> Select f1.id AS id, c2.name AS `from`, c1.name AS `to` FROM cities AS c1 JOIN flights AS f1 ON c1.label=f1.to JOIN cities AS c2 ON c2.label=f1.from
    -> ;
+----+------------------+----------------+
| id | from             | to             |
+----+------------------+----------------+
|  1 | Москва           | Омск           |
|  2 | Новгород         | Казань         |
|  3 | Иркутск          | Москва         |
|  4 | Омск             | Иркутск        |
|  5 | Москва           | Казань         |
+----+------------------+----------------+
5 rows in set (0,00 sec)

mysql>


