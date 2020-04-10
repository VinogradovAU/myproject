1. Создал таблицы-------------------------------------------

mysql> desc likes;
+----------------+--------------+------+-----+-------------------+-------------------+
| Field          | Type         | Null | Key | Default           | Extra             |
+----------------+--------------+------+-----+-------------------+-------------------+
| id             | int unsigned | NO   | PRI | NULL              | auto_increment    |
| user_id        | int unsigned | NO   |     | NULL              |                   |
| target_id      | int unsigned | NO   |     | NULL              |                   |
| target_type_id | int unsigned | NO   |     | NULL              |                   |
| created_at     | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+----------------+--------------+------+-----+-------------------+-------------------+
5 rows in set (0,00 sec)

mysql> desc target_types;
+------------+--------------+------+-----+-------------------+-------------------+
| Field      | Type         | Null | Key | Default           | Extra             |
+------------+--------------+------+-----+-------------------+-------------------+
| id         | int unsigned | NO   | PRI | NULL              | auto_increment    |
| name       | varchar(255) | NO   | UNI | NULL              |                   |
| created_at | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+------------+--------------+------+-----+-------------------+-------------------+
3 rows in set (0,00 sec)

mysql>

2. Заполнил таблицы--------------------------------------------------

mysql> select * from likes limit 10;
+----+---------+-----------+----------------+---------------------+
| id | user_id | target_id | target_type_id | created_at          |
+----+---------+-----------+----------------+---------------------+
|  1 |      15 |       100 |              3 | 2020-04-09 22:22:57 |
|  2 |      80 |        33 |              1 | 2020-04-09 22:22:57 |
|  3 |      12 |        94 |              2 | 2020-04-09 22:22:57 |
|  4 |      77 |        87 |              1 | 2020-04-09 22:22:57 |
|  5 |      68 |        22 |              1 | 2020-04-09 22:22:57 |
|  6 |      55 |        64 |              3 | 2020-04-09 22:22:57 |
|  7 |      75 |        14 |              2 | 2020-04-09 22:22:57 |
|  8 |      75 |        46 |              1 | 2020-04-09 22:22:57 |
|  9 |      75 |        65 |              4 | 2020-04-09 22:22:57 |
| 10 |       1 |         9 |              2 | 2020-04-09 22:22:57 |
+----+---------+-----------+----------------+---------------------+
10 rows in set (0,00 sec)

mysql> select * from target_types;
+----+----------+---------------------+
| id | name     | created_at          |
+----+----------+---------------------+
|  1 | messages | 2020-04-09 22:22:15 |
|  2 | users    | 2020-04-09 22:22:15 |
|  3 | media    | 2020-04-09 22:22:15 |
|  4 | posts    | 2020-04-09 22:22:15 |
+----+----------+---------------------+
4 rows in set (0,00 sec)

mysql>

3. Создал таблицу------------------------------------------

mysql> desc posts;
+--------------+--------------+------+-----+-------------------+-----------------------------------------------+
| Field        | Type         | Null | Key | Default           | Extra                                         |
+--------------+--------------+------+-----+-------------------+-----------------------------------------------+
| id           | int unsigned | NO   | PRI | NULL              | auto_increment                                |
| user_id      | int unsigned | NO   |     | NULL              |                                               |
| community_id | int unsigned | YES  |     | NULL              |                                               |
| head         | varchar(255) | YES  |     | NULL              |                                               |
| body         | text         | NO   |     | NULL              |                                               |
| media_id     | int unsigned | YES  |     | NULL              |                                               |
| created_at   | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED                             |
| updated_at   | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
+--------------+--------------+------+-----+-------------------+-----------------------------------------------+
8 rows in set (0,01 sec)

mysql>
Загрузил в нее посты с сайла http://filldb.info

