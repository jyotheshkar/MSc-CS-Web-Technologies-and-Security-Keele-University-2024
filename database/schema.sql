-- Friendzone empty development schema, recovered 2026-11-14 from 2024 report DDL.
-- No historical rows, credentials, database names or old counters.
-- Select an EMPTY database before importing. MySQL integration not yet run.
SET NAMES utf8mb4;

CREATE TABLE users (
 firstName varchar(50) NOT NULL,
 lastName varchar(50) NOT NULL,
 email varchar(100) NOT NULL,
 password varchar(255) NOT NULL,
 birthday date NOT NULL,
 gender enum('male','female','other') NOT NULL,
 username varchar(255) NOT NULL,
 profile_pic varchar(255) DEFAULT 'images/default.png',
 user_id int NOT NULL AUTO_INCREMENT,
 PRIMARY KEY (user_id),
 UNIQUE KEY email (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE posts (
 post_id int NOT NULL AUTO_INCREMENT,
 user_id int NOT NULL,
 content text NOT NULL,
 created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
 updated_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 image varchar(255) DEFAULT NULL,
 PRIMARY KEY (post_id),
 KEY user_id (user_id),
 CONSTRAINT posts_user FOREIGN KEY (user_id) REFERENCES users (user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE comments (
 comment_id int NOT NULL AUTO_INCREMENT,
 post_id int DEFAULT NULL,
 user_id int DEFAULT NULL,
 content text,
 created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY (comment_id),
 KEY user_id (user_id),
 KEY post_id (post_id),
 CONSTRAINT comments_user FOREIGN KEY (user_id) REFERENCES users (user_id),
 CONSTRAINT comments_post FOREIGN KEY (post_id) REFERENCES posts (post_id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE likes (
 like_id int NOT NULL AUTO_INCREMENT,
 user_id int DEFAULT NULL,
 post_id int DEFAULT NULL,
 PRIMARY KEY (like_id),
 UNIQUE KEY idx_user_post (user_id, post_id),
 KEY post_id (post_id),
 CONSTRAINT likes_user FOREIGN KEY (user_id) REFERENCES users (user_id),
 CONSTRAINT likes_post FOREIGN KEY (post_id) REFERENCES posts (post_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
