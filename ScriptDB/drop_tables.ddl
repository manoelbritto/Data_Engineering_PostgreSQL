ALTER TABLE Dept_Emp DROP CONSTRAINT FKDept_Emp46695;
ALTER TABLE Dept_Emp DROP CONSTRAINT FKDept_Emp766132;
ALTER TABLE Titles DROP CONSTRAINT FKTitles546189;
ALTER TABLE Salaries DROP CONSTRAINT FKSalaries924448;
ALTER TABLE Dept_Manager DROP CONSTRAINT FKDept_Manag379317;
ALTER TABLE Dept_Manager DROP CONSTRAINT FKDept_Manag538080;
DROP TABLE IF EXISTS Departments CASCADE;
DROP TABLE IF EXISTS Dept_Emp CASCADE;
DROP TABLE IF EXISTS Dept_Manager CASCADE;
DROP TABLE IF EXISTS Employees CASCADE;
DROP TABLE IF EXISTS Salaries CASCADE;
DROP TABLE IF EXISTS Titles CASCADE;

