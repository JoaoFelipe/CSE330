CREATE TABLE grades (
	pk_grade_ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
	student_id MEDIUMINT UNSIGNED NOT NULL,
	grade DECIMAL(5, 2) NOT NULL,
	school_code ENUM('L', 'B', 'A', 'F', 'E', 'T', 'I', 'W', 'S', 'U', 'M') NOT NULL,
	dept_id TINYINT UNSIGNED NOT NULL,
	course_code VARCHAR(5) NOT NULL,
	name VARCHAR(150) NOT NULL,
	PRIMARY KEY (pk_grade_ID),
	FOREIGN KEY (student_id) REFERENCES students (id),
	FOREIGN KEY (school_code, dept_id, course_code) REFERENCES courses (school_code, dept_id, course_code)
) engine = INNODB DEFAULT character SET = utf8 COLLATE = utf8_general_ci;

