CREATE DATABASE studentroom;
USE studentroom ;


CREATE TABLE users (
  user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username VARCHAR(20) NOT NULL,
  password_hash CHAR(32) NOT NULL,
  password_salt VARCHAR(10) NOT NULL,
  email VARCHAR(150) NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NULL,
  profile_picture VARCHAR(250) NULL,
  member_since DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  description TEXT NULL,
  hide_email TINYINT NOT NULL DEFAULT 1,
  last_visit DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  verified TINYINT NOT NULL DEFAULT 0,
  allow_messages TINYINT NOT NULL DEFAULT 1,
  message_notifications TINYINT NOT NULL DEFAULT 1,
  message_email_notifications TINYINT NOT NULL DEFAULT 0,
  post_replies_notifications TINYINT NOT NULL DEFAULT 1,
  post_replies_email_notifications TINYINT NOT NULL DEFAULT 0,
  replies_comments_notifications TINYINT NOT NULL DEFAULT 1,
  replies_comment_email_notifications TINYINT NOT NULL DEFAULT 0,
  new_followers_notifications TINYINT NOT NULL DEFAULT 1,
  total_messages MEDIUMINT NOT NULL DEFAULT 0,
  total_unread_messages MEDIUMINT NOT NULL DEFAULT 0,
  total_posts_views INT NULL DEFAULT 0,
  total_followers MEDIUMINT NOT NULL DEFAULT 0,
  total_following SMALLINT NOT NULL DEFAULT 0,
  total_discussion_posts SMALLINT NOT NULL DEFAULT 0,
  total_study_posts SMALLINT NOT NULL DEFAULT 0,
  total_discussion_posts_upvotes MEDIUMINT NOT NULL DEFAULT 0,
  total_discussion_posts_downvotes MEDIUMINT NOT NULL DEFAULT 0,
  total_study_posts_upvotes MEDIUMINT NOT NULL DEFAULT 0,
  total_study_posts_downvotes MEDIUMINT NOT NULL DEFAULT 0,
  total_discussion_replies_upvotes MEDIUMINT NOT NULL DEFAULT 0,
  total_discussion_replies_downvotes MEDIUMINT NOT NULL DEFAULT 0,
  total_study_replies_upvotes MEDIUMINT NOT NULL DEFAULT 0,
  total_study_replies_downvotes MEDIUMINT NOT NULL DEFAULT 0,
  night_mode TINYINT NOT NULL DEFAULT 0,
  one_year_trophy TINYINT NOT NULL DEFAULT 0,
  two_year_trophy TINYINT NOT NULL DEFAULT 0,
  three_year_trophy TINYINT NOT NULL DEFAULT 0,
  four_year_trophy TINYINT NOT NULL DEFAULT 0,
  five_year_trophy TINYINT NOT NULL DEFAULT 0,
  six_year_trophy TINYINT NOT NULL DEFAULT 0,
  best_discussion_post_trophy TINYINT NOT NULL DEFAULT 0,
  best_discussion_reply_trophy TINYINT NOT NULL DEFAULT 0,
  best_study_post_trophy TINYINT NOT NULL DEFAULT 0,
  best_study_reply_trophy TINYINT NOT NULL DEFAULT 0,
  best_discussion_writer_trophy TINYINT NOT NULL DEFAULT 0,
  best_student_trophy TINYINT NOT NULL DEFAULT 0,
  interesting_user_trophy TINYINT NOT NULL DEFAULT 0,
  deleted TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (user_id))
ENGINE = InnoDB;

INSERT INTO users VALUES (0,'username','password','salt','email@example.com','Name',
default,default,default,default,default,default,default,default,default,default,default,default,
default,default,default,default,default,default,default,default,default,default,default,default,
default,default,default,default,default,default,default,default,default,default,default,default,
default,default,default,default,default,default,default,default,default
);


CREATE TABLE message (
  mid INT UNSIGNED NOT NULL AUTO_INCREMENT,
  from_user_id INT UNSIGNED NOT NULL,
  to_user_id INT UNSIGNED NOT NULL,
  subject VARCHAR(150) NULL,
  message TEXT NOT NULL,
  datetime DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  deleted_from_receiver TINYINT NOT NULL DEFAULT 0,
  deleted_from_owner TINYINT NOT NULL,
  reply_of INT UNSIGNED NULL,
  reported TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (mid),
  CONSTRAINT fk_message_users
  FOREIGN KEY (from_user_id)
  REFERENCES users (user_id),
  CONSTRAINT fk_message_users1
  FOREIGN KEY (to_user_id)
  REFERENCES users (user_id),
  CONSTRAINT fk_message_message1
  FOREIGN KEY (reply_of)
  REFERENCES message (mid))
