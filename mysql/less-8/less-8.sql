2. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

Ошибочный запрос:
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

А ТЕПЕРЬ ВЕРНОЕ РЕШЕНИЕ:
Запрос выводит самых моложых пользователей и количество лайков поставленных ЭТИМ пользователям

 SELECT count(*) AS likes, ss.uu AS 'yang used_id'
 FROM
(SELECT l.target_id AS uu   # Подзапрос выдает target_id юзера получившего лайк
	FROM likes as l
    JOIN target_types AS t
    ON l.target_type_id = t.id    # target_id - users who have likes
    WHERE t.name = 'users') AS ss # users who have likes
    JOIN
(SELECT                     # Подзапрос выдает 10 самых молодых пользователей
	p.user_id AS u,
    TIMESTAMPDIFF(YEAR, p.birthday, NOW()) as age
	FROM profiles AS p
    ORDER BY age limit 10) AS bb
 ON bb.u = ss.uu   # объеденяем 2 подзапроса при условии, что user_id из 10 молодых = target_id, т.е. что этот юзер получил лайк
 GROUP BY ss.uu;



mysql>  SELECT count(*) AS likes, ss.uu AS 'yang used_id'
    ->  #SELECT *
    ->  FROM
    -> (SELECT l.target_id AS uu
    -> FROM likes as l
    ->     JOIN target_types AS t
    ->     ON l.target_type_id = t.id    # target_id - users who have likes
    ->     WHERE t.name = 'users') AS ss # users who have likes
    ->     JOIN
    -> (SELECT
    -> p.user_id AS u,
    ->     TIMESTAMPDIFF(YEAR, p.birthday, NOW()) as age
    -> FROM profiles AS p
    ->     ORDER BY age limit 10) AS bb
    ->  ON bb.u = ss.uu
    ->  GROUP BY ss.uu;
+-------+--------------+
| likes | yang used_id |
+-------+--------------+
|     2 |           70 |
|     2 |           22 |
|     1 |           29 |
|     1 |           15 |
|     2 |           68 |
|     2 |           43 |
+-------+--------------+
6 rows in set (0,00 sec)

mysql>

Длаее суммирование лайков

mysql> SELECT SUM(SUMSUM.likes) AS SUM_LIKES_10_YANG_USERS FROM
    -> (
    ->  SELECT count(*) AS likes, ss.uu AS 'yang used_id'
    ->
    ->  FROM
    -> (SELECT l.target_id AS uu
    -> FROM likes as l
    ->     JOIN target_types AS t
    ->     ON l.target_type_id = t.id    # target_id - users who have likes
    ->     WHERE t.name = 'users') AS ss # users who have likes
    ->     JOIN
    -> (SELECT
    -> p.user_id AS u,
    ->     TIMESTAMPDIFF(YEAR, p.birthday, NOW()) as age
    -> FROM profiles AS p
    ->     ORDER BY age limit 10) AS bb
    ->  ON bb.u = ss.uu
    ->  GROUP BY ss.uu
    ->  ) AS SUMSUM;
+-------------------------+
| SUM_LIKES_10_YANG_USERS |
+-------------------------+
|                      10 |
+-------------------------+
1 row in set (0,00 sec)

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
ВЫВОД ТАБЛИЦЫ АКТИВНОСТИ ВСЕХ ПОЛЬЗОВАТЕЛЕЙ:


ДОбавил COUNT в сумму, чтобы проссумировать несколько значений для конкретного пользователя.

SELECT CONCAT(u.first_name," ",u.last_name) AS user,
	p.user_id AS posts,
    m.from_user_id AS messages,
    media.user_id AS media,
    l.user_id AS likes,
    (COUNT(IFNULL(p.user_id,0)) + COUNT(IFNULL(m.from_user_id,0)) + COUNT(IFNULL(media.user_id,0)) + COUNT(IFNULL(l.user_id,0))) AS `user activity`

    FROM users AS u
    LEFT JOIN posts AS p
    ON p.user_id = u.id
    LEFT JOIN messages AS m
    ON m.from_user_id = u.id
    LEFT JOIN media AS media
    ON media.user_id = u.id
    LEFT JOIN likes AS l
    ON l.user_id = u.id
    GROUP BY u.id
    ORDER BY `user activity` ASC
mysql> SELECT CONCAT(u.first_name," ",u.last_name) AS user,
    -> p.user_id AS posts,
    ->     m.from_user_id AS messages,
    ->     media.user_id AS media,
    ->     l.user_id AS likes,
    ->     (COUNT(IFNULL(p.user_id,0)) + COUNT(IFNULL(m.from_user_id,0)) + COUNT(IFNULL(media.user_id,0)) + COUNT(IFNULL(l.user_id,0))) AS `user activity`
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
    ->     limit 100;