mysql> select * from posts limit 5;
+----+---------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------+---------------------+---------------------+
| id | user_id | community_id | head                                                                                                                                                                                     | body                                                                                                                                                                                                   | media_id | created_at          | updated_at          |
+----+---------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------+---------------------+---------------------+
|  1 |      27 |           14 | Corporis dicta eos aperiam officia aut et aut. Exercitationem sit officia architecto et rerum maiores praesentium deleniti. Enim at delectus et ipsa.                                    | So they sat down, and felt quite strange at first; but she got up in great fear lest she should chance to be a queer thing, to be no doubt that it made Alice quite jumped; but she got into a.        |      101 | 2007-10-09 23:18:15 | 1980-10-14 13:58:41 |
|  2 |      46 |           16 | Enim ut et sed ducimus. Dicta aspernatur consequatur voluptas pariatur ut repellendus. Sed expedita et accusamus cum quibusdam id. Aut voluptatem id consequatur blanditiis.             | The Mouse only growled in reply. 'That's right!' shouted the Queen merely remarking that a moment's pause. The only things in the court!' and the whole thing very absurd, but they were nice grand.   |      101 | 2004-11-04 10:27:07 | 1981-01-13 04:56:10 |
|  3 |      52 |           11 | Ratione aspernatur aliquid est. Veritatis consectetur nisi quia neque ipsum qui deserunt. Numquam sint aut tempora modi cupiditate eos. Unde tenetur in excepturi voluptas facere quasi. | Bill! the master says you're to go through next walking about at the top of the fact. 'I keep them to be sure! However, everything is queer to-day.' Just then her head to feel a little girl or a.    |      103 | 1970-01-09 08:51:40 | 1985-03-20 15:20:44 |
|  4 |      59 |           16 | Neque soluta et harum qui quam cumque. Est consequatur sequi minima. Porro ratione consectetur rerum hic ex.                                                                             | And he got up in a great deal too far off to other parts of the room. The cook threw a frying-pan after her as she could do to come yet, please your Majesty,' said the King; 'and don't look at the.  |      101 | 1973-01-25 13:09:56 | 2014-06-29 17:30:13 |
|  5 |      68 |           15 | Amet dolores est voluptatem laborum. Consequatur nihil qui quaerat exercitationem illum. Impedit corporis et est et sint non sed. Ex qui iusto et vero.                                  | Alice!' she answered herself. 'How can you learn lessons in here? Why, there's hardly room for her. 'I wish I hadn't cried so much!' said Alice, who was talking. Alice could see it pop down a large. |      103 | 2012-03-31 09:28:30 | 1989-02-08 19:50:33 |
+----+---------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------+---------------------+---------------------+
5 rows in set (0,00 sec)

mysql>


5. Задал внешние ключи --------------------------------------------------------------------

