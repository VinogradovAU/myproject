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
    ->     ORDER BY `user activity` ASC;
+----------------------+-------+----------+-------+-------+---------------+
| user                 | posts | messages | media | likes | user activity |
+----------------------+-------+----------+-------+-------+---------------+
| Simone Beahan        |  NULL |     NULL |     1 |     1 |             2 |
| Annamarie Johns      |     3 |     NULL |  NULL |  NULL |             3 |
| Toney Halvorson      |     2 |     NULL |  NULL |     2 |             4 |
| Katlyn Ritchie       |     4 |        4 |  NULL |  NULL |             8 |
| Cordie Raynor        |    10 |     NULL |  NULL |  NULL |            10 |
| Beaulah Bernier      |     5 |        5 |  NULL |     5 |            15 |
| Ebony Pollich        |     8 |     NULL |     8 |  NULL |            16 |
| Zoie Hayes           |  NULL |     NULL |    16 |  NULL |            16 |
| Maryjane Koss        |  NULL |        9 |  NULL |     9 |            18 |
| Julien Beier         |     7 |        7 |  NULL |     7 |            21 |
| Dustin Little        |     6 |        6 |     6 |     6 |            24 |
| Beau Spencer         |    13 |     NULL |    13 |  NULL |            26 |
| Unique Willms        |  NULL |     NULL |    15 |    15 |            30 |
| Alexzander Gottlieb  |  NULL |     NULL |    31 |  NULL |            31 |
| Drew Runolfsdottir   |    11 |     NULL |    11 |    11 |            33 |
| Marion Legros        |  NULL |       17 |  NULL |    17 |            34 |
| Gabrielle Swift      |  NULL |       12 |    12 |    12 |            36 |
| Rose Pollich         |  NULL |       18 |    18 |  NULL |            36 |
| Meghan Hyatt         |    19 |       19 |  NULL |  NULL |            38 |
| Dedrick O'Reilly     |    38 |     NULL |  NULL |  NULL |            38 |
| Aubrey Klein         |  NULL |     NULL |  NULL |    39 |            39 |
| Kristy Reichel       |  NULL |       14 |    14 |    14 |            42 |
| Vladimir Dibbert     |    24 |     NULL |    24 |  NULL |            48 |
| Emelie Ferry         |  NULL |       25 |    25 |  NULL |            50 |
| Brycen Howe          |  NULL |     NULL |    51 |  NULL |            51 |
| Dahlia Anderson      |  NULL |     NULL |    26 |    26 |            52 |
| Holly Bailey         |    57 |     NULL |  NULL |  NULL |            57 |
| Samara Carter        |    20 |     NULL |    20 |    20 |            60 |
| Elmo Marquardt       |    30 |     NULL |    30 |  NULL |            60 |
| Kirstin Gislason     |  NULL |       61 |  NULL |  NULL |            61 |
| Devan McClure        |    33 |     NULL |  NULL |    33 |            66 |
| Jean Ryan            |    23 |       23 |    23 |  NULL |            69 |
| Claudie Larson       |    70 |     NULL |  NULL |  NULL |            70 |
| Sheldon Leannon      |    79 |     NULL |  NULL |  NULL |            79 |
| Annamae Rosenbaum    |    27 |       27 |    27 |  NULL |            81 |
| Sister Pacocha       |  NULL |       41 |  NULL |    41 |            82 |
| Matilda Watsica      |  NULL |     NULL |    83 |  NULL |            83 |
| Howard Harvey        |  NULL |       28 |    28 |    28 |            84 |
| Carissa Heller       |    21 |       21 |    21 |    21 |            84 |
| Maximus Koepp        |  NULL |       42 |  NULL |    42 |            84 |
| Deanna Reinger       |    86 |     NULL |  NULL |  NULL |            86 |
| Adrian Fay           |    22 |       22 |    22 |    22 |            88 |
| Baby Hamill          |  NULL |     NULL |    44 |    44 |            88 |
| Raquel Morissette    |  NULL |     NULL |    90 |  NULL |            90 |
| Jody Reilly          |  NULL |       45 |  NULL |    45 |            90 |
| Ryan Braun           |    46 |       46 |  NULL |  NULL |            92 |
| Catalina Bogisich    |    34 |     NULL |    34 |    34 |           102 |
| Eliseo Hagenes       |    52 |     NULL |    52 |  NULL |           104 |
| Paris Lebsack        |    35 |       35 |    35 |  NULL |           105 |
| Maximillian Keeling  |    53 |     NULL |    53 |  NULL |           106 |
| Mariano Spencer      |    36 |       36 |  NULL |    36 |           108 |
| Preston Bayer        |  NULL |       54 |  NULL |    54 |           108 |
| Kiley Rohan          |    37 |     NULL |    37 |    37 |           111 |
| Sydnee Wunsch        |    29 |       29 |    29 |    29 |           116 |
| Wiley Ullrich        |    58 |     NULL |  NULL |    58 |           116 |
| Levi Boehm           |    60 |       60 |  NULL |  NULL |           120 |
| Jonathon Stoltenberg |  NULL |       40 |    40 |    40 |           120 |
| Johnathan Kihn       |  NULL |       62 |  NULL |    62 |           124 |
| Aurore Abernathy     |    32 |       32 |    32 |    32 |           128 |
| Maci Murphy          |  NULL |     NULL |    64 |    64 |           128 |
| Catalina Wilkinson   |  NULL |       43 |    43 |    43 |           129 |
| Laisha Stanton       |    66 |     NULL |    66 |  NULL |           132 |
| Rosa Hoeger          |    48 |     NULL |    48 |    48 |           144 |
| Teagan Botsford      |  NULL |     NULL |    74 |    74 |           148 |
| Imogene Breitenberg  |  NULL |       78 |  NULL |    78 |           156 |
| Lucio Bauch          |  NULL |       81 |    81 |  NULL |           162 |
| Serena Cormier       |    82 |     NULL |    82 |  NULL |           164 |
| Kristian Deckow      |    84 |     NULL |  NULL |    84 |           168 |
| Cade D'Amore         |    85 |     NULL |    85 |  NULL |           170 |
| Cody O'Hara          |    59 |       59 |  NULL |    59 |           177 |
| Jonathon Price       |  NULL |     NULL |    89 |    89 |           178 |
| Bette Boehm          |  NULL |     NULL |    93 |    93 |           186 |
| Enola Monahan        |    47 |       47 |    47 |    47 |           188 |
| William Turcotte     |    63 |       63 |  NULL |    63 |           189 |
| Lilliana Powlowski   |    95 |     NULL |    95 |  NULL |           190 |
| Jonathan Ritchie     |  NULL |       65 |    65 |    65 |           195 |
| Alda Donnelly        |    49 |       49 |    49 |    49 |           196 |
| Waylon Lakin         |  NULL |       98 |  NULL |    98 |           196 |
| Chet Hills           |    99 |     NULL |  NULL |    99 |           198 |
| Michele Schimmel     |    50 |       50 |    50 |    50 |           200 |
| Narciso Heller       |    67 |       67 |  NULL |    67 |           201 |
| Rasheed Pagac        |  NULL |       69 |    69 |    69 |           207 |
| Aglae Emard          |  NULL |       71 |    71 |    71 |           213 |
| Chance Littel        |    73 |     NULL |    73 |    73 |           219 |
| Aron Gorczany        |    55 |       55 |    55 |    55 |           220 |
| Amara Stiedemann     |    56 |       56 |    56 |    56 |           224 |
| Constantin Ryan      |    75 |     NULL |    75 |    75 |           225 |
| Maximilian Bosco     |    76 |     NULL |    76 |    76 |           228 |
| Danielle Kerluke     |  NULL |       77 |    77 |    77 |           231 |
| Rodrick Ortiz        |  NULL |       87 |    87 |    87 |           261 |
| Hassan Lind          |  NULL |       88 |    88 |    88 |           264 |
| Trinity Zulauf       |    68 |       68 |    68 |    68 |           272 |
| Roberto Kulas        |    91 |       91 |  NULL |    91 |           273 |
| Anya Russel          |    92 |       92 |    92 |  NULL |           276 |
| Alize Eichmann       |  NULL |       94 |    94 |    94 |           282 |
| Crawford Homenick    |    72 |       72 |    72 |    72 |           288 |
| Jerel Christiansen   |    97 |       97 |  NULL |    97 |           291 |
| Justice Jast         |   100 |      100 |  NULL |   100 |           300 |
| Eve Hand             |    80 |       80 |    80 |    80 |           320 |
| Mariana Thompson     |    96 |       96 |    96 |    96 |           384 |
+----------------------+-------+----------+-------+-------+---------------+
100 rows in set (0,00 sec)

mysql>

Не понимаю, где нарушена логика. Моя идея такая: построчно для каждого пользователя сложить
количество постов, сообщений, лайков и единиц медиаданных. Полученная сумма - это значение активности.
Чем меньше это число, тем пользователь менее активен.