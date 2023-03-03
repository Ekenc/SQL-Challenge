--creating tables in schema
--ID SERIAL PRIMARY KEY: makes each item individual
--6 CSV TABLES
--keys


--DEPARTMENTS.CSV
CREATE TABLE departments (
  dept_no VARCHAR(10),
  dept_name VARCHAR(30) NOT NULL
--PRIMARY KEY (dept_no)
);


--DEPARTMENT EMPLYEES
CREATE TABLE dept_employees (
	emp_no VARCHAR(20) NOT NULL,
	dept_no VARCHAR(10) NOT NULL
--FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
--FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--DEPARTMENT MANAGER
CREATE TABLE dept_managers(
	dept_no VARCHAR (10),
	emp_no VARCHAR(20) NOT NULL
--FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
--FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--EMPLOYEES ----------
CREATE TABLE employees (
	emp_no VARCHAR(20) NOT NULL,
	emp_title_id VARCHAR(20) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL
--PRIMARY KEY (emp_no)
);

--SALAIRES
CREATE TABLE salaries (
	emp_no BIGINT NOT NULL,
	salary BIGINT NOT NULL
--FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

--TITLES 
CREATE TABLE titles (
	title_id VARCHAR(20) NOT NULL,
	title VARCHAR(20) NOT NULL
--FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

