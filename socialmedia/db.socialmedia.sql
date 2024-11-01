CREATE DATABASE socialmedia;
use socialmedia;
CREATE TABLE `auth_user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `password` VARCHAR(128) NOT NULL,
  `last_login` DATETIME DEFAULT NULL,
  `is_superuser` BOOLEAN NOT NULL,
  `username` VARCHAR(150) NOT NULL UNIQUE,
  `last_name` VARCHAR(150) NOT NULL,
  `email` VARCHAR(254) NOT NULL,
  `is_staff` BOOLEAN NOT NULL,
  `is_active` BOOLEAN NOT NULL,
  `date_joined` DATETIME NOT NULL,
  `first_name` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `auth_user` VALUES
(43, 'pbkdf2_sha256$600000$21ka0LzfyN2LXFUNJOAXQo$7qdar/t0sizNr5Jdg5YM+kyyc0499h38dgJj10fIM/s=', '2023-09-01 18:33:40.344153', 1, 'shankar', '', '', 1, 1, '2023-09-01 18:33:20.359670', ''),
(44, 'pbkdf2_sha256$720000$VkpTBpuBhdZKUuQHxDBp9N$vPbHZtmp2Xh26uT/IF7H6Jn/6uyP43+pI4s+9zv67M0=', '2024-06-10 17:48:20.104663', 0, 'gapython', '', 'ga@gmail.com', 0, 1, '2024-04-15 16:47:36.892903', ''),
(45, 'pbkdf2_sha256$720000$72kwpHBVjzbKoi3gMJnVZb$OkWyqxuE8UqyRBldVylLe67f88faZHAmJ67SmUMqZOg=', '2024-06-10 17:47:14.293344', 1, 'admin', '', 'ad@gmail.com', 1, 1, '2024-04-15 17:05:21.252216', ''),
(46, 'pbkdf2_sha256$720000$1bVKy1XZd8KjPref7ozAwW$qc5lsL0kVR2PgqGmLNttoTeYtVbm97HZpsMfpgdz+DQ=', '2024-04-15 17:09:36.014726', 0, 'gapython2', '', 'ga2@gmail.com', 0, 1, '2024-04-15 17:09:35.211605', ''),
(47, 'pbkdf2_sha256$720000$P5BoRCf3N8dWxXr8ESv7pF$zHULZ2toK66nMtpnuh6ZxMYPQKHPw+8NLf9cPlLV/k0=', '2024-04-15 17:19:14.651011', 0, 'gapython3', '', 'ga3@gmail.com', 0, 1, '2024-04-15 17:19:13.793838', ''),
(48, 'pbkdf2_sha256$870000$RcxZzrlCsdwDfrq2vgHAXL$m1XyrylDa+pDlGIy0W6WAJgcMIamHJWxfvIdOW3fknc=', '2024-10-02 14:09:57.609736', 0, 'Trịnh Phương Nam', '', 'cunnconn01@gmail.com', 0, 1, '2024-10-02 14:09:56.948088', '');

CREATE TABLE `django_content_type` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `app_label` VARCHAR(100) NOT NULL,
  `model` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `django_content_type` VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'userauth', 'followerscount'),
(8, 'userauth', 'likepost'),
(9, 'userauth', 'post'),
(10, 'userauth', 'profile'),
(11, 'userauth', 'follow'),
(12, 'userauth', 'followers');

CREATE TABLE `django_migrations` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `app` VARCHAR(255) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `applied` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `django_migrations` VALUES
(26, 'userauth', '0001_initial', '2023-08-15 14:16:40.502620'),
(27, 'userauth', '0002_alter_post_image', '2023-08-15 18:10:44.416348'),
(28, 'userauth', '0003_alter_post_image', '2023-08-15 18:19:36.095058'),
(29, 'userauth', '0004_alter_profile_user', '2023-08-21 19:43:08.290282'),
(30, 'userauth', '0005_remove_profile_id_alter_profile_bio_and_more', '2023-08-21 19:56:02.842060'),
(31, 'userauth', '0006_follow_delete_followerscount', '2023-09-01 18:14:12.445322'),
(32, 'userauth', '0007_followers_delete_follow', '2023-09-01 19:02:00.230067');


CREATE TABLE `django_session` (
  `session_key` VARCHAR(40) NOT NULL PRIMARY KEY,
  `session_data` TEXT NOT NULL,
  `expire_date` DATETIME NOT NULL
);

INSERT INTO `django_session` VALUES
('7kdobglunnizvb6y2tof57rcgx9o0t8x', '.eJxVjMsOgjAQRf-la9PU0ulQl-75hmYeRVADCYWV8d-VhIVu7znnvkymbR3yVsuSRzUX483pd2OSR5l2oHeabrOVeVqXke2u2INW281antfD_TsYqA7fusW-AWBCV6KPLXkhiCqqbUgxIpdeXEpwDgEdMEviAJ48YBCHsUHz_gDeiDdU:1qVCef:-JGAvgogNzKWi2mswkbZNCVRA55QOEowWl9Z_UuCSR4', '2023-08-27 15:05:21.917743'),
('eeimz1ej5t2riufwo211epcw0tufk629', '.eJxVjDsOwjAQBe_iGlmO_6Gkzxms9XqNA8iW4qRC3J1ESgHtm5n3ZgG2tYSt0xLmxK7Ms8vvFgGfVA-QHlDvjWOr6zJHfij8pJ1PLdHrdrp_BwV62WujQRqwgwLKIC2A8gI9uTyKnJJ2Y8zZDkaSQYPkhULYE280gdDOWfb5AvovODg:1qVzmh:Jv3NGHjTC97AQ_mEJMVEM79pI2l2o2S1OI-vxU0LWy8', '2023-08-29 19:32:55.775687'),
('dmv06xlspdj1uz2nw5bxc4gi7vremm9h', '.eJxVjDsOwjAQRO_iGlmxrcQLJT1niPYHDiBbipMq4u44UgroRjPvzWZGXJc0rlXncRJzMT6Y029JyC_N-yJPzI9iueRlnsjuiD3Wam9F9H092L-DhDU1e2DwQuD8nRmQxfkIDjpQ0q7XcHaeovROwEUdWlYCDNRHGJqErObzBRJdOGk:1qYnOO:Tu-OQaz7F-Nh97_CCuQ7C-t137gYQa8ln8s2cWc6bqw', '2023-09-06 12:55:24.487221');

CREATE TABLE userauth_followers (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    follower_id INT NOT NULL, 
    following_id INT NOT NULL,
    FOREIGN KEY (follower_id) REFERENCES auth_user(id),
    FOREIGN KEY (following_id) REFERENCES auth_user(id)
);

INSERT INTO userauth_followers (id, follower_id, following_id) VALUES
(1, 43, 44),
(2, 44, 43),
(3, 43, 45);

CREATE TABLE userauth_likepost (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    user_id INT NOT NULL, 
    post_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES auth_user(id),
    FOREIGN KEY (post_id) REFERENCES userauth_post(id)
);

INSERT INTO userauth_likepost (id, user_id, post_id) VALUES
(1, 43, 1),
(2, 44, 1),
(3, 45, 1);

CREATE TABLE userauth_post (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    user_id INT NOT NULL, 
    content TEXT NOT NULL, 
    image VARCHAR(255) NULL, 
    created_at DATETIME NOT NULL,
    FOREIGN KEY (user_id) REFERENCES auth_user(id)
);

INSERT INTO userauth_post (id, user_id, content, image, created_at) VALUES
(1, 43, 'This is my first post!', NULL, '2024-01-01 12:00:00'),
(2, 44, 'Hello everyone!', NULL, '2024-02-01 12:00:00'),
(3, 45, 'Python programming is fun!', NULL, '2024-03-01 12:00:00');

CREATE TABLE userauth_profile (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    user_id INT NOT NULL, 
    bio TEXT NULL, 
    avatar VARCHAR(255) NULL, 
    FOREIGN KEY (user_id) REFERENCES auth_user(id)
);

INSERT INTO userauth_profile (id, user_id, bio, avatar) VALUES
(1, 43, 'Software Engineer', 'avatar1.jpg'),
(2, 44, 'Data Scientist', 'avatar2.jpg'),
(3, 45, 'Web Developer', 'avatar3.jpg');

CREATE TABLE userauth_followerscount (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    user_id INT NOT NULL, 
    follower_count INT NOT NULL, 
    following_count INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES auth_user(id)
);

INSERT INTO userauth_followerscount (id, user_id, follower_count, following_count) VALUES
(1, 43, 100, 50),
(2, 44, 150, 60),
(3, 45, 200, 80);
