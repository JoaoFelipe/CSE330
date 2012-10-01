CREATE TABLE students (
	id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email_address VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)
) engine = INNODB DEFAULT character SET = utf8 COLLATE = utf8_general_ci; 
