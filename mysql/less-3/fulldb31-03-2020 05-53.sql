#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities` (`id`, `name`) VALUES (1, 'group1');
INSERT INTO `communities` (`id`, `name`) VALUES (4, 'group2');
INSERT INTO `communities` (`id`, `name`) VALUES (3, 'group3');
INSERT INTO `communities` (`id`, `name`) VALUES (2, 'group4');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 1);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 5);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 9);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 13);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 17);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 21);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 25);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 29);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 33);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 37);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 41);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 45);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 49);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 53);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 57);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 61);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 65);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 69);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 73);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 77);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 81);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 85);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 89);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 93);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 97);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 2);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 6);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 10);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 14);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 18);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 22);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 26);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 30);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 34);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 38);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 42);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 46);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 50);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 54);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 58);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 62);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 66);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 70);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 74);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 78);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 82);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 86);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 90);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 94);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 98);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 3);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 7);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 11);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 15);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 19);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 23);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 27);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 31);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 35);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 39);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 43);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 47);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 51);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 55);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 59);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 63);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 67);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 71);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 75);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 79);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 83);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 87);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 91);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 95);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 99);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 4);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 8);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 12);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 16);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 20);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 24);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 28);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 32);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 36);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 40);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 44);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 48);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 52);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 56);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 60);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 64);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 68);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 72);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 76);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 80);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 84);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 88);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 92);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 96);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 100);


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (1, 1, 1, '2013-06-10 11:46:16', '1986-11-22 14:04:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (2, 2, 2, '1991-07-08 15:25:02', '1970-06-01 05:43:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (3, 3, 3, '1992-12-25 08:44:23', '1998-12-26 11:17:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (4, 4, 4, '2014-11-15 19:21:22', '1992-03-10 13:42:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (5, 5, 1, '1994-09-26 10:40:31', '1981-09-19 11:05:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (6, 6, 2, '2005-03-02 00:44:29', '1985-02-25 17:25:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (7, 7, 3, '1984-08-09 12:11:20', '1994-08-29 16:01:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (8, 8, 4, '2019-06-30 04:18:49', '1996-08-10 11:09:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (9, 9, 1, '1989-07-30 05:59:38', '1997-02-18 17:37:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (10, 10, 2, '1980-01-14 12:43:44', '2005-12-19 15:19:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (11, 11, 3, '1989-11-27 22:30:28', '1970-05-14 18:57:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (12, 12, 4, '2012-09-12 21:44:09', '1970-04-15 13:47:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (13, 13, 1, '2012-01-02 04:01:00', '1974-04-18 01:43:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (14, 14, 2, '1999-01-24 07:05:21', '2017-04-04 14:20:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (15, 15, 3, '2014-06-07 01:00:46', '1993-03-07 15:53:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (16, 16, 4, '1998-10-23 04:50:34', '1991-11-27 05:06:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (17, 17, 1, '1976-09-07 17:57:34', '1991-01-20 08:10:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (18, 18, 2, '2014-05-16 11:43:28', '2003-10-19 21:14:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (19, 19, 3, '2003-07-28 03:57:42', '1988-01-27 07:02:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (20, 20, 4, '1996-08-26 02:48:18', '2010-03-21 16:58:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (21, 21, 1, '2012-04-12 07:12:34', '2013-09-08 09:28:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (22, 22, 2, '1991-04-27 21:15:58', '1971-08-04 03:34:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (23, 23, 3, '1982-11-30 22:40:28', '2004-11-18 08:18:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (24, 24, 4, '1990-12-24 12:48:08', '1988-06-18 09:30:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (25, 25, 1, '1988-04-26 07:13:27', '1994-06-12 05:11:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (26, 26, 2, '2000-03-15 02:43:07', '1983-12-20 06:35:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (27, 27, 3, '2008-01-10 14:57:36', '1991-01-06 13:35:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (28, 28, 4, '1988-03-06 15:35:37', '1974-09-23 06:22:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (29, 29, 1, '2001-03-30 21:00:36', '1970-11-14 23:42:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (30, 30, 2, '2001-03-29 23:57:52', '2000-02-13 12:47:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (31, 31, 3, '2003-10-14 00:31:11', '1981-02-13 15:37:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (32, 32, 4, '1997-04-25 09:13:11', '2017-08-08 15:50:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (33, 33, 1, '1974-11-23 07:30:45', '2013-12-31 21:33:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (34, 34, 2, '1973-11-15 15:29:29', '2016-06-02 12:06:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (35, 35, 3, '2004-04-06 21:14:06', '1993-10-04 10:07:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (36, 36, 4, '1970-07-13 06:25:57', '2013-02-18 16:01:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (37, 37, 1, '1994-09-29 19:26:33', '2016-03-03 10:56:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (38, 38, 2, '1976-12-04 11:01:53', '2008-11-16 10:08:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (39, 39, 3, '1976-05-17 22:57:45', '2001-12-22 17:09:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (40, 40, 4, '1974-04-29 07:56:14', '2012-06-24 01:59:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (41, 41, 1, '2011-06-28 18:25:43', '2019-01-10 10:02:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (42, 42, 2, '2018-02-14 08:59:52', '1996-06-02 20:57:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (43, 43, 3, '1994-12-17 21:25:18', '2014-09-19 01:21:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (44, 44, 4, '2009-07-25 10:47:39', '2018-03-25 22:34:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (45, 45, 1, '1991-10-02 11:54:32', '1970-03-10 07:40:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (46, 46, 2, '1986-11-16 03:28:18', '1989-04-29 22:16:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (47, 47, 3, '2015-03-11 03:30:12', '2012-08-17 17:10:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (48, 48, 4, '1995-04-11 00:06:36', '2005-09-04 19:42:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (49, 49, 1, '2013-05-01 07:12:52', '1977-10-06 03:33:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (50, 50, 2, '1985-07-13 14:19:04', '1990-11-05 09:56:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (51, 51, 3, '2018-08-07 15:21:16', '2005-07-01 04:13:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (52, 52, 4, '2011-02-13 14:52:18', '2020-01-27 09:39:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (53, 53, 1, '1997-07-05 04:56:24', '2013-11-26 13:14:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (54, 54, 2, '2003-10-05 21:47:07', '2003-02-18 08:53:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (55, 55, 3, '1986-08-16 11:35:57', '1992-10-05 11:30:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (56, 56, 4, '1991-04-11 00:52:48', '1982-08-01 08:04:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (57, 57, 1, '1971-09-17 13:43:27', '1978-04-11 00:37:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (58, 58, 2, '2016-01-16 17:41:19', '1984-10-15 00:50:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (59, 59, 3, '1995-06-06 04:33:17', '2002-06-16 06:28:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (60, 60, 4, '1995-01-05 13:22:40', '2008-07-26 17:46:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (61, 61, 1, '1974-11-18 07:21:35', '1978-02-23 08:14:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (62, 62, 2, '1998-08-28 00:00:40', '1976-10-05 10:41:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (63, 63, 3, '1991-10-19 21:58:00', '2002-11-08 05:04:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (64, 64, 4, '2002-05-04 05:11:36', '1971-12-28 14:30:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (65, 65, 1, '1997-09-05 06:22:20', '2002-09-22 08:51:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (66, 66, 2, '1976-02-07 11:13:16', '1997-12-09 11:44:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (67, 67, 3, '1984-03-29 09:55:56', '2005-07-16 07:45:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (68, 68, 4, '1999-09-08 01:24:31', '2009-12-20 08:31:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (69, 69, 1, '1983-11-24 16:55:09', '1994-08-01 19:04:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (70, 70, 2, '1995-08-31 18:16:19', '1988-01-18 00:14:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (71, 71, 3, '2004-02-16 12:43:29', '2006-02-01 20:28:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (72, 72, 4, '2007-04-25 16:15:42', '2013-02-26 18:20:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (73, 73, 1, '2010-02-21 04:14:11', '1973-05-29 14:06:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (74, 74, 2, '2011-08-13 07:23:31', '1995-09-26 18:10:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (75, 75, 3, '2004-12-13 15:27:04', '2005-05-06 10:22:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (76, 76, 4, '1993-02-12 15:53:35', '1984-04-26 06:37:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (77, 77, 1, '1999-10-17 07:30:54', '1987-03-09 03:39:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (78, 78, 2, '1974-02-14 08:54:41', '1991-09-12 05:55:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (79, 79, 3, '1979-10-10 06:48:53', '1994-04-01 14:30:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (80, 80, 4, '1995-05-24 01:03:44', '2015-08-19 12:26:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (81, 81, 1, '1993-04-03 02:04:34', '1986-01-29 23:56:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (82, 82, 2, '1992-06-30 06:35:28', '1974-08-03 11:39:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (83, 83, 3, '1980-03-01 13:04:56', '1986-04-08 19:11:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (84, 84, 4, '1978-12-07 10:01:12', '1972-07-07 13:48:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (85, 85, 1, '2011-05-14 14:57:21', '1997-06-22 08:38:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (86, 86, 2, '1976-09-23 08:49:29', '1986-08-24 22:50:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (87, 87, 3, '2001-04-23 18:51:22', '1976-07-21 19:47:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (88, 88, 4, '2016-02-07 15:54:42', '1980-11-12 17:57:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (89, 89, 1, '2016-01-19 04:15:01', '1976-01-13 07:39:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (90, 90, 2, '2000-12-28 18:37:27', '1986-07-21 10:23:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (91, 91, 3, '1986-02-11 05:54:44', '1996-08-18 06:27:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (92, 92, 4, '1991-08-31 15:27:24', '1979-02-10 16:34:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (93, 93, 1, '2016-11-26 15:33:14', '2012-06-18 09:53:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (94, 94, 2, '2006-07-07 14:29:02', '1999-06-16 19:58:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (95, 95, 3, '2015-07-17 15:09:39', '2007-09-24 17:53:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (96, 96, 4, '1995-11-21 17:41:37', '2015-01-16 20:48:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (97, 97, 1, '1973-07-12 10:21:12', '1975-08-15 03:37:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (98, 98, 2, '1974-08-06 16:51:30', '2003-03-29 04:25:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (99, 99, 3, '2014-07-26 17:14:30', '2018-04-12 19:23:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (100, 100, 4, '1977-05-12 02:28:14', '1999-08-06 01:37:22');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (2, 'accepted');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (3, 'friendship request');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (1, 'pending');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (4, 'rejected');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (1, 1, 1, '', 356, NULL, '1980-03-17 07:10:08', '2008-06-24 19:08:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (2, 2, 2, '', 425, NULL, '1998-07-03 00:12:23', '2018-11-18 06:07:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (3, 3, 3, '', 894, NULL, '1997-11-16 16:05:17', '1972-06-14 11:09:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (4, 4, 4, '', 389, NULL, '1975-08-31 09:06:19', '1984-05-20 02:25:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (5, 5, 5, '', 872, NULL, '1971-12-23 05:24:35', '1985-09-09 14:14:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (6, 6, 6, '', 438, NULL, '2003-01-12 21:32:20', '1984-05-30 21:08:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (7, 7, 7, '', 208, NULL, '1970-04-29 14:09:53', '1986-02-07 07:26:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (8, 8, 8, '', 164, NULL, '2017-01-23 15:41:37', '2012-09-30 15:41:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (9, 9, 9, '', 641, NULL, '1974-11-18 20:36:21', '2009-08-06 06:55:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (10, 10, 10, '', 712, NULL, '1991-02-22 19:16:01', '2017-02-03 05:51:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (11, 11, 11, '', 500, NULL, '2010-09-14 04:02:45', '1998-12-19 03:43:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (12, 12, 12, '', 737, NULL, '1971-04-30 18:53:40', '2006-12-13 00:43:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (13, 13, 13, '', 772, NULL, '1990-06-06 04:24:01', '2011-11-04 01:38:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (14, 14, 14, '', 300, NULL, '2008-08-05 05:24:02', '1984-12-09 01:35:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (15, 15, 15, '', 66, NULL, '1994-12-08 16:10:01', '1971-09-13 15:28:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (16, 16, 16, '', 697, NULL, '2006-02-23 09:00:19', '1982-10-12 20:26:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (17, 17, 17, '', 148, NULL, '2009-05-05 05:15:36', '1994-02-10 00:13:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (18, 18, 18, '', 352, NULL, '2007-01-18 14:00:25', '1997-10-20 04:21:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (19, 19, 19, '', 572, NULL, '2009-10-31 19:14:15', '1973-06-02 18:06:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (20, 20, 20, '', 598, NULL, '1984-04-15 07:20:23', '1987-12-11 14:39:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (21, 21, 21, '', 836, NULL, '2005-07-08 19:53:55', '1993-03-07 17:02:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (22, 22, 22, '', 287, NULL, '1994-07-16 13:39:21', '2012-08-13 09:16:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (23, 23, 23, '', 336, NULL, '2017-10-18 05:52:49', '1971-05-24 18:30:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (24, 24, 24, '', 585, NULL, '1986-09-30 12:25:25', '2006-09-10 12:23:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (25, 25, 25, '', 671, NULL, '1988-05-24 05:38:16', '2010-11-29 02:02:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (26, 26, 26, '', 685, NULL, '2003-02-06 18:21:41', '1975-01-14 02:51:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (27, 27, 27, '', 553, NULL, '1994-11-28 09:10:21', '2002-12-26 00:55:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (28, 28, 28, '', 152, NULL, '2007-12-21 20:01:45', '1992-12-10 18:12:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (29, 29, 29, '', 198, NULL, '1982-10-09 17:05:26', '1999-11-03 10:17:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (30, 30, 30, '', 312, NULL, '1975-11-06 16:40:25', '2004-12-06 05:49:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (31, 31, 31, '', 348, NULL, '1988-07-05 01:10:20', '2010-04-22 23:28:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (32, 32, 32, '', 32, NULL, '1995-04-28 09:38:34', '1974-12-27 20:38:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (33, 33, 33, '', 370, NULL, '2013-11-01 17:20:18', '1992-09-28 12:15:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (34, 34, 34, '', 170, NULL, '1980-09-11 18:13:25', '2008-12-24 02:15:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (35, 35, 35, '', 387, NULL, '1972-12-17 16:19:49', '2004-08-23 02:55:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (36, 36, 36, '', 41, NULL, '2011-04-15 18:14:50', '1984-03-26 17:22:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (37, 37, 37, '', 973, NULL, '2007-02-22 15:20:45', '1984-12-14 13:43:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (38, 38, 38, '', 333, NULL, '2010-11-21 21:14:22', '1981-11-02 02:48:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (39, 39, 39, '', 888, NULL, '1970-02-24 22:08:06', '1971-02-11 17:57:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (40, 40, 40, '', 197, NULL, '1970-10-29 01:34:31', '2011-04-10 21:14:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (41, 41, 41, '', 32, NULL, '1992-03-09 13:53:36', '1971-12-17 09:53:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (42, 42, 42, '', 992, NULL, '2011-01-31 01:11:26', '2006-07-17 02:04:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (43, 43, 43, '', 713, NULL, '1983-10-04 22:26:01', '1983-02-21 05:01:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (44, 44, 44, '', 819, NULL, '2018-12-11 04:29:37', '2001-12-05 02:56:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (45, 45, 45, '', 290, NULL, '2014-12-08 02:33:23', '1978-07-20 18:00:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (46, 46, 46, '', 669, NULL, '2010-08-16 22:28:46', '2013-05-20 05:57:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (47, 47, 47, '', 994, NULL, '2000-09-25 11:07:45', '2000-10-01 10:39:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (48, 48, 48, '', 606, NULL, '1979-05-17 02:20:00', '2000-07-09 19:17:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (49, 49, 49, '', 569, NULL, '1985-11-10 16:07:48', '2000-11-02 15:52:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (50, 50, 50, '', 12, NULL, '1983-06-15 05:45:04', '2012-11-20 07:02:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (51, 51, 51, '', 256, NULL, '1970-07-24 00:54:06', '1979-10-01 15:43:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (52, 52, 52, '', 44, NULL, '2013-05-15 09:09:32', '1982-10-31 21:18:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (53, 53, 53, '', 906, NULL, '1998-10-15 16:58:20', '2010-01-06 13:40:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (54, 54, 54, '', 469, NULL, '1970-07-22 02:58:36', '1985-06-22 19:55:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (55, 55, 55, '', 867, NULL, '2007-05-12 23:43:12', '2011-11-26 13:06:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (56, 56, 56, '', 479, NULL, '1995-02-19 21:21:30', '1987-11-02 12:04:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (57, 57, 57, '', 522, NULL, '1974-05-16 12:29:05', '1984-08-31 15:19:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (58, 58, 58, '', 631, NULL, '1990-04-05 13:19:13', '2009-03-29 16:52:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (59, 59, 59, '', 18, NULL, '1988-08-19 20:52:23', '1972-09-30 07:38:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (60, 60, 60, '', 812, NULL, '1987-08-14 23:17:06', '1980-01-05 19:03:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (61, 61, 61, '', 863, NULL, '1991-06-27 03:11:08', '1989-02-16 05:37:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (62, 62, 62, '', 267, NULL, '2016-10-18 07:25:48', '1974-08-06 23:13:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (63, 63, 63, '', 886, NULL, '1973-06-19 04:56:39', '1979-10-04 16:29:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (64, 64, 64, '', 250, NULL, '1977-02-06 13:39:27', '1973-03-19 05:12:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (65, 65, 65, '', 333, NULL, '2008-06-20 16:30:40', '1991-10-14 00:04:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (66, 66, 66, '', 771, NULL, '1977-10-25 14:35:55', '2001-07-01 23:18:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (67, 67, 67, '', 294, NULL, '1994-02-11 16:55:01', '1976-06-19 15:30:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (68, 68, 68, '', 724, NULL, '1979-07-05 22:39:17', '1974-06-17 04:04:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (69, 69, 69, '', 302, NULL, '1981-10-10 00:03:24', '2001-05-15 17:32:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (70, 70, 70, '', 630, NULL, '1994-01-06 15:35:50', '2019-01-05 04:00:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (71, 71, 71, '', 281, NULL, '1995-03-18 03:25:10', '1975-11-06 01:50:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (72, 72, 72, '', 413, NULL, '1998-08-09 00:23:01', '1981-03-26 16:37:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (73, 73, 73, '', 37, NULL, '1998-06-19 14:45:51', '2002-12-03 06:23:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (74, 74, 74, '', 528, NULL, '1979-09-04 21:35:01', '2009-09-23 16:40:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (75, 75, 75, '', 448, NULL, '1995-06-08 20:52:57', '2000-05-28 00:33:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (76, 76, 76, '', 6, NULL, '2009-05-11 03:41:29', '1980-07-21 09:57:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (77, 77, 77, '', 688, NULL, '2006-05-01 05:45:31', '1994-04-11 08:46:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (78, 78, 78, '', 544, NULL, '1970-08-03 05:08:19', '1976-12-13 14:09:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (79, 79, 79, '', 647, NULL, '1991-08-05 14:23:45', '1977-02-28 07:02:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (80, 80, 80, '', 94, NULL, '2012-01-21 05:08:31', '1975-07-27 01:04:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (81, 81, 81, '', 166, NULL, '1973-01-03 07:02:48', '1990-09-23 02:32:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (82, 82, 82, '', 572, NULL, '2009-07-19 00:31:43', '1998-01-14 18:50:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (83, 83, 83, '', 712, NULL, '2018-11-16 13:20:43', '1977-03-18 17:24:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (84, 84, 84, '', 15, NULL, '1988-06-25 04:25:39', '2018-08-22 08:03:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (85, 85, 85, '', 224, NULL, '1979-09-28 00:06:01', '1975-02-28 00:51:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (86, 86, 86, '', 864, NULL, '1984-01-29 16:10:40', '2018-02-05 05:45:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (87, 87, 87, '', 244, NULL, '1979-01-12 11:11:00', '1984-12-27 12:56:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (88, 88, 88, '', 333, NULL, '2003-01-14 20:21:00', '2003-06-10 20:03:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (89, 89, 89, '', 743, NULL, '2018-07-11 04:38:41', '1994-07-30 04:28:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (90, 90, 90, '', 97, NULL, '2014-02-02 22:36:06', '2015-10-07 19:50:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (91, 91, 91, '', 928, NULL, '1975-10-08 01:49:29', '2007-03-17 06:32:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (92, 92, 92, '', 479, NULL, '1990-09-07 16:06:26', '2009-10-24 09:33:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (93, 93, 93, '', 635, NULL, '1982-01-05 12:15:18', '2001-05-30 07:09:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (94, 94, 94, '', 644, NULL, '2002-09-25 22:36:36', '1998-08-08 15:58:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (95, 95, 95, '', 549, NULL, '1972-04-20 17:35:36', '1974-02-02 06:25:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (96, 96, 96, '', 563, NULL, '2010-02-14 11:01:36', '2015-10-20 11:06:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (97, 97, 97, '', 858, NULL, '1971-12-27 00:24:32', '1985-01-11 21:01:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (98, 98, 98, '', 44, NULL, '1982-12-14 11:20:14', '1995-11-08 05:08:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (99, 99, 99, '', 97, NULL, '2018-08-26 16:11:44', '1972-06-09 02:17:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `file_path`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (100, 100, 100, '', 916, NULL, '2001-06-16 03:42:27', '1976-10-01 13:39:55');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media_types` (`id`, `name`) VALUES (77, '1');
INSERT INTO `media_types` (`id`, `name`) VALUES (38, '10');
INSERT INTO `media_types` (`id`, `name`) VALUES (82, '100');
INSERT INTO `media_types` (`id`, `name`) VALUES (13, '11');
INSERT INTO `media_types` (`id`, `name`) VALUES (54, '12');
INSERT INTO `media_types` (`id`, `name`) VALUES (7, '13');
INSERT INTO `media_types` (`id`, `name`) VALUES (81, '14');
INSERT INTO `media_types` (`id`, `name`) VALUES (66, '15');
INSERT INTO `media_types` (`id`, `name`) VALUES (76, '16');
INSERT INTO `media_types` (`id`, `name`) VALUES (16, '17');
INSERT INTO `media_types` (`id`, `name`) VALUES (35, '18');
INSERT INTO `media_types` (`id`, `name`) VALUES (65, '19');
INSERT INTO `media_types` (`id`, `name`) VALUES (26, '2');
INSERT INTO `media_types` (`id`, `name`) VALUES (2, '20');
INSERT INTO `media_types` (`id`, `name`) VALUES (67, '21');
INSERT INTO `media_types` (`id`, `name`) VALUES (20, '22');
INSERT INTO `media_types` (`id`, `name`) VALUES (80, '23');
INSERT INTO `media_types` (`id`, `name`) VALUES (39, '24');
INSERT INTO `media_types` (`id`, `name`) VALUES (52, '25');
INSERT INTO `media_types` (`id`, `name`) VALUES (98, '26');
INSERT INTO `media_types` (`id`, `name`) VALUES (15, '27');
INSERT INTO `media_types` (`id`, `name`) VALUES (58, '28');
INSERT INTO `media_types` (`id`, `name`) VALUES (61, '29');
INSERT INTO `media_types` (`id`, `name`) VALUES (25, '3');
INSERT INTO `media_types` (`id`, `name`) VALUES (100, '30');
INSERT INTO `media_types` (`id`, `name`) VALUES (79, '31');
INSERT INTO `media_types` (`id`, `name`) VALUES (71, '32');
INSERT INTO `media_types` (`id`, `name`) VALUES (72, '33');
INSERT INTO `media_types` (`id`, `name`) VALUES (10, '34');
INSERT INTO `media_types` (`id`, `name`) VALUES (24, '35');
INSERT INTO `media_types` (`id`, `name`) VALUES (68, '36');
INSERT INTO `media_types` (`id`, `name`) VALUES (59, '37');
INSERT INTO `media_types` (`id`, `name`) VALUES (49, '38');
INSERT INTO `media_types` (`id`, `name`) VALUES (14, '39');
INSERT INTO `media_types` (`id`, `name`) VALUES (75, '4');
INSERT INTO `media_types` (`id`, `name`) VALUES (57, '40');
INSERT INTO `media_types` (`id`, `name`) VALUES (17, '41');
INSERT INTO `media_types` (`id`, `name`) VALUES (1, '42');
INSERT INTO `media_types` (`id`, `name`) VALUES (31, '43');
INSERT INTO `media_types` (`id`, `name`) VALUES (29, '44');
INSERT INTO `media_types` (`id`, `name`) VALUES (97, '45');
INSERT INTO `media_types` (`id`, `name`) VALUES (32, '46');
INSERT INTO `media_types` (`id`, `name`) VALUES (90, '47');
INSERT INTO `media_types` (`id`, `name`) VALUES (19, '48');
INSERT INTO `media_types` (`id`, `name`) VALUES (62, '49');
INSERT INTO `media_types` (`id`, `name`) VALUES (94, '5');
INSERT INTO `media_types` (`id`, `name`) VALUES (12, '50');
INSERT INTO `media_types` (`id`, `name`) VALUES (91, '51');
INSERT INTO `media_types` (`id`, `name`) VALUES (74, '52');
INSERT INTO `media_types` (`id`, `name`) VALUES (70, '53');
INSERT INTO `media_types` (`id`, `name`) VALUES (11, '54');
INSERT INTO `media_types` (`id`, `name`) VALUES (45, '55');
INSERT INTO `media_types` (`id`, `name`) VALUES (51, '56');
INSERT INTO `media_types` (`id`, `name`) VALUES (99, '57');
INSERT INTO `media_types` (`id`, `name`) VALUES (50, '58');
INSERT INTO `media_types` (`id`, `name`) VALUES (93, '59');
INSERT INTO `media_types` (`id`, `name`) VALUES (84, '6');
INSERT INTO `media_types` (`id`, `name`) VALUES (95, '60');
INSERT INTO `media_types` (`id`, `name`) VALUES (9, '61');
INSERT INTO `media_types` (`id`, `name`) VALUES (3, '62');
INSERT INTO `media_types` (`id`, `name`) VALUES (44, '63');
INSERT INTO `media_types` (`id`, `name`) VALUES (36, '64');
INSERT INTO `media_types` (`id`, `name`) VALUES (88, '65');
INSERT INTO `media_types` (`id`, `name`) VALUES (46, '66');
INSERT INTO `media_types` (`id`, `name`) VALUES (42, '67');
INSERT INTO `media_types` (`id`, `name`) VALUES (43, '68');
INSERT INTO `media_types` (`id`, `name`) VALUES (30, '69');
INSERT INTO `media_types` (`id`, `name`) VALUES (41, '7');
INSERT INTO `media_types` (`id`, `name`) VALUES (63, '70');
INSERT INTO `media_types` (`id`, `name`) VALUES (37, '71');
INSERT INTO `media_types` (`id`, `name`) VALUES (40, '72');
INSERT INTO `media_types` (`id`, `name`) VALUES (5, '73');
INSERT INTO `media_types` (`id`, `name`) VALUES (83, '74');
INSERT INTO `media_types` (`id`, `name`) VALUES (28, '75');
INSERT INTO `media_types` (`id`, `name`) VALUES (73, '76');
INSERT INTO `media_types` (`id`, `name`) VALUES (23, '77');
INSERT INTO `media_types` (`id`, `name`) VALUES (86, '78');
INSERT INTO `media_types` (`id`, `name`) VALUES (21, '79');
INSERT INTO `media_types` (`id`, `name`) VALUES (22, '8');
INSERT INTO `media_types` (`id`, `name`) VALUES (27, '80');
INSERT INTO `media_types` (`id`, `name`) VALUES (87, '81');
INSERT INTO `media_types` (`id`, `name`) VALUES (69, '82');
INSERT INTO `media_types` (`id`, `name`) VALUES (92, '83');
INSERT INTO `media_types` (`id`, `name`) VALUES (48, '84');
INSERT INTO `media_types` (`id`, `name`) VALUES (56, '85');
INSERT INTO `media_types` (`id`, `name`) VALUES (78, '86');
INSERT INTO `media_types` (`id`, `name`) VALUES (18, '87');
INSERT INTO `media_types` (`id`, `name`) VALUES (55, '88');
INSERT INTO `media_types` (`id`, `name`) VALUES (6, '89');
INSERT INTO `media_types` (`id`, `name`) VALUES (34, '9');
INSERT INTO `media_types` (`id`, `name`) VALUES (8, '90');
INSERT INTO `media_types` (`id`, `name`) VALUES (33, '91');
INSERT INTO `media_types` (`id`, `name`) VALUES (96, '92');
INSERT INTO `media_types` (`id`, `name`) VALUES (60, '93');
INSERT INTO `media_types` (`id`, `name`) VALUES (85, '94');
INSERT INTO `media_types` (`id`, `name`) VALUES (89, '95');
INSERT INTO `media_types` (`id`, `name`) VALUES (47, '96');
INSERT INTO `media_types` (`id`, `name`) VALUES (4, '97');
INSERT INTO `media_types` (`id`, `name`) VALUES (53, '98');
INSERT INTO `media_types` (`id`, `name`) VALUES (64, '99');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `is_important` tinyint(1) DEFAULT NULL,
  `is_delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 1, 1, 'Rerum rerum cum excepturi eius. Est dolorem illo recusandae exercitationem est non. Aliquid omnis voluptas veritatis nihil et qui. Quis eum nihil doloremque aliquam quam.', 1, 1, '1975-01-09 15:08:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 2, 2, 'Et consequatur pariatur perferendis fugiat nulla. Tempora sequi quibusdam reiciendis eum dignissimos ullam quis. Ipsa et deleniti voluptatem perspiciatis magni debitis ut dignissimos.', 1, 0, '2006-06-05 09:49:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 3, 3, 'Dicta molestiae rerum sed a reiciendis quia quia. Repellat dolorem ex quia eos quae dolorum nobis. Beatae incidunt et iusto.', 0, 0, '2001-03-28 15:39:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 4, 4, 'Officia harum corporis neque tenetur sint. Qui eius rerum quis esse.', 0, 0, '1988-05-30 00:38:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 5, 5, 'Distinctio ratione ab excepturi eius. Quod qui sit minus omnis. Consequatur dignissimos eaque asperiores quia doloremque. Mollitia consequatur quia est et quaerat.', 0, 0, '1995-07-04 06:00:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 6, 6, 'Ipsum ex qui ducimus est qui dolores ut. Rerum id atque velit tenetur voluptates ipsam eaque. Aut iusto fugit tenetur suscipit eaque est neque. Incidunt consectetur adipisci rerum.', 0, 1, '1984-02-15 04:53:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 7, 7, 'Dolorem dolor beatae fugit ducimus illo quidem ab. Impedit distinctio deleniti dolor nihil labore deleniti ab. Est odit magnam facilis.', 0, 1, '2002-11-22 11:45:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 8, 8, 'Voluptatem ut voluptatibus aut rem. Similique perspiciatis placeat voluptate deserunt consequuntur. Minima enim assumenda dolores omnis. Placeat iste sequi vel aut eos est.', 1, 0, '1993-01-19 21:59:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 9, 9, 'Incidunt quia et omnis. Cupiditate rerum facilis incidunt totam autem. Assumenda est placeat aut voluptatem. Assumenda architecto quidem quod dolorum.', 0, 1, '2013-04-14 08:39:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 10, 10, 'Aut tempore nihil sed aut et sed saepe. Sint delectus sint et. Sapiente et suscipit impedit vel.', 0, 0, '1999-05-29 06:15:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 11, 11, 'Adipisci saepe molestiae aut necessitatibus similique distinctio. Vel voluptatem culpa minima voluptatem velit impedit quae sit. Quisquam sed numquam et et qui. Atque est quam rem corrupti.', 1, 1, '2016-12-18 02:09:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 12, 12, 'Iste enim dolorem et id veniam rerum. Quod tenetur aliquid quia atque.', 1, 1, '2006-08-23 22:59:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 13, 13, 'Provident dolor provident maxime facere non. Et quidem perferendis asperiores nihil et iste sed. Veritatis quo impedit quos et repellat perspiciatis.', 0, 0, '1990-04-29 22:31:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 14, 14, 'Quod qui laudantium ipsa. Dolor aut deserunt sequi aut. Corporis fuga explicabo dolorem soluta soluta.\nEst harum omnis enim sed. Veniam et dolorem eos similique. Aut ea nesciunt neque quam.', 1, 1, '2015-06-04 06:54:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 15, 15, 'Impedit ipsum quo sapiente qui tempore voluptatem. Omnis consequatur sit aut. Deleniti nam aut quidem alias ullam.', 0, 0, '1972-03-19 10:45:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 16, 16, 'Rem eaque eligendi necessitatibus voluptatum quos occaecati temporibus. Sequi eaque error inventore aperiam iusto beatae delectus. Vitae vel numquam fugit qui veniam doloremque in.', 0, 0, '2018-04-03 12:08:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 17, 17, 'Necessitatibus placeat ea qui nam nam. Repudiandae necessitatibus necessitatibus officiis necessitatibus. Corporis ipsa nesciunt non in voluptates. Et itaque libero mollitia sed et est aut iusto.', 1, 0, '1996-03-06 04:01:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 18, 18, 'Qui fugiat soluta qui nesciunt. Quasi aut eius quam et. Mollitia quibusdam et est corrupti ut illum aut. Quasi distinctio rerum tempora. Et ipsa officia illo.', 0, 1, '1996-04-26 17:01:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 19, 19, 'Architecto vitae et sed est esse. Eaque rem consequatur incidunt molestiae officiis. Iusto facilis quidem tempore harum. Totam id voluptatem ratione et alias.', 1, 0, '2017-02-16 09:49:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 20, 20, 'Aut laboriosam amet inventore dignissimos ab reiciendis nesciunt. Sed sint aperiam quos quidem reprehenderit sapiente. Deleniti ducimus ut culpa qui tempora doloribus. Ipsa et natus eius rerum.', 1, 0, '2005-04-19 16:30:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 21, 21, 'Illum error reprehenderit eaque totam. Id nostrum animi nostrum doloribus illo. Quod magnam saepe harum est.', 0, 1, '2002-08-29 17:17:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 22, 22, 'Enim sit voluptas autem. Et dolor quibusdam harum cum blanditiis odio iure. Voluptate eum et labore doloribus provident.', 0, 1, '2002-04-28 05:21:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 23, 23, 'Possimus quas et excepturi hic aspernatur nulla. Vitae odit omnis dolor nihil distinctio. Dolores ea quo animi soluta totam.', 1, 0, '1977-04-27 04:41:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 24, 24, 'Repellat magni et quis. Quaerat sit tempora sit dicta at est minima aut. Voluptatem aliquid harum laudantium alias pariatur omnis nihil. Sequi explicabo impedit distinctio qui vel dolor qui.', 1, 1, '1994-11-07 16:20:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 25, 25, 'Aut officia illo eligendi. Voluptas fugit doloribus omnis corporis. Quas cum consequatur recusandae adipisci possimus sint nihil.', 1, 0, '1991-07-04 07:31:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 26, 26, 'Dolores debitis deserunt omnis dolor. Rem sit et sint. Praesentium magni similique porro totam consequatur ut aut. Ab et laborum deserunt cupiditate reiciendis.', 0, 0, '1992-02-09 07:26:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 27, 27, 'Qui optio vel non inventore fuga. Autem totam autem eveniet porro. In dignissimos provident eius voluptas. Et veniam ut necessitatibus corrupti et voluptatem.', 1, 1, '1996-04-14 20:03:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 28, 28, 'Corrupti error atque architecto architecto ut officia. Quisquam in consequuntur impedit. At ullam ut non qui.', 1, 1, '2017-10-12 04:59:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 29, 29, 'Nisi molestiae quia earum nisi quia iste et. Dolorum magnam quia quo voluptatem sed illum. Debitis tempora dolorem ut minima possimus libero cumque.', 0, 1, '2004-09-28 23:35:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 30, 30, 'Ullam aut ut quis tenetur sit iusto eligendi praesentium. Laudantium repellendus aliquam sapiente dolores sint corrupti.', 0, 0, '1993-02-20 00:11:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 31, 31, 'Sint ut et tempora ut ex provident. Quos sint cupiditate mollitia et accusamus. Et est eveniet quo praesentium pariatur minus.', 0, 0, '2007-06-21 00:54:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 32, 32, 'Aspernatur eligendi doloremque omnis. Eligendi sed dolore in vel aut. Beatae autem repellat qui accusamus id ut at. Aliquid nihil sed numquam assumenda quis facere ut.', 0, 0, '2015-11-07 01:52:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 33, 33, 'Officiis odit nesciunt exercitationem ipsum quis. Totam voluptatem placeat sint voluptatem et sequi. Nam qui ad quae est velit tempore et.', 1, 0, '2014-11-24 20:43:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 34, 34, 'Molestiae deleniti sit inventore optio eos possimus. Laudantium nam tempore nam tenetur rerum voluptas. Quibusdam nam est adipisci ut sunt ad consequatur.', 0, 1, '2006-08-09 12:09:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 35, 35, 'Tempore veritatis facilis est porro rerum est. Beatae doloremque libero minus earum. Nobis incidunt facilis id.', 1, 1, '1976-06-07 05:16:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 36, 36, 'Tempore est excepturi asperiores saepe et in suscipit quisquam. Itaque ipsum aliquid laudantium officia. Ipsam iusto laudantium aut voluptatem. Qui rerum deleniti ut.', 0, 1, '1996-09-12 23:06:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 37, 37, 'Exercitationem voluptas odit tempore tempora sed ut qui. Facere fugiat voluptates praesentium magnam. Suscipit deleniti fugit facilis reprehenderit est tempore harum.', 0, 1, '1995-10-01 02:16:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 38, 38, 'Numquam voluptatem accusantium facilis sit sed dicta. Fugit blanditiis magni magni odit amet corrupti. Quia dicta sit id voluptatum eum dolores amet.', 0, 0, '2011-05-23 02:03:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 39, 39, 'Hic quo numquam pariatur animi. Enim maiores tempora voluptas. Laboriosam eveniet aliquam ex eum voluptatem voluptatum sit.', 1, 1, '2007-05-09 00:25:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 40, 40, 'Et ea distinctio ut nesciunt iste quidem quos. Voluptatum ipsam quisquam sed et. Dolores dolores maiores ut sit qui sapiente nisi. Nam iusto quia suscipit eos aut.', 0, 1, '1972-09-01 14:27:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 41, 41, 'Ut et ut ex quasi quibusdam facilis. Natus quisquam deleniti hic sint. Repudiandae consequatur voluptatem et quidem vero in eaque. Voluptas quis sunt nemo doloribus optio saepe sunt esse.', 0, 0, '2008-10-30 16:15:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 42, 42, 'Saepe quas soluta voluptatibus et porro. Molestiae qui nostrum tempora earum nisi. Praesentium a eos est non magni ab.', 1, 0, '1978-04-06 06:36:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 43, 43, 'Placeat distinctio pariatur mollitia et quos neque maiores. Perspiciatis tempora nihil reiciendis excepturi suscipit et. Occaecati veniam at qui numquam iusto.', 1, 0, '2000-04-23 09:19:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 44, 44, 'Tempora aut quod amet magnam fugiat ab. Numquam voluptates omnis numquam totam. Sequi nihil et sit voluptas ut.', 1, 1, '2003-07-18 02:19:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 45, 45, 'Et reiciendis qui expedita et. Debitis ut ut maiores qui quia esse.', 0, 0, '1989-01-07 22:52:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 46, 46, 'Et reiciendis tempore fugiat molestiae deserunt illum nostrum. Atque reiciendis saepe tenetur et. Culpa iusto excepturi ex assumenda vel quos.', 1, 1, '2019-11-21 16:18:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 47, 47, 'Cum est aliquam excepturi omnis facilis sint et alias. Sed corrupti doloribus iure illum illum corrupti. Nostrum quae est nihil velit consequatur. Consequatur aperiam possimus totam.', 1, 1, '2001-07-07 16:25:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 48, 48, 'Vel qui at dolore asperiores. Est illum voluptas quaerat debitis et doloribus. Quos odit voluptas neque voluptatem quod doloribus dicta. Dolores nulla ratione nulla et ea.', 1, 1, '1984-08-24 14:50:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 49, 49, 'Est et quaerat est at dicta ut et. Nobis non nostrum veniam est occaecati. In eius velit voluptatum. Quibusdam error quo sed fuga.', 0, 1, '2004-02-21 21:17:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 50, 50, 'Ut ut saepe doloribus voluptas a et et alias. Voluptatem est similique fugiat ut accusantium amet tempore.', 0, 1, '1970-09-30 10:38:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 51, 51, 'Praesentium id facere dolore quas illo. Voluptas eum ea consectetur alias. Aperiam maiores optio explicabo autem qui ab. Totam voluptas ipsam accusantium saepe tempora.', 1, 0, '1991-11-29 14:36:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 52, 52, 'Quia aperiam sed ipsam. Aliquam recusandae commodi rerum blanditiis perferendis inventore odio. Et magni omnis deleniti ipsa libero. Quia ducimus minima autem qui harum.', 1, 1, '1980-03-01 01:09:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 53, 53, 'Cupiditate fugiat cupiditate nemo. Sit distinctio fuga consequatur sed tempore. Aut sed aut est cum. Suscipit iste autem voluptas eligendi assumenda.', 0, 0, '2006-07-20 10:51:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 54, 54, 'Reprehenderit ut hic et fugiat tempora sunt. Earum nostrum eius reprehenderit tempore aut omnis. Dolorem maxime odit rerum est. Reiciendis necessitatibus voluptas natus et quia ex.', 0, 0, '1992-08-24 18:04:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 55, 55, 'Et in beatae quod autem omnis neque. Autem et iusto id. Cum et quia velit reprehenderit.', 1, 1, '2000-03-05 20:47:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 56, 56, 'Blanditiis optio aperiam dolor quisquam velit officia corporis voluptatem. Sapiente repudiandae animi perspiciatis ex. Nulla enim adipisci nobis quas maiores.', 1, 1, '2012-03-05 08:09:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 57, 57, 'Est et consequuntur quis omnis delectus et reprehenderit perspiciatis. Quo alias dicta est eligendi eos debitis repudiandae. Vero officia numquam tenetur voluptates ut possimus distinctio.', 1, 1, '1977-07-23 14:54:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 58, 58, 'Numquam eius ut nesciunt quos. Aspernatur eum rerum alias. Fugiat provident quasi amet aut.\nReprehenderit enim et sint tenetur. Accusantium est quaerat dolorem harum accusamus.', 0, 1, '1974-05-07 12:27:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 59, 59, 'Omnis asperiores impedit ut nemo hic et. Excepturi dicta voluptas quam ab ut.', 0, 1, '2012-07-19 15:42:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 60, 60, 'Et sint ut commodi qui ea cum vitae. Aut aliquam est id fugit. Ut omnis est non et. Praesentium et corrupti odio dolorem debitis voluptate earum.', 0, 1, '1971-06-11 09:58:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 61, 61, 'Et distinctio ipsum unde rerum numquam quisquam corrupti. Repellat cupiditate harum velit aut occaecati repellendus. Amet porro voluptas non sunt magnam sunt est.', 1, 1, '1979-08-10 17:33:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 62, 62, 'Placeat esse illum praesentium repellat distinctio. Quam voluptas aut in impedit debitis odit ex. Assumenda excepturi qui est ipsum.', 0, 1, '1970-05-09 03:05:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 63, 63, 'Perspiciatis nihil rerum velit. Vel velit delectus omnis id recusandae. Et et rerum doloribus molestiae exercitationem. Quo minus magnam aut consectetur aperiam.', 0, 0, '1971-11-26 05:50:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 64, 64, 'Qui omnis voluptatem doloribus incidunt architecto corrupti. Architecto non necessitatibus et eaque consequatur suscipit. Et aspernatur dolores tempore explicabo facilis sequi enim.', 0, 1, '2017-10-16 01:54:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 65, 65, 'Et aut sunt mollitia ut. Repudiandae assumenda sint quasi nam. Omnis pariatur mollitia error et rerum.', 1, 0, '1978-09-14 20:51:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 66, 66, 'Iusto aut aut voluptatem neque maxime. Doloremque et eos minus molestiae. Nihil quam et est debitis repudiandae repellendus optio. Nemo fugiat neque quia dicta.', 0, 0, '1981-01-09 22:40:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 67, 67, 'Nisi at est ut ipsum. Eos tempora labore nulla exercitationem enim ullam. Neque ea autem provident eligendi. Dolor blanditiis sequi doloremque rerum eaque rerum tempora. Ipsa quasi vero aperiam.', 1, 1, '1980-11-28 15:52:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 68, 68, 'Alias doloribus et dolor modi nobis. Sint sed est qui debitis et qui autem fugiat. Soluta non est vero consequatur maiores porro voluptatem itaque.', 0, 0, '1991-05-26 17:27:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 69, 69, 'Amet repudiandae enim aut. Quis ut ut eaque quis. Doloribus maiores perspiciatis et non qui nemo excepturi ipsam.', 0, 1, '2002-12-11 14:12:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 70, 70, 'Omnis veritatis dolores officiis possimus nostrum. Architecto velit consequuntur et amet. Qui eum nesciunt quis ut. Omnis qui ipsa quasi enim cum. Quia eius a rerum.', 0, 0, '2014-06-01 19:10:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 71, 71, 'Enim amet dicta cum iusto distinctio laborum excepturi. Pariatur quae ullam vitae earum ea nihil et. Ut vel ullam ullam tempore aut eum et.', 1, 0, '2000-06-12 16:22:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 72, 72, 'Qui qui ut rerum dolores sit repudiandae. Illo eaque sed nihil. Qui quod velit id eaque distinctio assumenda impedit cupiditate. Earum perferendis dolore et enim sunt neque sit omnis.', 1, 1, '1987-09-02 01:58:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 73, 73, 'Rerum et est aut sed. Repellendus dolores id officiis pariatur et. Reprehenderit veritatis et ratione omnis eligendi.', 1, 1, '2010-04-28 16:02:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 74, 74, 'Distinctio qui quaerat occaecati quia. Natus reprehenderit aperiam quia eum corporis. Tenetur unde animi voluptatibus harum dolorem. Sed assumenda commodi omnis expedita non laborum.', 0, 0, '2003-05-28 22:01:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 75, 75, 'Eos adipisci optio in dolores. Qui optio quo et. Enim cupiditate consequatur quisquam occaecati. Necessitatibus non eos facilis.', 1, 1, '1991-02-24 10:20:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 76, 76, 'Mollitia non omnis dolor illum distinctio dolor necessitatibus. Impedit nemo rerum accusamus quis.', 1, 1, '2014-04-05 10:22:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 77, 77, 'Perspiciatis recusandae quia sint qui iste. Et commodi aut iusto. Dicta velit non quo quod minus nemo at.', 0, 1, '2016-06-11 23:48:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 78, 78, 'Et reiciendis ut est. Animi natus doloremque vel amet veritatis sunt. Voluptas officiis est error vitae architecto autem rem.', 0, 0, '1975-05-05 19:10:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 79, 79, 'Minima in sint ut perferendis. Repellendus quod soluta quibusdam aut aut iusto. Corrupti ex minima inventore et exercitationem maxime. Quasi labore explicabo amet quae optio sed odio mollitia.', 1, 1, '2010-05-26 03:04:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 80, 80, 'Qui consequatur aut reprehenderit architecto animi. Aut corporis non sit. Voluptas aut consectetur nihil occaecati delectus.', 0, 0, '2016-06-17 12:58:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 81, 81, 'Ratione provident maxime architecto eum dolorum mollitia similique. Facilis sit occaecati omnis distinctio dolorem sapiente. Quisquam alias harum deserunt deserunt aut.', 1, 1, '2010-01-02 04:51:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 82, 82, 'Necessitatibus est dolorem et expedita eligendi eum voluptatem quae. Quasi et reiciendis suscipit quibusdam et quae. Eos quidem error blanditiis quo laudantium cupiditate est.', 0, 1, '1997-10-29 03:56:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 83, 83, 'Qui odio ab ut consequatur sequi. Nobis sunt illo quo voluptatem nesciunt et et. Et dolores cupiditate tempora a velit facere.', 1, 0, '2001-12-28 04:32:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 84, 84, 'Aut excepturi libero esse aut ea rem repudiandae. Culpa corporis consectetur eaque impedit asperiores mollitia accusamus. Totam cum nam in qui rerum occaecati et.', 0, 0, '1991-08-13 15:22:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 85, 85, 'Sequi totam amet vel ut. Asperiores id qui voluptas sint eum magnam amet soluta. Qui mollitia dolore quam iste dolor atque. Voluptas ut nobis qui omnis.', 1, 1, '1980-06-25 11:58:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 86, 86, 'Aut aut fugit expedita temporibus. Odio id et voluptas debitis eos. Dolore cumque quod voluptatem odit quia. Expedita cumque iusto ea dolorem aut.', 0, 0, '1973-11-12 22:09:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 87, 87, 'Nulla minus sapiente quia enim fugit exercitationem. Distinctio minus harum nostrum odit. Sit iste velit aliquam.', 0, 1, '2000-06-11 13:12:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 88, 88, 'Omnis similique ut libero enim eos. Veniam eius est sit eligendi culpa temporibus.', 1, 1, '1985-05-18 06:41:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 89, 89, 'Quae fugit porro accusantium quia modi ipsam veritatis velit. Sequi officiis est cupiditate enim. Illo recusandae mollitia sit dolores molestiae repellat error odit. Autem dolorem est debitis illum.', 1, 0, '2002-10-05 22:13:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 90, 90, 'Ipsam architecto ut rem rerum fugiat aut aperiam. Corrupti cupiditate eveniet a quae numquam. Laboriosam illum alias laudantium.', 0, 1, '1997-06-22 03:16:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 91, 91, 'Et commodi maiores perspiciatis ut quas est. Laudantium id ea sed corrupti et. Natus repudiandae facilis eligendi.', 1, 0, '1993-10-07 13:41:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 92, 92, 'Rem voluptates nam eaque. Corrupti quam autem dolor magni. Beatae ducimus repudiandae et itaque cum inventore vero. Quis eveniet perspiciatis modi esse ea cupiditate ipsa.', 0, 1, '1971-07-10 04:52:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 93, 93, 'Provident quibusdam et soluta earum fugit minima. Et dolor magnam at optio consectetur consequuntur sapiente voluptatem. Fugiat autem tempora ex recusandae earum accusamus.', 0, 1, '2012-03-14 22:35:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 94, 94, 'Ea placeat dolorem repellat eos reiciendis consectetur. Assumenda aut sapiente non. Repudiandae molestiae earum sapiente non. Et quasi aliquam impedit qui temporibus.', 0, 0, '1977-04-19 06:21:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 95, 95, 'Aspernatur qui commodi dignissimos soluta unde. Autem eos ullam eos nulla iure. Eius eius blanditiis nostrum adipisci quod ut perferendis. Omnis doloribus eveniet aut delectus.', 1, 0, '2003-06-06 08:00:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 96, 96, 'Quos voluptatem et occaecati nobis ipsam et harum veniam. Facere aspernatur perferendis optio sed. Delectus libero nam ullam ea ipsum.', 1, 0, '2006-06-02 21:29:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 97, 97, 'Enim quam doloribus soluta quibusdam perspiciatis. Omnis quae omnis exercitationem. Amet recusandae adipisci vitae ipsum omnis quod. Pariatur magni doloremque aliquam fuga.', 1, 0, '1970-01-01 20:37:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 98, 98, 'Repudiandae autem velit voluptates quaerat et. Doloribus ipsum est porro ex. Ipsa qui molestiae odio harum. Dolores voluptatibus unde dicta odio consequatur ea.', 1, 1, '2006-07-29 04:50:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 99, 99, 'Nesciunt molestiae officiis error. Occaecati fugiat dicta nemo excepturi quia recusandae velit.', 0, 0, '2009-03-09 06:24:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 100, 100, 'Ut cupiditate quia adipisci velit adipisci nihil quis. Saepe id maxime porro soluta. Quis ad reprehenderit earum quia.', 1, 1, '1978-10-11 07:54:32');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (1, 'f', '2011-05-19', 'Port Shemarstad', 'Falkland Islands (Malvinas)', 1, '1993-03-15 15:59:17', '1985-03-30 12:12:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (2, 'f', '1971-04-10', 'Port Kiarabury', 'Sri Lanka', 2, '1978-06-12 10:31:35', '2013-03-28 02:03:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (3, 'm', '1999-03-01', 'North Maida', 'Uganda', 3, '2011-06-12 10:00:38', '2009-09-05 20:59:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (4, 'f', '2014-03-25', 'South Shayna', 'Mayotte', 4, '1987-04-24 17:49:22', '1978-11-15 12:30:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (5, 'f', '1997-08-27', 'Dejonland', 'Jordan', 5, '2012-01-02 23:52:54', '2018-04-09 01:10:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (6, 'm', '2002-08-03', 'New Rosie', 'Zambia', 6, '1981-11-14 11:33:03', '1992-08-28 17:59:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (7, 'm', '1982-11-14', 'Volkmanview', 'Kazakhstan', 7, '1998-01-01 21:28:19', '1983-09-15 11:18:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (8, 'f', '2001-12-27', 'East Ciara', 'Oman', 8, '1990-06-09 17:44:04', '1990-01-28 20:10:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (9, 'm', '1983-11-29', 'East Gwendolynland', 'Nicaragua', 9, '1993-04-21 04:51:17', '2013-03-13 16:41:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (10, 'f', '1979-08-27', 'South Rae', 'Tuvalu', 10, '1986-05-05 10:44:18', '2010-11-15 14:29:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (11, 'm', '2017-03-25', 'East Brendanhaven', 'New Zealand', 11, '1972-03-20 00:29:44', '2013-11-25 20:03:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (12, 'f', '1990-07-21', 'Stehrfurt', 'Bangladesh', 12, '2020-03-26 17:25:03', '1996-12-14 17:44:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (13, 'm', '1989-05-25', 'Otiliastad', 'Chad', 13, '2018-06-11 20:57:56', '2015-10-04 02:54:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (14, 'f', '1996-07-08', 'Heathcotechester', 'Ghana', 14, '1991-03-16 02:32:26', '1978-03-24 01:49:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (15, 'm', '2015-06-08', 'East Lenny', 'Azerbaijan', 15, '2009-06-07 20:18:07', '2000-05-15 12:16:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (16, 'f', '1988-03-23', 'Farrellstad', 'Malaysia', 16, '2006-06-03 08:15:46', '1977-09-09 23:50:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (17, 'f', '2013-04-13', 'Rippinview', 'Czech Republic', 17, '2018-09-17 19:01:00', '1999-01-16 17:11:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (18, 'm', '1990-01-25', 'Haaghaven', 'Japan', 18, '1978-05-14 04:17:57', '2004-03-25 01:31:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (19, 'f', '1989-12-11', 'Port Mabel', 'Bhutan', 19, '2020-01-09 02:33:34', '1985-06-10 20:23:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (20, 'f', '1986-08-29', 'Wiegandchester', 'Nepal', 20, '2006-04-21 17:00:16', '1982-02-23 10:07:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (21, 'f', '1971-06-19', 'Runolfssonmouth', 'Yemen', 21, '1973-11-02 09:30:20', '1996-06-20 19:03:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (22, 'f', '2016-08-29', 'New Joaniehaven', 'Montenegro', 22, '1993-06-06 10:07:45', '1989-11-03 18:18:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (23, 'm', '2014-04-21', 'Port Maudie', 'Italy', 23, '2001-06-14 05:44:04', '2008-06-29 01:26:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (24, 'm', '2015-07-13', 'Lake Chad', 'Greece', 24, '1995-06-11 04:30:19', '2010-12-30 20:24:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (25, 'm', '2006-11-21', 'Lake Donavon', 'Cameroon', 25, '1991-03-05 04:41:36', '2001-10-24 20:33:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (26, 'm', '2014-03-26', 'East Gusborough', 'Israel', 26, '2011-04-14 17:33:28', '1988-02-12 01:08:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (27, 'm', '1996-09-21', 'South Ashlynn', 'Algeria', 27, '1980-09-27 07:50:02', '2004-11-25 19:21:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (28, 'm', '2003-06-12', 'Isaacview', 'Bermuda', 28, '1976-08-31 18:21:42', '1976-04-04 16:51:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (29, 'f', '2019-11-01', 'Wilkinsonborough', 'Tajikistan', 29, '1971-03-07 01:50:15', '2016-02-04 12:04:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (30, 'f', '1998-09-02', 'Ciarahaven', 'Guinea-Bissau', 30, '1990-01-24 18:59:11', '2019-04-19 10:48:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (31, 'm', '2012-12-21', 'South Russport', 'Nicaragua', 31, '1973-07-06 09:59:41', '1971-07-29 13:24:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (32, 'm', '1990-04-27', 'East Pearlmouth', 'Philippines', 32, '1975-11-12 15:58:09', '1978-09-27 20:04:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (33, 'm', '2017-06-14', 'Port Verner', 'Tuvalu', 33, '1994-03-26 13:49:58', '1972-09-02 04:51:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (34, 'm', '2011-03-25', 'Kihnburgh', 'Panama', 34, '1994-03-22 19:23:12', '1995-02-25 14:34:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (35, 'm', '2016-04-10', 'West Kyla', 'Montenegro', 35, '2005-10-25 06:44:17', '1980-12-02 22:27:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (36, 'f', '2005-09-21', 'Caliville', 'Northern Mariana Islands', 36, '2010-10-09 06:39:46', '2016-10-23 04:59:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (37, 'f', '1986-06-08', 'West Jamalland', 'Belarus', 37, '2017-06-19 10:32:27', '2016-10-01 17:30:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (38, 'm', '1982-05-11', 'Alexanefort', 'Northern Mariana Islands', 38, '1998-12-17 09:29:02', '2017-03-23 03:51:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (39, 'm', '1992-07-27', 'East Francescafort', 'Kazakhstan', 39, '2003-01-17 07:51:21', '2017-10-10 10:55:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (40, 'f', '2006-05-21', 'West Madalineton', 'Madagascar', 40, '1996-07-15 21:54:04', '2019-10-12 03:25:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (41, 'm', '1990-12-13', 'South Rory', 'Equatorial Guinea', 41, '2018-08-09 02:18:52', '1987-06-03 09:37:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (42, 'f', '1979-01-16', 'Abshirestad', 'Equatorial Guinea', 42, '1990-02-24 15:08:10', '1992-06-25 14:34:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (43, 'f', '2018-01-12', 'South Heidi', 'Somalia', 43, '1983-03-15 09:40:13', '1993-08-10 17:50:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (44, 'f', '2006-06-06', 'Lake Mekhi', 'United Kingdom', 44, '1996-02-04 11:44:29', '2007-05-04 19:27:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (45, 'f', '1972-07-08', 'New Carolinaton', 'United States of America', 45, '2013-12-23 05:43:43', '2020-01-20 00:04:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (46, 'm', '1977-12-31', 'Ebertfurt', 'Serbia', 46, '2011-07-18 23:44:36', '1978-05-27 16:13:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (47, 'f', '1981-01-29', 'Dareborough', 'Falkland Islands (Malvinas)', 47, '1981-02-06 12:37:41', '1997-11-10 11:10:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (48, 'f', '1973-02-20', 'North Lexusborough', 'Cuba', 48, '1971-06-01 00:37:01', '1992-12-02 08:46:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (49, 'm', '2008-12-14', 'New Ethamouth', 'Iran', 49, '1977-02-12 14:51:59', '2016-09-25 06:27:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (50, 'm', '1976-11-14', 'Port Andreaneport', 'Eritrea', 50, '2016-06-10 19:35:39', '1990-11-27 19:51:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (51, 'm', '2009-11-12', 'Port Fridamouth', 'Kiribati', 51, '2008-12-23 18:17:57', '1975-06-07 16:04:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (52, 'f', '1971-07-03', 'Norrisborough', 'Pitcairn Islands', 52, '2012-10-19 14:59:28', '1974-05-19 23:47:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (53, 'm', '2002-02-28', 'North Deangelofort', 'Oman', 53, '2012-03-05 02:11:01', '2012-05-24 16:09:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (54, 'm', '1988-12-06', 'Hartmannmouth', 'Bahrain', 54, '1972-01-16 13:34:25', '1971-12-24 18:19:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (55, 'm', '2013-09-04', 'North Holdenborough', 'Bulgaria', 55, '1990-11-27 15:31:24', '1984-04-19 06:36:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (56, 'f', '1997-11-25', 'North Reginald', 'Brunei Darussalam', 56, '1975-06-05 06:07:23', '2002-12-27 03:00:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (57, 'm', '2001-10-08', 'Angusmouth', 'Northern Mariana Islands', 57, '1980-07-29 19:52:20', '2012-06-30 02:10:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (58, 'f', '1970-07-06', 'Lake Douglasfurt', 'Saint Vincent and the Grenadines', 58, '1977-07-04 17:59:59', '1996-02-11 07:51:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (59, 'm', '1989-03-26', 'East Oralmouth', 'Guadeloupe', 59, '2018-05-06 21:39:43', '1977-09-16 06:24:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (60, 'f', '1996-09-16', 'North Jodyburgh', 'Egypt', 60, '1999-09-25 00:12:36', '1982-04-05 05:35:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (61, 'm', '2000-06-22', 'Kayastad', 'Turkey', 61, '1990-05-20 18:52:40', '2000-08-29 07:41:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (62, 'm', '2012-02-26', 'Yostfurt', 'Cote d\'Ivoire', 62, '1993-02-25 16:39:36', '1998-05-31 11:33:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (63, 'f', '2001-07-24', 'Donavonville', 'Bulgaria', 63, '1995-11-13 08:33:28', '1983-10-19 06:55:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (64, 'm', '2008-10-28', 'North Edmund', 'Finland', 64, '1997-10-25 15:15:13', '1972-06-24 14:51:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (65, 'f', '1996-10-30', 'Port Elenorview', 'Senegal', 65, '1986-10-09 18:43:32', '2003-12-21 14:05:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (66, 'f', '1980-10-10', 'Champlinland', 'Finland', 66, '1992-08-12 00:37:27', '2016-07-15 19:14:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (67, 'f', '1978-10-20', 'North Layne', 'Philippines', 67, '2005-03-27 01:03:47', '2013-06-02 20:08:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (68, 'm', '2019-07-11', 'Jontown', 'Uganda', 68, '1987-10-06 11:16:27', '2014-03-19 22:41:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (69, 'f', '1981-12-21', 'Estellefurt', 'San Marino', 69, '1979-05-29 03:03:20', '2006-12-22 02:25:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (70, 'f', '2019-03-07', 'Port Emmitt', 'Western Sahara', 70, '2012-06-24 05:15:24', '1990-01-09 02:58:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (71, 'm', '2011-02-01', 'North Berthaside', 'Kenya', 71, '2005-12-13 04:40:44', '2013-11-10 13:00:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (72, 'f', '2000-11-11', 'Eddieport', 'Albania', 72, '2009-06-21 13:57:41', '1987-02-22 17:42:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (73, 'f', '2006-09-16', 'West Ottismouth', 'Korea', 73, '1991-09-13 13:48:26', '2019-08-03 02:55:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (74, 'f', '1997-08-01', 'New Ruth', 'Cayman Islands', 74, '2009-10-31 20:09:46', '2013-07-17 04:01:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (75, 'm', '1984-06-26', 'Pourosburgh', 'Chad', 75, '1998-06-16 07:15:56', '1980-05-29 00:15:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (76, 'm', '2011-03-01', 'Evanchester', 'Denmark', 76, '1980-06-09 17:31:14', '2020-02-21 12:06:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (77, 'm', '2002-03-31', 'Paulmouth', 'Angola', 77, '2006-02-02 13:41:04', '2006-02-11 08:13:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (78, 'f', '1974-10-29', 'Ornville', 'South Georgia and the South Sandwich Islands', 78, '2006-11-04 07:28:48', '1995-02-12 16:11:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (79, 'f', '1979-09-06', 'Sydneefort', 'Cambodia', 79, '2019-01-10 22:19:34', '1997-09-21 01:33:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (80, 'f', '2011-06-17', 'New Laurianne', 'Antarctica (the territory South of 60 deg S)', 80, '2019-06-15 05:33:03', '2002-09-17 16:21:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (81, 'f', '2018-04-06', 'Johnsonchester', 'Myanmar', 81, '2012-02-20 19:43:48', '2008-03-08 23:43:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (82, 'm', '1989-01-28', 'Greenfort', 'Mauritania', 82, '1980-11-17 21:01:58', '2010-06-08 06:48:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (83, 'm', '2007-10-16', 'Leannonton', 'Pakistan', 83, '1982-01-21 19:02:04', '2019-12-05 17:14:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (84, 'm', '2003-05-22', 'East Fay', 'Heard Island and McDonald Islands', 84, '2015-08-24 21:50:41', '2014-08-21 01:12:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (85, 'm', '2009-06-03', 'North Paxton', 'Slovenia', 85, '2005-03-29 10:55:30', '2006-09-21 21:34:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (86, 'f', '2003-12-24', 'Claudebury', 'Saint Martin', 86, '1984-12-10 09:24:59', '1983-07-21 04:43:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (87, 'f', '2004-10-05', 'New Lauren', 'Luxembourg', 87, '1976-09-05 11:25:03', '1983-08-31 05:33:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (88, 'f', '1979-05-26', 'East Alysha', 'Equatorial Guinea', 88, '1988-03-10 17:54:52', '1972-06-13 06:45:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (89, 'f', '2009-08-11', 'North Melba', 'Bahamas', 89, '1978-09-13 07:23:48', '1987-10-15 05:08:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (90, 'f', '1992-02-09', 'Jochester', 'New Caledonia', 90, '1970-09-26 01:32:46', '1975-03-03 00:16:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (91, 'f', '2007-01-14', 'Lowefort', 'Dominica', 91, '1993-04-04 00:56:09', '1996-11-09 10:40:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (92, 'm', '2008-04-06', 'Stefanieton', 'Lebanon', 92, '1997-03-19 06:22:19', '1974-04-12 16:11:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (93, 'f', '2014-12-07', 'South Fabiolachester', 'Guinea', 93, '2011-12-19 08:56:09', '2002-08-21 05:55:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (94, 'f', '2015-04-22', 'North Verdiemouth', 'Portugal', 94, '2003-01-28 10:14:29', '1974-06-06 21:45:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (95, 'm', '1986-05-16', 'Robelfurt', 'Seychelles', 95, '1989-11-02 17:25:49', '1989-10-06 08:03:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (96, 'f', '1982-11-04', 'Nadermouth', 'Russian Federation', 96, '1995-08-16 14:43:02', '2000-04-29 14:15:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (97, 'm', '2015-02-14', 'Vincenzotown', 'Tuvalu', 97, '1994-10-20 12:18:14', '2011-02-04 00:26:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (98, 'm', '1992-09-27', 'North Josefa', 'Macao', 98, '1979-05-28 23:37:34', '2014-03-23 19:51:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (99, 'm', '1979-03-24', 'West Jaydeborough', 'Kyrgyz Republic', 99, '1974-06-01 13:16:22', '2011-07-01 22:40:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (100, 'f', '2006-10-18', 'Lake Rashawnview', 'Swaziland', 100, '2003-05-08 08:38:58', '1998-05-18 03:07:36');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Simone', 'Beahan', 'daija95@example.net', '1-489-319-0469', '2010-11-09 17:22:15', '2010-11-03 18:21:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Toney', 'Halvorson', 'madalyn19@example.com', '(511)917-5824x845', '2011-03-10 19:36:02', '2012-02-20 15:19:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Annamarie', 'Johns', 'karina.mraz@example.org', '1-654-985-9044x6548', '2011-01-23 19:50:19', '2019-03-04 12:50:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Katlyn', 'Ritchie', 'kautzer.carmine@example.org', '(094)748-1529', '2011-11-14 04:56:36', '2019-02-20 20:13:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Beaulah', 'Bernier', 'addison.eichmann@example.com', '06910389543', '2019-11-13 23:46:41', '2010-05-08 19:36:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Dustin', 'Little', 'morgan93@example.com', '1-602-423-6963x13800', '2013-11-15 15:25:48', '2011-10-13 10:15:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Julien', 'Beier', 'khagenes@example.com', '(392)470-0934', '2018-08-15 22:11:02', '2015-01-21 13:55:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Ebony', 'Pollich', 'blesch@example.org', '(891)374-9639x3322', '2011-05-11 01:50:59', '2015-03-04 15:45:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Maryjane', 'Koss', 'vivien.vonrueden@example.org', '918.887.1313', '2010-05-18 17:53:55', '2019-03-13 18:35:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Cordie', 'Raynor', 'jorge95@example.org', '301-038-6485x6910', '2018-10-22 08:34:39', '2018-06-01 11:09:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Drew', 'Runolfsdottir', 'mason70@example.org', '(989)669-8230', '2018-07-21 18:41:25', '2019-04-02 02:41:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Gabrielle', 'Swift', 'felicity36@example.org', '+74(2)1054959248', '2012-05-18 04:12:30', '2016-07-01 11:50:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Beau', 'Spencer', 'sierra20@example.com', '(886)989-8134', '2011-01-19 04:50:57', '2014-09-20 11:06:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Kristy', 'Reichel', 'cortez10@example.net', '194.503.8123x12092', '2014-05-28 01:06:39', '2017-11-02 06:47:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Unique', 'Willms', 'o\'connell.felipe@example.com', '+75(5)8093650210', '2013-05-18 00:22:28', '2013-03-08 20:30:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Zoie', 'Hayes', 'uwuckert@example.com', '208.430.9697x92337', '2017-02-20 15:41:55', '2019-07-18 15:07:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Marion', 'Legros', 'xschiller@example.com', '316.697.6148', '2019-05-17 18:35:04', '2019-10-15 00:49:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Rose', 'Pollich', 'kub.clinton@example.net', '178-231-2583', '2018-01-07 19:46:12', '2020-01-17 10:36:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Meghan', 'Hyatt', 'shields.aurelia@example.org', '1-592-973-3402', '2013-12-26 16:09:45', '2016-09-13 08:07:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Samara', 'Carter', 'aric.krajcik@example.com', '+38(3)9688729698', '2015-02-16 10:18:44', '2017-01-25 00:24:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Carissa', 'Heller', 'stanley.beahan@example.com', '1-659-730-4730x77626', '2020-02-09 01:32:40', '2015-09-05 01:09:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Adrian', 'Fay', 'fletcher50@example.org', '518.067.9268', '2016-10-31 08:49:16', '2018-06-29 00:16:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Jean', 'Ryan', 'rblick@example.net', '557.710.8289', '2012-10-26 20:26:07', '2018-10-23 20:58:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Vladimir', 'Dibbert', 'hmosciski@example.net', '411.153.4265x3063', '2017-01-14 11:22:33', '2012-06-24 14:19:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Emelie', 'Ferry', 'kris65@example.org', '570-092-2358', '2010-11-02 21:27:16', '2017-09-14 17:46:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Dahlia', 'Anderson', 'ozulauf@example.com', '1-067-492-3328x62977', '2018-07-09 08:59:34', '2016-08-04 00:19:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Annamae', 'Rosenbaum', 'drake.hamill@example.com', '568.417.0103x784', '2012-06-11 14:06:32', '2018-01-24 16:27:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Howard', 'Harvey', 'cbernhard@example.com', '+18(4)5446335058', '2013-08-01 00:16:01', '2014-10-20 07:52:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Sydnee', 'Wunsch', 'tmccullough@example.net', '076.137.7678x0970', '2013-09-12 04:40:44', '2014-03-24 21:16:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Elmo', 'Marquardt', 'haleigh77@example.org', '1-097-936-0977', '2012-04-10 06:42:47', '2012-04-01 01:02:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Alexzander', 'Gottlieb', 'jeffrey.effertz@example.net', '927.787.4451', '2012-08-14 14:01:49', '2012-01-22 07:46:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Aurore', 'Abernathy', 'eledner@example.net', '04731315749', '2014-02-22 16:39:45', '2014-04-18 14:33:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Devan', 'McClure', 'ykozey@example.org', '1-459-590-2931x202', '2019-03-17 20:23:58', '2014-01-12 06:52:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Catalina', 'Bogisich', 'gerson73@example.org', '1-442-627-6653x583', '2019-06-08 14:48:52', '2013-01-26 01:25:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Paris', 'Lebsack', 'rkutch@example.com', '578.112.4147x58977', '2018-12-09 00:02:58', '2016-03-09 05:31:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Mariano', 'Spencer', 'nicole.o\'connell@example.net', '(661)103-1568x8013', '2012-08-26 19:39:40', '2014-09-01 13:54:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Kiley', 'Rohan', 'birdie.rippin@example.org', '1-888-930-7100', '2015-10-25 11:34:45', '2011-01-11 21:35:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Dedrick', 'O\'Reilly', 'wilma.schuppe@example.com', '+10(6)9146422050', '2017-09-17 00:48:08', '2018-07-15 17:36:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Aubrey', 'Klein', 'fay.laisha@example.org', '1-346-006-2993', '2010-10-09 22:18:33', '2013-03-30 12:39:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Jonathon', 'Stoltenberg', 'uterry@example.com', '947.304.1159', '2012-01-30 08:00:42', '2019-04-18 02:44:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Sister', 'Pacocha', 'jonathan34@example.net', '+81(7)3492031708', '2016-11-25 22:38:54', '2014-02-25 14:03:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Maximus', 'Koepp', 'ashton44@example.net', '+35(9)5453567732', '2012-06-25 05:44:23', '2011-11-23 02:03:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Catalina', 'Wilkinson', 'wwilliamson@example.org', '1-793-970-3459', '2014-01-26 20:45:38', '2018-02-18 07:24:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Baby', 'Hamill', 'clarissa.kirlin@example.net', '+31(3)9139998168', '2016-12-01 18:34:06', '2015-04-13 07:28:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Jody', 'Reilly', 'kuhic.christelle@example.com', '+10(8)0805765737', '2012-02-14 00:53:58', '2013-05-07 03:49:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Ryan', 'Braun', 'giles.pfannerstill@example.com', '420-058-5728x5275', '2013-11-01 19:41:45', '2019-02-02 22:19:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Enola', 'Monahan', 'djerde@example.com', '09055842057', '2019-06-25 03:56:49', '2010-07-19 09:02:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Rosa', 'Hoeger', 'carmine34@example.org', '(746)238-4501x78157', '2019-04-30 06:50:10', '2012-07-16 03:11:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Alda', 'Donnelly', 'jrobel@example.org', '1-646-198-5268', '2010-07-26 22:00:29', '2018-10-22 08:21:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Michele', 'Schimmel', 'will.noelia@example.net', '1-841-252-9815', '2011-06-20 18:05:50', '2019-08-01 01:58:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Brycen', 'Howe', 'obogan@example.org', '(203)864-3588x84186', '2013-10-04 02:29:15', '2010-06-26 13:24:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Eliseo', 'Hagenes', 'phamill@example.com', '544-692-4893x08149', '2013-03-13 23:17:52', '2011-02-11 10:49:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Maximillian', 'Keeling', 'zhilll@example.net', '00727695670', '2011-07-25 13:47:09', '2011-07-09 01:05:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Preston', 'Bayer', 'lina44@example.com', '(188)478-8235x482', '2020-01-02 10:52:16', '2016-11-15 21:53:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Aron', 'Gorczany', 'schuppe.belle@example.org', '+89(9)0853846557', '2012-08-31 12:17:19', '2011-03-28 09:03:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Amara', 'Stiedemann', 'hane.isadore@example.com', '1-878-263-7098', '2018-01-30 11:42:39', '2016-11-21 10:38:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Holly', 'Bailey', 'heaven72@example.net', '659-059-1702x989', '2016-03-19 21:33:33', '2017-11-28 08:06:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Wiley', 'Ullrich', 'precious.kirlin@example.net', '1-409-877-0797', '2010-08-07 02:22:26', '2020-01-24 07:05:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Cody', 'O\'Hara', 'omarquardt@example.com', '1-881-231-0481', '2019-11-29 03:07:51', '2011-03-15 14:33:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Levi', 'Boehm', 'oprice@example.com', '032-077-4672', '2014-02-14 16:06:18', '2016-12-20 04:35:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Kirstin', 'Gislason', 'jkub@example.org', '1-978-970-9635x75718', '2012-09-18 00:22:09', '2011-01-21 22:38:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Johnathan', 'Kihn', 'zosinski@example.net', '1-005-887-3738x07743', '2016-05-01 23:50:32', '2011-07-31 00:59:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'William', 'Turcotte', 'austyn.waters@example.net', '(194)989-7544', '2017-10-19 00:32:50', '2013-09-27 16:22:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Maci', 'Murphy', 'stan.donnelly@example.net', '404.291.2321', '2013-09-09 04:28:01', '2011-03-08 01:37:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Jonathan', 'Ritchie', 'hartmann.joshua@example.net', '(739)941-3934', '2017-07-19 07:57:49', '2018-08-02 22:22:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Laisha', 'Stanton', 'vrunte@example.org', '866-145-9684x08755', '2019-11-20 01:50:01', '2016-12-13 18:17:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Narciso', 'Heller', 'tony.torp@example.com', '+75(2)3810843118', '2013-07-28 00:46:36', '2018-12-22 18:19:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Trinity', 'Zulauf', 'jrice@example.net', '1-030-369-9017x170', '2013-04-06 01:50:37', '2014-03-23 08:52:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Rasheed', 'Pagac', 'o\'reilly.tremaine@example.org', '271-300-2891x847', '2011-09-15 11:01:29', '2019-09-29 15:30:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Claudie', 'Larson', 'francisco61@example.com', '+28(6)7595755907', '2012-10-14 09:02:03', '2016-06-09 16:39:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Aglae', 'Emard', 'justina21@example.com', '033.044.8624', '2018-11-01 14:22:33', '2012-10-11 11:11:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Crawford', 'Homenick', 'wrice@example.com', '897-849-6922x515', '2018-01-12 13:17:36', '2010-07-06 18:15:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Chance', 'Littel', 'chelsie.bartoletti@example.net', '(733)195-8949', '2011-03-19 14:54:23', '2014-01-13 18:34:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Teagan', 'Botsford', 'nblick@example.org', '497-825-4991', '2016-11-25 20:29:08', '2019-06-25 07:22:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Constantin', 'Ryan', 'desmond.stark@example.org', '+94(1)9394021482', '2014-10-29 05:09:58', '2015-05-20 21:14:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Maximilian', 'Bosco', 'dstark@example.net', '1-415-075-2084', '2018-12-08 11:54:56', '2011-04-28 16:47:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Danielle', 'Kerluke', 'tre23@example.net', '298-215-6407x8221', '2019-10-10 00:38:17', '2015-05-17 04:40:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Imogene', 'Breitenberg', 'connie83@example.net', '591.485.7908x450', '2011-05-04 19:53:42', '2011-10-03 08:03:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Sheldon', 'Leannon', 'kunze.marlon@example.com', '(256)070-4699x05935', '2017-10-23 11:48:15', '2015-07-15 13:17:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Eve', 'Hand', 'mbartell@example.net', '1-521-983-6063x5515', '2016-01-28 05:07:51', '2019-12-18 00:21:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Lucio', 'Bauch', 'uriah98@example.net', '671-536-5352x6007', '2011-05-15 23:49:58', '2016-03-15 17:41:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Serena', 'Cormier', 'gerlach.josh@example.com', '1-951-327-4048x0702', '2014-11-23 06:04:06', '2019-11-01 02:12:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Matilda', 'Watsica', 'sanford.ervin@example.org', '965.193.6506', '2011-02-08 20:57:16', '2018-08-18 09:30:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Kristian', 'Deckow', 'ydaniel@example.net', '(472)653-4502x09647', '2011-02-12 09:49:44', '2012-08-24 20:10:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Cade', 'D\'Amore', 'jamir08@example.org', '(788)861-6388x9812', '2019-07-30 12:50:35', '2011-03-28 23:11:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Deanna', 'Reinger', 'felicita95@example.net', '222-793-7032', '2014-06-12 06:59:39', '2013-04-11 15:47:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Rodrick', 'Ortiz', 'burdette28@example.net', '815-130-2291x81987', '2018-10-24 13:56:42', '2012-06-05 20:50:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Hassan', 'Lind', 'romaine13@example.org', '639-861-8255x437', '2015-06-06 14:02:39', '2012-03-22 10:50:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Jonathon', 'Price', 'janet09@example.net', '611.216.0658', '2015-12-05 03:24:27', '2015-06-19 14:07:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Raquel', 'Morissette', 'princess48@example.org', '(389)847-9218x11335', '2011-03-13 08:23:03', '2015-01-13 21:48:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Roberto', 'Kulas', 'joanne.cruickshank@example.org', '386-862-0028x615', '2011-10-20 00:08:41', '2019-11-08 07:27:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Anya', 'Russel', 'hfadel@example.org', '(260)698-1416', '2012-12-17 20:11:56', '2012-09-06 09:54:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Bette', 'Boehm', 'sierra.adams@example.net', '+00(7)9350976895', '2015-07-02 04:36:20', '2013-12-19 12:18:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Alize', 'Eichmann', 'ozemlak@example.org', '439.665.9601', '2011-09-16 03:28:29', '2019-03-10 12:12:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Lilliana', 'Powlowski', 'walsh.diego@example.net', '658.785.4584x57768', '2016-01-08 04:55:21', '2013-01-03 05:15:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Mariana', 'Thompson', 'lakin.selina@example.org', '+47(5)2987126687', '2010-07-13 11:07:16', '2017-01-03 11:12:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Jerel', 'Christiansen', 'abshire.stewart@example.net', '704-131-0497x53763', '2015-07-22 06:23:03', '2013-09-08 11:53:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Waylon', 'Lakin', 'garth.roberts@example.org', '321.669.3445x56382', '2010-12-18 23:44:57', '2019-05-24 02:51:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Chet', 'Hills', 'paula05@example.org', '1-622-155-0466x04247', '2015-02-24 15:41:31', '2016-03-29 18:14:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Justice', 'Jast', 'langosh.gerard@example.com', '(899)898-9161x21508', '2011-09-25 03:00:37', '2014-03-28 02:13:57');


