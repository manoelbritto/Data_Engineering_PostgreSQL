CREATE TABLE Departments (
  dept_no   varchar(30) NOT NULL, 
  dept_name varchar(30), 
  PRIMARY KEY (dept_no));
CREATE TABLE Dept_Emp (
  emp_no    int4 NOT NULL, 
  dept_no   varchar(30) NOT NULL, 
  from_date date, 
  to_date   date, 
  PRIMARY KEY (emp_no, 
  dept_no));
CREATE TABLE Dept_Manager (
  dept_no   varchar(30) NOT NULL, 
  emp_no    int4 NOT NULL, 
  from_date date, 
  to_date   date, 
  PRIMARY KEY (dept_no, 
  emp_no));
CREATE TABLE Employees (
  emp_no     SERIAL NOT NULL, 
  birth_date date, 
  first_name varchar(30), 
  last_name  varchar(30), 
  gender     char(1), 
  hire_date  date, 
  PRIMARY KEY (emp_no));
CREATE TABLE Salaries (
  emp_no    int4 NOT NULL, 
  salary    int4, 
  from_date date, 
  to_date   date, 
  id        SERIAL NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE Titles (
  emp_no    int4 NOT NULL, 
  title     varchar(50), 
  from_date date, 
  to_date   date, 
  id        SERIAL NOT NULL, 
  PRIMARY KEY (id));
ALTER TABLE Dept_Emp ADD CONSTRAINT FKDept_Emp46695 FOREIGN KEY (dept_no) REFERENCES Departments (dept_no);
ALTER TABLE Dept_Emp ADD CONSTRAINT FKDept_Emp766132 FOREIGN KEY (emp_no) REFERENCES Employees (emp_no);
ALTER TABLE Titles ADD CONSTRAINT FKTitles546189 FOREIGN KEY (emp_no) REFERENCES Employees (emp_no);
ALTER TABLE Salaries ADD CONSTRAINT FKSalaries924448 FOREIGN KEY (emp_no) REFERENCES Employees (emp_no);
ALTER TABLE Dept_Manager ADD CONSTRAINT FKDept_Manag379317 FOREIGN KEY (dept_no) REFERENCES Departments (dept_no);
ALTER TABLE Dept_Manager ADD CONSTRAINT FKDept_Manag538080 FOREIGN KEY (emp_no) REFERENCES Employees (emp_no);