ENGINE = InnoDB;



CREATE TABLE topics (
  topic_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  topic_name VARCHAR(120) NOT NULL,
  topic_description TEXT NULL,
  topic_icon VARCHAR(250) NULL,
  discussion_posts_count INT NOT NULL DEFAULT 0,
  study_posts_count INT NOT NULL DEFAULT 0,
  PRIMARY KEY (topic_id))
ENGINE = InnoDB;

INSERT INTO topics VALUES (1,'Γενικά',default,default,default,default);
INSERT INTO topics VALUES (2,'Πανεπιστήμιο Πατρών',default,default,default,default);
INSERT INTO topics VALUES (3,'Πανεπιστήμιο Ιωαννίνων',default,default,default,default);
INSERT INTO topics VALUES (4,'Πανεπιστήμιο Θεσσαλίας',default,default,default,default);
INSERT INTO topics VALUES (5,'Πανεπιστήμιο Μακεδονίας',default,default,default,default);

CREATE TABLE departments (
  department_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  topic_id INT UNSIGNED NOT NULL,
  name VARCHAR(120) NOT NULL,
  PRIMARY KEY (department_id),
  CONSTRAINT fk_departments_topics1
  FOREIGN KEY (topic_id)
  REFERENCES topics (topic_id),
  CHECK (topic_id <> 0)) -- topic general doesn't have departments
ENGINE = InnoDB;

INSERT INTO departments VALUES(1,2,'Τμήμα Πληροφορικής');
INSERT INTO departments VALUES(2,2,'Τμήμα Βιολογίας');
INSERT INTO departments VALUES(3,3,'Τμήμα Πληροφορικής');
INSERT INTO departments VALUES(4,3,'Τμήμα Νομικής');
INSERT INTO departments VALUES(5,4,'Τμήμα Πληροφορικής');
INSERT INTO departments VALUES(6,4,'Τμήμα Πολιτικών Επιστημών');
INSERT INTO departments VALUES(7,5,'Τμήμα Φυσικής');
INSERT INTO departments VALUES(8,5,'Τμήμα Ιατρικής');


CREATE TABLE modules (
  module_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  modules_name VARCHAR(120) NOT NULL,
  PRIMARY KEY (module_id))
ENGINE = InnoDB;

INSERT INTO modules VALUES (0,'ΕΙΣΑΓΩΓΗ ΣΤΗΝ ΠΛΗΡΟΦΟΡΙΚΗ');
INSERT INTO modules VALUES (0,'ΕΙΣΑΓΩΓΗ ΣΤΗΝ ΠΛΗΡΟΦΟΡΙΚΗ'); -- same name but different university module
INSERT INTO modules VALUES (0,'ΔΟΜΕΣ ΔΕΔΟΜΕΝΩΝ');
INSERT INTO modules VALUES (0,'ΜΟΡΦΟΛΟΓΙΑ ΦΥΤΩΝ');
INSERT INTO modules VALUES (0,'ΜΕΘΟΔΟΛΟΓΙΑ ΔΙΚΑΙΟΥ');
INSERT INTO modules VALUES (0,'ΕΙΣΑΓΩΓΉ ΣΤΗΝ ΠΟΛΙΤΙΚH ΕΠΙΣΤHΜΗ');
INSERT INTO modules VALUES (0,'ΕΙΣΑΓΩΓΗ ΣΤΗΝ ΑΣΤΡΟΦΥΣΙΚΗ');
INSERT INTO modules VALUES (0,'ΒΙΟΧΗΜΕΙΑ ΚΑΙ ΒΙΟΦΥΣΙΚΗ');


CREATE TABLE department_has_module (
  departments_department_id INT UNSIGNED NOT NULL,
  modules_module_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (departments_department_id, modules_module_id),
  CONSTRAINT fk_departments_has_modules_departments1
  FOREIGN KEY (departments_department_id)
  REFERENCES departments (department_id),
  CONSTRAINT fk_departments_has_modules_modules1
  FOREIGN KEY (modules_module_id)
  REFERENCES modules (module_id))
ENGINE = InnoDB;

INSERT INTO department_has_module VALUES (1,1);
INSERT INTO department_has_module VALUES (3,2);
INSERT INTO department_has_module VALUES (5,3);
INSERT INTO department_has_module VALUES (2,4);
INSERT INTO department_has_module VALUES (4,5);
INSERT INTO department_has_module VALUES (6,6);
INSERT INTO department_has_module VALUES (7,7);
INSERT INTO department_has_module VALUES (8,8);


