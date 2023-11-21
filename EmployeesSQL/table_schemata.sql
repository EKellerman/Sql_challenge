DROP TABLE "Departments"

CREATE TABLE Departments (
	dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(30) NOT NULL 	
);

CREATE TABLE Dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL
);

CREATE TABLE TITLES (
	title_id VARCHAR(10) NOT NULL,
	title VARCHAR(30) NOT NULL
);

CREATE TABLE Employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title VARCHAR(20),
	birth_date VARCHAR(10),
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex VARCHAR(10),
	hire_date VARCHAR
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL
);

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	SALARY INT NOT NULL
);

	