CREATE TABLE courses (
	school_code ENUM('L', 'B', 'A', 'F', 'E', 'T', 'I', 'W', 'S', 'U', 'M') NOT NULL,
	dept_id TINYINT UNSIGNED NOT NULL,
	course_code VARCHAR(5) NOT NULL,
	name VARCHAR(150) NOT NULL,
	PRIMARY KEY (school_code, dept_id, course_code),
	FOREIGN KEY (school_code, dept_id) REFERENCES departments (school_code, dept_id)
) engine = INNODB DEFAULT character SET = utf8 COLLATE = utf8_general_ci;

