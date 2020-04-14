2. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.


mysql> Select SUM(ll.lakes) FROM
    -> (SELECT count(*) AS lakes
    -> FROM likes AS l
    ->       JOIN target_types As t
    ->       ON l.target_type_id = t.id
    ->   JOIN profiles AS p
    ->       ON l.target_id = p.user_id
    -> WHERE t.name = 'users'
    -> GROUP BY l.target_id
    -> ORDER BY TIMESTAMPDIFF(YEAR, p.birthday, NOW())
    ->     limit 10) AS ll;
+---------------+
| SUM(ll.lakes) |
+---------------+
|            11 |
+---------------+
1 row in set (0,00 sec)

ДЛЯ ПРОВЕРКИ РЕЗУЛЬТАТА ВЫВОДИМ СЛЕДУЮЩИЕ ДАННЫЕ:

mysql> SELECT count(*) AS lakes, l.target_id AS `users.id`, t.name AS target_tape, TIMESTAMPDIFF(YEAR, p.birthday, NOW()) as age, p.birthday
    -> FROM likes AS l
    ->       JOIN target_types As t
    ->       ON l.target_type_id = t.id
    ->   JOIN profiles AS p
    ->       ON l.target_id = p.user_id
    -> WHERE t.id = 2
    -> GROUP BY l.target_id
    -> ORDER BY age limit 20;
+-------+----------+-------------+------+------------+
| lakes | users.id | target_tape | age  | birthday   |
+-------+----------+-------------+------+------------+
|     1 |       29 | users       |    0 | 2019-11-01 |
|     1 |       70 | users       |    1 | 2019-03-07 |
|     2 |       22 | users       |    3 | 2016-08-29 |
|     1 |       94 | users       |    4 | 2015-04-22 |
|     1 |       35 | users       |    4 | 2016-04-10 |
|     1 |       15 | users       |    4 | 2015-06-08 |
|     1 |       23 | users       |    5 | 2014-04-21 |
|     1 |       83 | users       |   12 | 2007-10-16 |
|     1 |       25 | users       |   13 | 2006-11-21 |
|     1 |       84 | users       |   16 | 2003-05-22 |
|     3 |        6 | users       |   17 | 2002-08-03 |
|     2 |        8 | users       |   18 | 2001-12-27 |
|     1 |       77 | users       |   18 | 2002-03-31 |
|     2 |       14 | users       |   23 | 1996-07-08 |
|     1 |       27 | users       |   23 | 1996-09-21 |
|     1 |       82 | users       |   31 | 1989-01-28 |
|     1 |        9 | users       |   36 | 1983-11-29 |
|     1 |       69 | users       |   38 | 1981-12-21 |
|     1 |       88 | users       |   40 | 1979-05-26 |
+-------+----------+-------------+------+------------+
19 rows in set (0,00 sec)

mysql>

3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

mysql>  SELECT count(*) AS count_likes, l.user_id AS user_id, p.gender
    -> FROM profiles AS p
    ->     INNER JOIN likes AS l
    ->     ON p.user_id = l.user_id
    ->     GROUP BY l.user_id;
+-------------+---------+--------+
| count_likes | user_id | gender |
+-------------+---------+--------+
|           2 |       1 | m      |
|           2 |       2 | m      |
|           1 |       6 | m      |
|           1 |       7 | m      |
|           1 |       9 | m      |
|           1 |      11 | m      |
|           4 |      12 | f      |
|           1 |      14 | f      |
|           3 |      15 | m      |
|           1 |      17 | f      |
|           2 |      20 | f      |
|           2 |      21 | f      |
|           1 |      22 | f      |
|           1 |      26 | m      |
|           2 |      28 | m      |
|           1 |      29 | f      |
|           1 |      32 | m      |
|           2 |      33 | m      |
|           1 |      34 | m      |
|           1 |      36 | f      |
|           1 |      37 | f      |
|           2 |      39 | m      |
|           1 |      40 | f      |
|           4 |      41 | m      |
|           1 |      42 | f      |
|           2 |      43 | f      |
|           1 |      44 | f      |
|           1 |      45 | f      |
|           1 |      47 | f      |
|           1 |      48 | f      |
|           1 |      49 | m      |
|           1 |      50 | m      |
|           1 |      54 | m      |
|           3 |      55 | m      |
|           1 |      56 | f      |
|           1 |      58 | f      |
|           3 |      59 | m      |
|           2 |      62 | m      |
|           1 |      63 | f      |
|           1 |      64 | m      |
|           1 |      65 | f      |
|           2 |      67 | f      |
|           3 |      68 | m      |
|           1 |      69 | f      |
|           1 |      71 | m      |
|           1 |      72 | f      |
|           1 |      73 | f      |
|           2 |      74 | f      |
|           3 |      75 | m      |
|           1 |      76 | m      |
|           3 |      77 | m      |
|           1 |      78 | f      |
|           1 |      80 | f      |
|           2 |      84 | m      |
|           1 |      87 | f      |
|           2 |      88 | f      |
|           1 |      89 | f      |
|           2 |      91 | f      |
|           1 |      93 | f      |
|           2 |      94 | f      |
|           1 |      96 | f      |
|           2 |      97 | m      |
|           2 |      98 | m      |
|           1 |      99 | m      |
|           1 |     100 | f      |
+-------------+---------+--------+
65 rows in set (0,00 sec)

