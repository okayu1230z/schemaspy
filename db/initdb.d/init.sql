DROP SCHEMA IF EXISTS sample;
CREATE SCHEMA sample;
USE sample;

DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
   department_no     char(5),
   department_name varchar(255),
   PRIMARY KEY (department_no)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    no int NOT NULL,
    department_no char(5),
    last_name varchar(255),
    first_name varchar(255),
    PRIMARY KEY (no),
    FOREIGN KEY(department_no)
    REFERENCES departments(department_no)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