mysql> alter table profiles modify photo_id int unsigned null;
Query OK, 0 rows affected (0,19 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc profiles;
+------------+--------------+------+-----+-------------------+-----------------------------------------------+
| Field      | Type         | Null | Key | Default           | Extra                                         |
+------------+--------------+------+-----+-------------------+-----------------------------------------------+
| user_id    | int unsigned | NO   | PRI | NULL              |                                               |
| gender     | char(1)      | NO   |     | NULL              |                                               |
| birthday   | date         | YES  |     | NULL              |                                               |
| city       | varchar(100) | YES  |     | NULL              |                                               |
| country    | varchar(100) | YES  |     | NULL              |                                               |
| photo_id   | int unsigned | YES  |     | NULL              |                                               |
| created_at | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED                             |
| updated_at | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
+------------+--------------+------+-----+-------------------+-----------------------------------------------+
8 rows in set (0,01 sec)

mysql> ALTER TABLE profiles ADD CONSTRAINT profiles_user_id_fk  FOREIGN KEY (user_id) REFERENCES users(id)   ON DELETE CASCADE, ADD CONSTRAINT profiles_photo_id_fk  FOREIGN KEY (photo_id) REFERENCES media(id)   ON DELETE SET NULL;
Query OK, 100 rows affected (0,05 sec)
Records: 100  Duplicates: 0  Warnings: 0

mysql> desc messages;
+--------------+--------------+------+-----+-------------------+-------------------+
| Field        | Type         | Null | Key | Default           | Extra             |
+--------------+--------------+------+-----+-------------------+-------------------+
| id           | int unsigned | NO   | PRI | NULL              | auto_increment    |
| from_user_id | int unsigned | NO   |     | NULL              |                   |
| to_user_id   | int unsigned | NO   |     | NULL              |                   |
| body         | text         | NO   |     | NULL              |                   |
| is_important | tinyint(1)   | YES  |     | NULL              |                   |
| is_delivered | tinyint(1)   | YES  |     | NULL              |                   |
| created_at   | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+--------------+--------------+------+-----+-------------------+-------------------+
7 rows in set (0,00 sec)

mysql> ALTER TABLE messages
    ->   ADD CONSTRAINT messages_from_user_id_fk
    ->     FOREIGN KEY (from_user_id) REFERENCES users(id),
    ->   ADD CONSTRAINT messages_to_user_id_fk
    ->     FOREIGN KEY (to_user_id) REFERENCES users(id);
Query OK, 100 rows affected (0,05 sec)
Records: 100  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE media MODIFY media_type_id int unsigned null;
Query OK, 0 rows affected (0,16 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE media  ADD CONSTRAINT media_media_type_id_fk   FOREIGN KEY (media_type_id) REFERENCES media_types(id)    ON DELETE SET NULL;
Query OK, 100 rows affected (0,03 sec)
Records: 100  Duplicates: 0  Warnings: 0

mysql> desc media;
+---------------+--------------+------+-----+-------------------+-----------------------------------------------+
| Field         | Type         | Null | Key | Default           | Extra                                         |
+---------------+--------------+------+-----+-------------------+-----------------------------------------------+
| id            | int unsigned | NO   | PRI | NULL              | auto_increment                                |
| media_type_id | int unsigned | YES  | MUL | NULL              |                                               |
| user_id       | int unsigned | NO   |     | NULL              |                                               |
| file_path     | varchar(255) | NO   |     | NULL              |                                               |
| size          | int          | NO   |     | NULL              |                                               |
| metadata      | longtext     | YES  |     | NULL              |                                               |
| created_at    | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED                             |
| updated_at    | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
+---------------+--------------+------+-----+-------------------+-----------------------------------------------+
8 rows in set (0,01 sec)

mysql> ALTER TABLE likes
    -> ADD CONSTRAINT likes_user_id_fk
    ->  FOREIGN KEY (user_id) REFERENCES users(id);
Query OK, 100 rows affected (0,02 sec)
Records: 100  Duplicates: 0  Warnings: 0

mysql> desc likes;
+----------------+--------------+------+-----+-------------------+-------------------+
| Field          | Type         | Null | Key | Default           | Extra             |
+----------------+--------------+------+-----+-------------------+-------------------+
| id             | int unsigned | NO   | PRI | NULL              | auto_increment    |
| user_id        | int unsigned | NO   | MUL | NULL              |                   |
| target_id      | int unsigned | NO   |     | NULL              |                   |
| target_type_id | int unsigned | NO   |     | NULL              |                   |
| created_at     | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+----------------+--------------+------+-----+-------------------+-------------------+
5 rows in set (0,00 sec)

mysql> ALTER TABLE likes ADD CONSTRAINT likes_target_type_id_fk  FOREIGN KEY (target_type_id) REFERENCES target_types(id);
Query OK, 100 rows affected (0,03 sec)
Records: 100  Duplicates: 0  Warnings: 0

mysql> desc likes;
+----------------+--------------+------+-----+-------------------+-------------------+
| Field          | Type         | Null | Key | Default           | Extra             |
+----------------+--------------+------+-----+-------------------+-------------------+
| id             | int unsigned | NO   | PRI | NULL              | auto_increment    |
| user_id        | int unsigned | NO   | MUL | NULL              |                   |
| target_id      | int unsigned | NO   |     | NULL              |                   |
| target_type_id | int unsigned | NO   | MUL | NULL              |                   |
| created_at     | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+----------------+--------------+------+-----+-------------------+-------------------+
5 rows in set (0,01 sec)

mysql> ALTER TABLE friendship  ADD CONSTRAINT friendship_user_id_fk   FOREIGN KEY (user_id) REFERENCES users(id);
Query OK, 100 rows affected (0,03 sec)
Records: 100  Duplicates: 0  Warnings: 0

mysql> desc friendship;
+--------------+--------------+------+-----+-------------------+-------------------+
| Field        | Type         | Null | Key | Default           | Extra             |
+--------------+--------------+------+-----+-------------------+-------------------+
| user_id      | int unsigned | NO   | PRI | NULL              |                   |
| friend_id    | int unsigned | NO   | PRI | NULL              |                   |
| status_id    | int unsigned | NO   |     | NULL              |                   |
| requested_at | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
| confirmed_at | datetime     | YES  |     | NULL              |                   |
+--------------+--------------+------+-----+-------------------+-------------------+
5 rows in set (0,00 sec)

mysql>
mysql> ALTER TABLE friendship ADD CONSTRAINT friendship_status_id_fk FOREIGN KEY (status_id) REFERENCES friendship_statuses(id);
Query OK, 100 rows affected (0,04 sec)
Records: 100  Duplicates: 0  Warnings: 0

mysql> desc friendship_statuses;
+-------+--------------+------+-----+---------+----------------+
| Field | Type         | Null | Key | Default | Extra          |
+-------+--------------+------+-----+---------+----------------+
| id    | int unsigned | NO   | PRI | NULL    | auto_increment |
| name  | varchar(150) | NO   | UNI | NULL    |                |
+-------+--------------+------+-----+---------+----------------+
2 rows in set (0,00 sec)

mysql> ALTER TABLE media
    ->  ADD CONSTRAINT media_user_id_fk
    ->   FOREIGN KEY (user_id) REFERENCES users(id);
Query OK, 100 rows affected (0,04 sec)
Records: 100  Duplicates: 0  Warnings: 0

mysql> desc media;
+---------------+--------------+------+-----+-------------------+-----------------------------------------------+
| Field         | Type         | Null | Key | Default           | Extra                                         |
+---------------+--------------+------+-----+-------------------+-----------------------------------------------+
| id            | int unsigned | NO   | PRI | NULL              | auto_increment                                |
| media_type_id | int unsigned | YES  | MUL | NULL              |                                               |
| user_id       | int unsigned | NO   | MUL | NULL              |                                               |
| file_path     | varchar(255) | NO   |     | NULL              |                                               |
| size          | int          | NO   |     | NULL              |                                               |
| metadata      | longtext     | YES  |     | NULL              |                                               |
| created_at    | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED                             |
| updated_at    | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
+---------------+--------------+------+-----+-------------------+-----------------------------------------------+
8 rows in set (0,00 sec)

mysql>
mysql> ALTER TABLE communities_users  ADD CONSTRAINT communities_users_user_id    FOREIGN KEY (user_id) REFERENCES users(id);
Query OK, 100 rows affected (0,03 sec)
Records: 100  Duplicates: 0  Warnings: 0

mysql> desc communities_users;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| community_id | int unsigned | NO   | PRI | NULL    |       |
| user_id      | int unsigned | NO   | PRI | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
2 rows in set (0,00 sec)

mysql> ALTER TABLE communities_users  ADD CONSTRAINT communities_users_user_id    FOREIGN KEY (user_id) REFERENCES users(id);
Query OK, 100 rows affected (0,03 sec)
Records: 100  Duplicates: 0  Warnings: 0

mysql> desc communities_users;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| community_id | int unsigned | NO   | PRI | NULL    |       |
| user_id      | int unsigned | NO   | PRI | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
2 rows in set (0,00 sec)

mysql> show create table communities_users;
+-------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table             | Create Table                                                                                                                                                                                                                                                                                                                                                   |
+-------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| communities_users | CREATE TABLE `communities_users` (
  `community_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`),
  KEY `communities_users_user_id` (`user_id`),
  CONSTRAINT `communities_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci |
+-------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0,00 sec)

mysql> ALTER TABLE communities_users ADD CONSTRAINT communities_community_id_fk FOREIGN KEY (community_id) REFERENCES communities(id);
Query OK, 100 rows affected (0,03 sec)
Records: 100  Duplicates: 0  Warnings: 0

mysql> desc communities;
+-------+--------------+------+-----+---------+----------------+
| Field | Type         | Null | Key | Default | Extra          |
+-------+--------------+------+-----+---------+----------------+
| id    | int unsigned | NO   | PRI | NULL    | auto_increment |
| name  | varchar(150) | NO   | UNI | NULL    |                |
+-------+--------------+------+-----+---------+----------------+
2 rows in set (0,00 sec)
mysql> mysql> show create table communities_users;
+-------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table             | Create Table                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
+-------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| communities_users | CREATE TABLE `communities_users` (
  `community_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`),
  KEY `communities_users_user_id` (`user_id`),
  CONSTRAINT `communities_community_id_fk` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`),
  CONSTRAINT `communities_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci |
+-------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0,01 sec)

mysql>
mysql> desc posts;
+--------------+--------------+------+-----+-------------------+-----------------------------------------------+
| Field        | Type         | Null | Key | Default           | Extra                                         |
+--------------+--------------+------+-----+-------------------+-----------------------------------------------+
| id           | int unsigned | NO   | PRI | NULL              | auto_increment                                |
| user_id      | int unsigned | NO   |     | NULL              |                                               |
| community_id | int unsigned | YES  |     | NULL              |                                               |
| head         | varchar(255) | YES  |     | NULL              |                                               |
| body         | text         | NO   |     | NULL              |                                               |
| media_id     | int unsigned | YES  |     | NULL              |                                               |
| created_at   | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED                             |
| updated_at   | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
+--------------+--------------+------+-----+-------------------+-----------------------------------------------+
8 rows in set (0,00 sec)

mysql> ALTER TABLE posts ADD CONSTRAINT posts_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id);
Query OK, 100 rows affected (0,03 sec)
Records: 100  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE posts ADD CONSTRAINT community_id_fk FOREIGN KEY (community_id) REFERENCES comminities(id);
ERROR 1824 (HY000): Failed to open the referenced table 'comminities'
mysql> ALTER TABLE posts ADD CONSTRAINT community_id_fk FOREIGN KEY (community_id) REFERENCES communities(id);
Query OK, 100 rows affected (0,03 sec)
Records: 100  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE posts ADD CONSTRAINT media_id_fk FOREIGN KEY (media_id) REFERENCES media(id);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`vk`.`#sql-2da_8`, CONSTRAINT `media_id_fk` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`))
mysql>

mysql> show create table posts;
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table | Create Table                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| posts | CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `community_id` int unsigned DEFAULT NULL,
  `head` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `media_id` int unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_fk` (`user_id`),
  KEY `community_id_fk` (`community_id`),
  KEY `media_id_fk` (`media_id`),
  CONSTRAINT `community_id_fk` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`),
  CONSTRAINT `media_id_fk` FOREIGN KEY (`media_id`) REFERENCES `media_types` (`id`),
  CONSTRAINT `posts_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci |
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0,00 sec)

mysql>

2. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

юзеры с лайками!
SELECT user_id FROM likes WHERE target_type_id=(SELECT id FROM target_types WHERE name='users'); - юзеры с лайками!

клличество лайков на юзера
mysql> SELECT count(*) as count, user_id FROM likes WHERE target_type_id=(SELECT id FROM target_types WHERE name='users') group by user_id;
+----------+---------+
| count(*) | user_id |
+----------+---------+
|        3 |      12 |
|        1 |      75 |
|        1 |       1 |
|        1 |      45 |
|        1 |      36 |
|        2 |      94 |
|        1 |      55 |
|        2 |      33 |
|        1 |      56 |
|        1 |      71 |
|        1 |      89 |
|        1 |       2 |
|        1 |      91 |
|        1 |      64 |
|        1 |      67 |
|        1 |      62 |
|        1 |      99 |
|        1 |      43 |
|        1 |      28 |
|        1 |      32 |
+----------+---------+
20 rows in set (0,00 sec)

- ---------------------------10 самых молодых юзеров ( id)

mysql> SELECT user_id, TIMESTAMPDIFF(YEAR, birthday, NOW()) as age FROM profiles order by age limit 10;
+---------+------+
| user_id | age  |
+---------+------+
|      29 |    0 |
|      68 |    0 |
|      70 |    1 |
|      33 |    2 |
|      43 |    2 |
|      81 |    2 |
|      22 |    3 |
|      11 |    3 |
|      24 |    4 |
|      15 |    4 |
+---------+------+
10 rows in set (0,00 sec)

---------сумма лайков всех пользователей

mysql> SELECT SUM(a.count) FROM (SELECT count(*) as count, user_id FROM likes WHERE target_type_id=(SELECT id FROM target_types WHERE name='users') group by user_id) AS a;
+--------------+
| SUM(a.count) |
+--------------+
|           24 |
+--------------+
1 row in set (0,00 sec)

mysql>

;SELECT sum(a.count) FROM

(SELECT count(*) as count, user_id as user FROM likes WHERE target_type_id=(SELECT id FROM target_types WHERE name='users') group by user_id) AS a,

(SELECT user_id, TIMESTAMPDIFF(YEAR, birthday, NOW()) as age FROM profiles order by age limit 10) AS b WHERE a.user=b.user_id

Сумма лайков 10 самых молодых пользователей.
mysql> SELECT sum(a.count) FROM
    ->
    -> (SELECT count(*) as count, user_id as user FROM likes WHERE target_type_id=(SELECT id FROM target_types WHERE name='users') group by user_id) AS a,
    ->
    -> (SELECT user_id, TIMESTAMPDIFF(YEAR, birthday, NOW()) as age FROM profiles order by age limit 10) AS b WHERE a.user=b.user_id;
+--------------+
| sum(a.count) |
+--------------+
|            3 |
+--------------+
1 row in set (0,01 sec)

mysql>

3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

Количество лайков на ужера и его пол

mysql> SELECT a.count, a.user_id, b.gender FROM (select count(*) AS count, user_id from likes group by user_id) AS a, (SELECT gender, user_id FROM profiles) AS b WHERE a.user_id=b.user_id;
+-------+---------+--------+
| count | user_id | gender |
+-------+---------+--------+
|     2 |       1 | f      |
|     2 |       2 | f      |
|     1 |       6 | m      |
|     1 |       7 | m      |
|     1 |       9 | m      |
|     1 |      11 | m      |
|     4 |      12 | f      |
|     1 |      14 | f      |
|     3 |      15 | m      |
|     1 |      17 | f      |
|     2 |      20 | f      |
|     2 |      21 | f      |
|     1 |      22 | f      |
|     1 |      26 | m      |
|     2 |      28 | m      |
|     1 |      29 | f      |
|     1 |      32 | m      |
|     2 |      33 | m      |
|     1 |      34 | m      |
|     1 |      36 | f      |
|     1 |      37 | f      |
|     2 |      39 | m      |
|     1 |      40 | f      |
|     4 |      41 | m      |
|     1 |      42 | f      |
|     2 |      43 | f      |
|     1 |      44 | f      |
|     1 |      45 | f      |
|     1 |      47 | f      |
|     1 |      48 | f      |
|     1 |      49 | m      |
|     1 |      50 | m      |
|     1 |      54 | m      |
|     3 |      55 | m      |
|     1 |      56 | f      |
|     1 |      58 | f      |
|     3 |      59 | m      |
|     2 |      62 | m      |
|     1 |      63 | f      |
|     1 |      64 | m      |
|     1 |      65 | f      |
|     2 |      67 | f      |
|     3 |      68 | m      |
|     1 |      69 | f      |
|     1 |      71 | m      |
|     1 |      72 | f      |
|     1 |      73 | f      |
|     2 |      74 | f      |
|     3 |      75 | m      |
|     1 |      76 | m      |
|     3 |      77 | m      |
|     1 |      78 | f      |
|     1 |      80 | f      |
|     2 |      84 | m      |
|     1 |      87 | f      |
|     2 |      88 | f      |
|     1 |      89 | f      |
|     2 |      91 | f      |
|     1 |      93 | f      |
|     2 |      94 | f      |
|     1 |      96 | f      |
|     2 |      97 | m      |
|     2 |      98 | m      |
|     1 |      99 | m      |
|     1 |     100 | f      |
+-------+---------+--------+
65 rows in set (0,00 sec)

mysql>
количество лайков на М и Ж
mysql> SELECT a.count, b.gender FROM (select count(*) AS count, user_id from likes group by user_id) AS a, (SELECT gender, user_id FROM profiles) AS b WHERE a.user_id=b.user_id;
+-------+--------+
| count | gender |
+-------+--------+
|     2 | f      |
|     2 | f      |
|     1 | m      |
|     1 | m      |
|     1 | m      |
|     1 | m      |
|     4 | f      |
|     1 | f      |
|     3 | m      |
|     1 | f      |
|     2 | f      |
|     2 | f      |
|     1 | f      |
|     1 | m      |
|     2 | m      |
|     1 | f      |
|     1 | m      |
|     2 | m      |
|     1 | m      |
|     1 | f      |
|     1 | f      |
|     2 | m      |
|     1 | f      |
|     4 | m      |
|     1 | f      |
|     2 | f      |
|     1 | f      |
|     1 | f      |
|     1 | f      |
|     1 | f      |
|     1 | m      |
|     1 | m      |
|     1 | m      |
|     3 | m      |
|     1 | f      |
|     1 | f      |
|     3 | m      |
|     2 | m      |
|     1 | f      |
|     1 | m      |
|     1 | f      |
|     2 | f      |
|     3 | m      |
|     1 | f      |
|     1 | m      |
|     1 | f      |
|     1 | f      |
|     2 | f      |
|     3 | m      |
|     1 | m      |
|     3 | m      |
|     1 | f      |
|     1 | f      |
|     2 | m      |
|     1 | f      |
|     2 | f      |
|     1 | f      |
|     2 | f      |
|     1 | f      |
|     2 | f      |
|     1 | f      |
|     2 | m      |
|     2 | m      |
|     1 | m      |
|     1 | f      |
+-------+--------+
65 rows in set (0,00 sec)

mysql>
mysql> SELECT count(a.count), b.gender FROM (select count(*) AS count, user_id from likes group by user_id) AS a, (SELECT gender, user_id FROM profiles) AS b WHERE a.user_id=b.user_id group by b.gender;
+----------------+--------+
| count(a.count) | gender |
+----------------+--------+
|             37 | f      |
|             28 | m      |
+----------------+--------+
2 rows in set (0,00 sec)

4. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

НЕ УСПЕВАЮ СДЕЛАТЬ к 12.00 10.04.20 ( до 12.00 надо сдать задание)

СЕГОДНЯ-ЗАТВРА СДЕЛАЮ Загружу коммитом на GIT.