+----------------------+-------+----------+-------+-------+---------------+
| user                 | posts | messages | media | likes | user activity |
+----------------------+-------+----------+-------+-------+---------------+
| Wiley Ullrich        |    58 |     NULL |  NULL |    58 |             4 |
| Imogene Breitenberg  |  NULL |       78 |  NULL |    78 |             4 |
| Aglae Emard          |  NULL |       71 |    71 |    71 |             4 |
| Dahlia Anderson      |  NULL |     NULL |    26 |    26 |             4 |
| Laisha Stanton       |    66 |     NULL |    66 |  NULL |             4 |
| Maci Murphy          |  NULL |     NULL |    64 |    64 |             4 |
| Elmo Marquardt       |    30 |     NULL |    30 |  NULL |             4 |
| Catalina Bogisich    |    34 |     NULL |    34 |    34 |             4 |
| Paris Lebsack        |    35 |       35 |    35 |  NULL |             4 |
| Vladimir Dibbert     |    24 |     NULL |    24 |  NULL |             4 |
| Kiley Rohan          |    37 |     NULL |    37 |    37 |             4 |
| Preston Bayer        |  NULL |       54 |  NULL |    54 |             4 |
| Brycen Howe          |  NULL |     NULL |    51 |  NULL |             4 |
| Alda Donnelly        |    49 |       49 |    49 |    49 |             4 |
| Rosa Hoeger          |    48 |     NULL |    48 |    48 |             4 |
| Baby Hamill          |  NULL |     NULL |    44 |    44 |             4 |
| Jody Reilly          |  NULL |       45 |  NULL |    45 |             4 |
| Ryan Braun           |    46 |       46 |  NULL |  NULL |             4 |
| Bette Boehm          |  NULL |     NULL |    93 |    93 |             4 |
| Drew Runolfsdottir   |    11 |     NULL |    11 |    11 |             4 |
| Maryjane Koss        |  NULL |        9 |  NULL |     9 |             4 |
| Sheldon Leannon      |    79 |     NULL |  NULL |  NULL |             4 |
| Rodrick Ortiz        |  NULL |       87 |    87 |    87 |             4 |
| Matilda Watsica      |  NULL |     NULL |    83 |  NULL |             4 |
| Zoie Hayes           |  NULL |     NULL |    16 |  NULL |             4 |
| Marion Legros        |  NULL |       17 |  NULL |    17 |             4 |
| Annamarie Johns      |     3 |     NULL |  NULL |  NULL |             4 |
| Chet Hills           |    99 |     NULL |  NULL |    99 |             4 |
| Lilliana Powlowski   |    95 |     NULL |    95 |  NULL |             8 |
| Levi Boehm           |    60 |       60 |  NULL |  NULL |             8 |
| Maximillian Keeling  |    53 |     NULL |    53 |  NULL |             8 |
| Mariana Thompson     |    96 |       96 |    96 |    96 |             8 |
| Anya Russel          |    92 |       92 |    92 |  NULL |             8 |
| Amara Stiedemann     |    56 |       56 |    56 |    56 |             8 |
| Waylon Lakin         |  NULL |       98 |  NULL |    98 |             8 |
| Roberto Kulas        |    91 |       91 |  NULL |    91 |             8 |
| Raquel Morissette    |  NULL |     NULL |    90 |  NULL |             8 |
| Kirstin Gislason     |  NULL |       61 |  NULL |  NULL |             8 |
| William Turcotte     |    63 |       63 |  NULL |    63 |             8 |
| Jonathan Ritchie     |  NULL |       65 |    65 |    65 |             8 |
| Serena Cormier       |    82 |     NULL |    82 |  NULL |             8 |
| Claudie Larson       |    70 |     NULL |  NULL |  NULL |             8 |
| Toney Halvorson      |     2 |     NULL |  NULL |     2 |             8 |
| Crawford Homenick    |    72 |       72 |    72 |    72 |             8 |
| Chance Littel        |    73 |     NULL |    73 |    73 |             8 |
| Maximilian Bosco     |    76 |     NULL |    76 |    76 |             8 |
| Adrian Fay           |    22 |       22 |    22 |    22 |             8 |
| Jean Ryan            |    23 |       23 |    23 |  NULL |             8 |
| Simone Beahan        |  NULL |     NULL |     1 |     1 |             8 |
| Katlyn Ritchie       |     4 |        4 |  NULL |  NULL |             8 |
| Cordie Raynor        |    10 |     NULL |  NULL |  NULL |             8 |
| Aubrey Klein         |  NULL |     NULL |  NULL |    39 |             8 |
| Ebony Pollich        |     8 |     NULL |     8 |  NULL |             8 |
| Julien Beier         |     7 |        7 |  NULL |     7 |             8 |
| Alexzander Gottlieb  |  NULL |     NULL |    31 |  NULL |             8 |
| Devan McClure        |    33 |     NULL |  NULL |    33 |            12 |
| Emelie Ferry         |  NULL |       25 |    25 |  NULL |            12 |
| Jonathon Price       |  NULL |     NULL |    89 |    89 |            12 |
| Beau Spencer         |    13 |     NULL |    13 |  NULL |            12 |
| Meghan Hyatt         |    19 |       19 |  NULL |  NULL |            12 |
| Cody O'Hara          |    59 |       59 |  NULL |    59 |            12 |
| Mariano Spencer      |    36 |       36 |  NULL |    36 |            12 |
| Dedrick O'Reilly     |    38 |     NULL |  NULL |  NULL |            12 |
| Deanna Reinger       |    86 |     NULL |  NULL |  NULL |            12 |
| Maximus Koepp        |  NULL |       42 |  NULL |    42 |            12 |
| Kristy Reichel       |  NULL |       14 |    14 |    14 |            12 |
| Alize Eichmann       |  NULL |       94 |    94 |    94 |            16 |
| Rose Pollich         |  NULL |       18 |    18 |  NULL |            16 |
| Gabrielle Swift      |  NULL |       12 |    12 |    12 |            16 |
| Enola Monahan        |    47 |       47 |    47 |    47 |            16 |
| Lucio Bauch          |  NULL |       81 |    81 |  NULL |            16 |
| Kristian Deckow      |    84 |     NULL |  NULL |    84 |            16 |
| Rasheed Pagac        |  NULL |       69 |    69 |    69 |            16 |
| Annamae Rosenbaum    |    27 |       27 |    27 |  NULL |            16 |
| Sydnee Wunsch        |    29 |       29 |    29 |    29 |            16 |
| Johnathan Kihn       |  NULL |       62 |  NULL |    62 |            16 |
| Holly Bailey         |    57 |     NULL |  NULL |  NULL |            16 |
| Beaulah Bernier      |     5 |        5 |  NULL |     5 |            16 |
| Jerel Christiansen   |    97 |       97 |  NULL |    97 |            16 |
| Michele Schimmel     |    50 |       50 |    50 |    50 |            16 |
| Justice Jast         |   100 |      100 |  NULL |   100 |            16 |
| Teagan Botsford      |  NULL |     NULL |    74 |    74 |            24 |
| Dustin Little        |     6 |        6 |     6 |     6 |            24 |
| Catalina Wilkinson   |  NULL |       43 |    43 |    43 |            24 |
| Danielle Kerluke     |  NULL |       77 |    77 |    77 |            24 |
| Jonathon Stoltenberg |  NULL |       40 |    40 |    40 |            24 |
| Howard Harvey        |  NULL |       28 |    28 |    28 |            24 |
| Constantin Ryan      |    75 |     NULL |    75 |    75 |            24 |
| Cade D'Amore         |    85 |     NULL |    85 |  NULL |            32 |
| Sister Pacocha       |  NULL |       41 |  NULL |    41 |            32 |
| Narciso Heller       |    67 |       67 |  NULL |    67 |            32 |
| Eve Hand             |    80 |       80 |    80 |    80 |            32 |
| Eliseo Hagenes       |    52 |     NULL |    52 |  NULL |            36 |
| Unique Willms        |  NULL |     NULL |    15 |    15 |            40 |
| Samara Carter        |    20 |     NULL |    20 |    20 |            48 |
| Aurore Abernathy     |    32 |       32 |    32 |    32 |            48 |
| Aron Gorczany        |    55 |       55 |    55 |    55 |            48 |
| Hassan Lind          |  NULL |       88 |    88 |    88 |            48 |
| Carissa Heller       |    21 |       21 |    21 |    21 |            64 |
| Trinity Zulauf       |    68 |       68 |    68 |    68 |           240 |
+----------------------+-------+----------+-------+-------+---------------+
100 rows in set (0,00 sec)