CREATE TABLE posts (
  post_id INT UNSIGNED NOT NULL,
  topic_id INT UNSIGNED NOT NULL,
  poster_id INT UNSIGNED NULL,
  module_id INT UNSIGNED NULL,
  week TINYINT NULL,
  title VARCHAR(120) NOT NULL,
  description TEXT NULL,
  total_replies MEDIUMINT NOT NULL DEFAULT 0,
  datetime DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  reported TINYINT NOT NULL DEFAULT 0,
  closed_date DATETIME NULL DEFAULT CURRENT_TIMESTAMP(),
  deleted_date DATETIME NULL DEFAULT CURRENT_TIMESTAMP(),
  is_anonymous TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (post_id),
  CONSTRAINT fk_posts_modules1
  FOREIGN KEY (module_id)
  REFERENCES modules (module_id),
  CONSTRAINT fk_posts_topics1
  FOREIGN KEY (topic_id)
  REFERENCES topics (topic_id),
  CONSTRAINT fk_posts_users1
  FOREIGN KEY (poster_id)
  REFERENCES users (user_id))
ENGINE = InnoDB;



CREATE TABLE attachments (
  attachment_id INT UNSIGNED NOT NULL,
  post_id INT UNSIGNED NOT NULL,
  file_dir VARCHAR(120) NOT NULL,
  file_type VARCHAR(3) NULL,
  PRIMARY KEY (attachment_id),
  CONSTRAINT fk_attachments_posts1
  FOREIGN KEY (post_id)
  REFERENCES posts (post_id))
ENGINE = InnoDB;



CREATE TABLE post_votes (
  post_id INT UNSIGNED NOT NULL,
  poster_id INT UNSIGNED NOT NULL,
  vote ENUM('up', 'down') NULL,
  PRIMARY KEY (post_id, poster_id),
  CONSTRAINT fk_post_votes_posts1
  FOREIGN KEY (post_id)
  REFERENCES posts (post_id),
  CONSTRAINT fk_post_votes_users1
  FOREIGN KEY (poster_id)
  REFERENCES users (user_id))
ENGINE = InnoDB;



CREATE TABLE post_watch (
  user_id INT UNSIGNED NOT NULL,
  post_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (user_id, post_id),
  CONSTRAINT fk_post_watch_posts1
  FOREIGN KEY (post_id)
  REFERENCES posts (post_id),
  CONSTRAINT fk_post_watch_users1
  FOREIGN KEY (user_id)
  REFERENCES users (user_id))
ENGINE = InnoDB;



CREATE TABLE notification_type (
  notification_type_id TINYINT UNSIGNED NOT NULL,
  notification_type_name VARCHAR(120) NOT NULL,
  PRIMARY KEY (notification_type_id))
ENGINE = InnoDB;



CREATE TABLE notifications (
  notification_id INT UNSIGNED NOT NULL,
  notifier_id INT UNSIGNED NOT NULL,
  notification_type_id TINYINT UNSIGNED NOT NULL,
  `read` TINYINT NOT NULL DEFAULT 0,
  deleted TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (notification_id),
  CONSTRAINT fk_notifications_notification_type1
  FOREIGN KEY (notification_type_id)
  REFERENCES notification_type (notification_type_id),
  CONSTRAINT fk_notifications_users1
  FOREIGN KEY (notifier_id)
  REFERENCES users (user_id))
ENGINE = InnoDB;


CREATE TABLE post_replies (
  post_reply_id INT UNSIGNED NOT NULL,
  post_id INT UNSIGNED NOT NULL,
  replier_id INT UNSIGNED NULL,
  reply_text TEXT NOT NULL,
  datetime DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  reported TINYINT NOT NULL DEFAULT 0,
  deleted_date DATETIME NULL DEFAULT CURRENT_TIMESTAMP(),
  PRIMARY KEY (post_reply_id),
  CONSTRAINT fk_post_replies_posts1
  FOREIGN KEY (post_id)
  REFERENCES posts (post_id),
  CONSTRAINT fk_post_replies_users1
  FOREIGN KEY (replier_id)
  REFERENCES users (user_id))
ENGINE = InnoDB;



