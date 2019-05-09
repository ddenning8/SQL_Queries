-- Table Information
CREATE TABLE "departments" (
  "dept_no" varchar(4),
  "dept_name" varchar(50),
  PRIMARY KEY ("dept_no")
);

CREATE TABLE "dept_emp" (
  "emp_no" int,
  "dept_no" varchar(4),
  "from_date" Date,
  "to_date" Date,
  PRIMARY KEY ("emp_no", "dept_no")
);

CREATE TABLE "salaries" (
  "emp_no" int,
  "salary" int,
  "from_date" Date,
  "to_date" Date,
  PRIMARY KEY ("emp_no", "from_date")
);

CREATE TABLE "titles" (
  "emp_no" int,
  "title" varchar(50),
  "from_date" Date,
  "to_date" Date,
  PRIMARY KEY ("emp_no", "from_date")
);

CREATE TABLE "employees" (
  "emp_no" int,
  "birth_date" Date,
  "first_name" varchar(50),
  "last_name" varchar(50),
  "gender" varchar(1),
  "hire_date" Date,
  PRIMARY KEY ("emp_no")
);

CREATE TABLE "dept_manager" (
  "dept_no" varchar(4),
  "emp_no" int,
  "from_date" Date,
  "to_date" Date,
  PRIMARY KEY ("dept_no", "emp_no")
);
