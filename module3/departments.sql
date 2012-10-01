CREATE TABLE departments (
	school_code ENUM('L', 'B', 'A', 'F', 'E', 'T', 'I', 'W', 'S', 'U', 'M') NOT NULL,
	dept_id TINYINT UNSIGNED NOT NULL,
	abbreviation VARCHAR(9),
	dept_name VARCHAR(200) NOT NULL,
	PRIMARY KEY (school_code, dept_id)
) engine = INNODB DEFAULT character SET = utf8 COLLATE = utf8_general_ci;

