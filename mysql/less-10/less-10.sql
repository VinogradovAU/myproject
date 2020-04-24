
#Построить запрос, который будет выводить следующие столбцы:
#имя группы
#среднее количество пользователей в группах
#самый молодой пользователь в группе
#самый пожилой пользователь в группе
#количество пользователей в группе
#всего пользователей в системе
#отношение в процентах (количество пользователей в группе / всего пользователей в системе) * 100

--------------------mysql workbench----------------------

SELECT
	xx1.UU2 AS name_group,                         # имя группы
    xx1.pioples_in_group,                          # количество пользователей в группе
    #xx1.xxxx.date_youngest_user,                  # день рождения самого молодого
    xx1.younger_user,                              # самый молодой пользователь группы
    #yy1.yyyy.date_oldest_user,                    # день рождения самого старшего
    yy1.oldest_user                                # самы взрослый пользователь группы
    yy1.count_users AS count_users                 # всего пользователей в системе
    ROUND(yy1.count_users/zz1.zz0) AS avg_in_groups    # среднее количество пользователей в группАХ

FROM
  (SELECT count(*) AS zz0
	FROM
		(select count(*)
        FROM communities AS c                 <---------тут я считал количество групп для расчета средне количества пользователей в группах
        JOIN communities_users AS cc
        ON c.id = cc.community_id
        group by c.name) AS ccc
  ) AS zz1,

(SELECT xxxx.us AS UU2, xxxx.pioples_in_group AS pioples_in_group  , xxxx.date_youngest_user, users.last_name AS younger_user
	FROM
    (SELECT DISTINCT communities.name AS us,
 COUNT(*) OVER(PARTITION BY communities_users.community_id) AS pioples_in_group,
 MIN(profiles.birthday) OVER(PARTITION BY communities_users.community_id) AS date_oldest_user,
 MAX(profiles.birthday) OVER(PARTITION BY communities_users.community_id) AS date_youngest_user

 FROM users AS users
    JOIN profiles
    ON users.id = profiles.user_id
    JOIN communities_users
    ON communities_users.user_id = users.id
    JOIN communities
    ON communities.id = communities_users.community_id) xxxx, users, profiles
    WHERE
    users.id = profiles.user_id AND profiles.birthday = date_youngest_user) AS xx1,

(SELECT yyyy.us AS UU1, yyyy.pioples_in_group, yyyy.date_oldest_user, users.last_name AS oldest_user, yyyy.count_users AS count_users
	FROM
    (SELECT DISTINCT communities.name AS us,
 COUNT(*) OVER(PARTITION BY communities_users.community_id) AS pioples_in_group,
 MIN(profiles.birthday) OVER(PARTITION BY communities_users.community_id) AS date_oldest_user,
 COUNT(*) OVER () AS count_users

 FROM users AS users
    JOIN profiles
    ON users.id = profiles.user_id
    JOIN communities_users
    ON communities_users.user_id = users.id
    JOIN communities
    ON communities.id = communities_users.community_id) yyyy, users, profiles
    WHERE
    users.id = profiles.user_id AND profiles.birthday = date_oldest_user) AS yy1
    WHERE yy1.UU1 = xx1.UU2;
--------------------mysql workbench----------------------

Вывод в терминале:

mysql> SELECT
    -> xx1.UU2 AS name_group,
    ->     xx1.pioples_in_group,
    ->     #xx1.xxxx.date_youngest_user,
    ->     xx1.younger_user,
    ->     #yy1.yyyy.date_oldest_user,
    ->     yy1.oldest_user,
    ->     yy1.count_users AS count_users,
    ->     ROUND(yy1.count_users/zz1.zz0) AS avg_in_groups
    -> FROM
    ->   (SELECT count(*) AS zz0
    -> FROM
    ->
Display all 891 possibilities? (y or n)
    -> (select count(*)
    ->         FROM communities AS c
    ->         JOIN communities_users AS cc
    ->         ON c.id = cc.community_id
    ->         group by c.name) AS ccc
    ->   ) AS zz1,
    ->
    -> (SELECT xxxx.us AS UU2, xxxx.pioples_in_group AS pioples_in_group  , xxxx.date_youngest_user, users.last_name AS younger_user
    -> FROM
    ->     (SELECT DISTINCT communities.name AS us,
    ->  COUNT(*) OVER(PARTITION BY communities_users.community_id) AS pioples_in_group,
    ->  MIN(profiles.birthday) OVER(PARTITION BY communities_users.community_id) AS date_oldest_user,
    ->  MAX(profiles.birthday) OVER(PARTITION BY communities_users.community_id) AS date_youngest_user
    ->
    ->  FROM users AS users
    ->     JOIN profiles
    ->     ON users.id = profiles.user_id
    ->     JOIN communities_users
    ->     ON communities_users.user_id = users.id
    ->     JOIN communities
    ->     ON communities.id = communities_users.community_id) xxxx, users, profiles
    ->     WHERE
    ->     users.id = profiles.user_id AND profiles.birthday = date_youngest_user) AS xx1,
    ->
    -> (SELECT yyyy.us AS UU1, yyyy.pioples_in_group, yyyy.date_oldest_user, users.last_name AS oldest_user, yyyy.count_users AS count_users
    -> FROM
    ->     (SELECT DISTINCT communities.name AS us,
    ->  COUNT(*) OVER(PARTITION BY communities_users.community_id) AS pioples_in_group,
    ->  MIN(profiles.birthday) OVER(PARTITION BY communities_users.community_id) AS date_oldest_user,
    ->  COUNT(*) OVER () AS count_users
    ->
    ->  FROM users AS users
    ->     JOIN profiles
    ->     ON users.id = profiles.user_id
    ->     JOIN communities_users
    ->     ON communities_users.user_id = users.id
    ->     JOIN communities
    ->     ON communities.id = communities_users.community_id) yyyy, users, profiles
    ->     WHERE
    ->     users.id = profiles.user_id AND profiles.birthday = date_oldest_user) AS yy1
    ->     WHERE yy1.UU1 = xx1.UU2;
+------------+------------------+--------------+-------------+-------------+---------------+
| name_group | pioples_in_group | younger_user | oldest_user | count_users | avg_in_groups |
+------------+------------------+--------------+-------------+-------------+---------------+
| droup4     |               13 | Larson       | Halvorson   |         100 |            13 |
| droup2     |               14 | McClure      | Reilly      |         100 |            13 |
| droup7     |               10 | Lebsack      | Hoeger      |         100 |            13 |
| droup6     |               13 | Bauch        | Hagenes     |         100 |            13 |
| droup3     |                5 | Christiansen | Bayer       |         100 |            13 |
| droup8     |               15 | Wunsch       | Ullrich     |         100 |            13 |
| droup1     |               16 | Zulauf       | Lind        |         100 |            13 |
| droup5     |               14 | Anderson     | Hills       |         100 |            13 |
+------------+------------------+--------------+-------------+-------------+---------------+
8 rows in set (0,00 sec)

mysql>