CREATE TABLE post_reply_comments (
  reply_comment_id INT UNSIGNED NOT NULL,
  reply_id INT UNSIGNED NOT NULL,
  commenter_id INT UNSIGNED NULL,
  comment_text TEXT NOT NULL,
  datetime DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  reported TINYINT NOT NULL DEFAULT 0,
  deleted_date DATETIME NULL DEFAULT CURRENT_TIMESTAMP(),
  PRIMARY KEY (reply_comment_id),
  CONSTRAINT fk_post_replies_users10
  FOREIGN KEY (commenter_id)
  REFERENCES users (user_id),
  CONSTRAINT fk_post_reply_comments_post_replies1
  FOREIGN KEY (reply_id)
  REFERENCES post_replies (post_reply_id))
ENGINE = InnoDB;


CREATE TABLE post_replies_votes (
  reply_id INT UNSIGNED NOT NULL,
  replier_id INT UNSIGNED NOT NULL,
  vote ENUM('up', 'down') NULL,
  PRIMARY KEY (reply_id, replier_id),
  CONSTRAINT fk_post_replies_votes_post_replies1
  FOREIGN KEY (reply_id)
  REFERENCES post_replies (post_reply_id),
  CONSTRAINT fk_post_replies_votes_users1
  FOREIGN KEY (replier_id)
  REFERENCES users (user_id))
ENGINE = InnoDB;



CREATE TABLE post_reply_comments_votes (
  commenter_id INT UNSIGNED NOT NULL,
  comment_id INT UNSIGNED NOT NULL,
  vote ENUM('up', 'down') NULL,
  PRIMARY KEY (commenter_id, comment_id),
  CONSTRAINT fk_post_reply_comments_votes_post_reply_comments1
  FOREIGN KEY (comment_id)
  REFERENCES post_reply_comments (reply_comment_id),
  CONSTRAINT fk_post_reply_comments_votes_users1
  FOREIGN KEY (commenter_id)
  REFERENCES users (user_id))
ENGINE = InnoDB;



CREATE TABLE replies_watch (
  user_id INT UNSIGNED NOT NULL,
  reply_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (user_id, reply_id),
  CONSTRAINT fk_replies_watch_users1
  FOREIGN KEY (user_id)
  REFERENCES users (user_id),
  CONSTRAINT fk_replies_watch_post_replies1
  FOREIGN KEY (reply_id)
  REFERENCES post_replies (post_reply_id))
ENGINE = InnoDB;



CREATE TABLE reports (
  report_id INT UNSIGNED NOT NULL,
  user_id INT UNSIGNED NULL,
  post_id INT UNSIGNED NULL,
  post_reply_id INT UNSIGNED NULL,
  reply_comment_id INT UNSIGNED NULL,
  report_text TINYTEXT NOT NULL,
  report_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  report_closed TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (report_id),
  CONSTRAINT fk_reports_posts1
  FOREIGN KEY (post_id)
  REFERENCES posts (post_id),
  CONSTRAINT fk_reports_post_replies1
  FOREIGN KEY (post_reply_id)
  REFERENCES post_replies (post_reply_id),
  CONSTRAINT fk_reports_post_reply_comments1
  FOREIGN KEY (reply_comment_id)
  REFERENCES post_reply_comments (reply_comment_id),
  CONSTRAINT fk_reports_users1
  FOREIGN KEY (user_id)
  REFERENCES users (user_id))
ENGINE = InnoDB;


CREATE TABLE topics_followers (
  topic_id INT UNSIGNED NOT NULL,
  user_id INT UNSIGNED NOT NULL,
  bookmarked TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (topic_id, user_id),
  CONSTRAINT fk_topics_followers_users1
  FOREIGN KEY (user_id)
  REFERENCES users (user_id),
  CONSTRAINT fk_topics_followers_topics1
  FOREIGN KEY (topic_id)
  REFERENCES topics (topic_id))
ENGINE = InnoDB;


CREATE TABLE user_followers (
  user_id INT UNSIGNED NOT NULL,
  follower_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (user_id, follower_id),
  CONSTRAINT fk_user_followers_users1
  FOREIGN KEY (user_id)
  REFERENCES users (user_id),
  CONSTRAINT fk_user_followers_users2
  FOREIGN KEY (follower_id)
  REFERENCES users (user_id))
ENGINE = InnoDB;



CREATE TABLE user_following (
  user_id INT UNSIGNED NOT NULL,
  following_id INT UNSIGNED NOT NULL,
  notify_me INT NOT NULL DEFAULT 0,
  PRIMARY KEY (user_id, following_id),
  CONSTRAINT fk_user_following_users1
  FOREIGN KEY (user_id)
  REFERENCES users (user_id),
  CONSTRAINT fk_user_following_users2
  FOREIGN KEY (following_id)
  REFERENCES users (user_id))
ENGINE = InnoDB;