mysql>
mysql> SELECT CONCAT(u.first_name," ",u.last_name) AS user,
    -> p.user_id AS posts,
    ->     m.from_user_id AS messages,
    ->     media.user_id AS media,
    ->     l.user_id AS likes,
    ->     (COUNT(IFNULL(p.user_id,0)) + COUNT(IFNULL(m.from_user_id,0)) + COUNT(IFNULL(media.user_id,0)) + COUNT(IFNULL(l.user_id,0))) AS `user activity`
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
+--------------------+-------+----------+-------+-------+---------------+
| user               | posts | messages | media | likes | user activity |
+--------------------+-------+----------+-------+-------+---------------+
| Elmo Marquardt     |    30 |     NULL |    30 |  NULL |             4 |
| Paris Lebsack      |    35 |       35 |    35 |  NULL |             4 |
| Annamarie Johns    |     3 |     NULL |  NULL |  NULL |             4 |
| Dahlia Anderson    |  NULL |     NULL |    26 |    26 |             4 |
| Zoie Hayes         |  NULL |     NULL |    16 |  NULL |             4 |
| Marion Legros      |  NULL |       17 |  NULL |    17 |             4 |
| Catalina Bogisich  |    34 |     NULL |    34 |    34 |             4 |
| Maryjane Koss      |  NULL |        9 |  NULL |     9 |             4 |
| Vladimir Dibbert   |    24 |     NULL |    24 |  NULL |             4 |
| Drew Runolfsdottir |    11 |     NULL |    11 |    11 |             4 |
+--------------------+-------+----------+-------+-------+---------------+
10 rows in set (0,00 sec)

mysql>