mysql> SELECT count(*) AS count_likes, p.gender
    -> FROM profiles AS p
    -> INNER JOIN likes AS l
    -> ON p.user_id = l.user_id
    -> GROUP BY p.gender
    ->     ORDER BY count_likes DESC;
+-------------+--------+
| count_likes | gender |
+-------------+--------+
|          54 | m      |
|          46 | f      |
+-------------+--------+
2 rows in set (0,00 sec)

mysql> SELECT count(*) AS count_likes, p.gender
    -> FROM profiles AS p
    -> INNER JOIN likes AS l
    -> ON p.user_id = l.user_id
    -> GROUP BY p.gender
    ->     ORDER BY count_likes DESC
    ->     limit 1;
+-------------+--------+
| count_likes | gender |
+-------------+--------+
|          54 | m      |
+-------------+--------+
1 row in set (0,00 sec)

mysql>


4. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

mysql> SELECT CONCAT(u.first_name," ",u.last_name) AS user, p.user_id AS posts, m.from_user_id AS messages, media.user_id AS media, l.user_id AS likes
    -> FROM users AS u
    ->     LEFT JOIN posts AS p
    ->     ON p.user_id = u.id
    ->     LEFT JOIN messages AS m
    ->     ON m.from_user_id = u.id
    ->     LEFT JOIN media AS media
    ->     ON media.user_id = u.id
    ->     LEFT JOIN likes AS l
    ->     ON l.user_id = u.id
    ->     GROUP BY u.id
    ->     limit 20;
+--------------------+-------+----------+-------+-------+
| user               | posts | messages | media | likes |
+--------------------+-------+----------+-------+-------+
| Simone Beahan      |  NULL |     NULL |     1 |     1 |
| Toney Halvorson    |     2 |     NULL |  NULL |     2 |
| Annamarie Johns    |     3 |     NULL |  NULL |  NULL |
| Katlyn Ritchie     |     4 |        4 |  NULL |  NULL |
| Beaulah Bernier    |     5 |        5 |  NULL |  NULL |
| Dustin Little      |     6 |        6 |     6 |     6 |
| Julien Beier       |     7 |        7 |  NULL |     7 |
| Ebony Pollich      |     8 |     NULL |     8 |  NULL |
| Maryjane Koss      |  NULL |        9 |  NULL |     9 |
| Cordie Raynor      |    10 |     NULL |  NULL |  NULL |
| Drew Runolfsdottir |    11 |     NULL |    11 |    11 |
| Gabrielle Swift    |  NULL |       12 |    12 |    12 |
| Beau Spencer       |    13 |     NULL |    13 |  NULL |
| Kristy Reichel     |  NULL |       14 |    14 |    14 |
| Unique Willms      |  NULL |     NULL |    15 |    15 |
| Zoie Hayes         |  NULL |     NULL |    16 |  NULL |
| Marion Legros      |  NULL |       17 |  NULL |    17 |
| Rose Pollich       |  NULL |       18 |    18 |  NULL |
| Meghan Hyatt       |    19 |       19 |  NULL |  NULL |
| Samara Carter      |    20 |     NULL |    20 |    20 |
+--------------------+-------+----------+-------+-------+
20 rows in set (0,00 sec)

mysql> SELECT CONCAT(u.first_name," ",u.last_name) AS user,
    -> p.user_id AS posts,
    ->     m.from_user_id AS messages,
    ->     media.user_id AS media,
    ->     l.user_id AS likes,
    ->     (IFNULL(p.user_id,0) + IFNULL(m.from_user_id,0) + IFNULL(media.user_id,0) + IFNULL(l.user_id,0)) AS `user activity`
    ->
    ->     FROM users AS u
    ->     LEFT JOIN posts AS p
    ->     ON p.user_id = u.id
    ->     LEFT JOIN messages AS m
    ->     ON m.from_user_id = u.id
    ->     LEFT JOIN media AS media
    ->     ON media.user_id = u.id
    ->     LEFT JOIN likes AS l
    ->     ON l.user_id = u.id
    ->     GROUP BY u.id
    ->     ORDER BY `user activity` ASC
    ->     limit 10;
+-----------------+-------+----------+-------+-------+---------------+
| user            | posts | messages | media | likes | user activity |
+-----------------+-------+----------+-------+-------+---------------+
| Simone Beahan   |  NULL |     NULL |     1 |     1 |             2 |
| Annamarie Johns |     3 |     NULL |  NULL |  NULL |             3 |
| Toney Halvorson |     2 |     NULL |  NULL |     2 |             4 |
| Katlyn Ritchie  |     4 |        4 |  NULL |  NULL |             8 |
| Beaulah Bernier |     5 |        5 |  NULL |  NULL |            10 |
| Cordie Raynor   |    10 |     NULL |  NULL |  NULL |            10 |
| Ebony Pollich   |     8 |     NULL |     8 |  NULL |            16 |
| Zoie Hayes      |  NULL |     NULL |    16 |  NULL |            16 |
| Maryjane Koss   |  NULL |        9 |  NULL |     9 |            18 |
| Julien Beier    |     7 |        7 |  NULL |     7 |            21 |
+-----------------+-------+----------+-------+-------+---------------+
10 rows in set (0,00 sec)

mysql>
