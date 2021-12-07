--1. Создать таблицу employees, наполнить 70 строками 
CREATE TABLE employees (
	id serial PRIMARY KEY,
	employee_name varchar(50) NOT NULL,
	employee_lastName varchar(50) NOT NULL
);

INSERT INTO employees (employee_name, employee_lastName)
 VALUES ('Alina', 'Matsveyuk'),
	('Boris', 'Matsveyuk'),
	('Svetlana', 'Matsveyuk'),
	('Dmitry', 'Matsveyuk'),
	('Nikita', 'Matsveyuk'),
	('Olga', 'Matsveyuk'),
	('Alesya', 'Matsveyuk'),
	('Helen', 'Matsveyuk'),
	('Vadim', 'Matsveyuk'),
	('Artur', 'Matsveyuk'),
	('Alina', 'Kulaga'),
	('Boris', 'Kulaga'),
	('Svetlana', 'Kulaga'),
	('Dmitry', 'Kulaga'),
	('Nikita', 'Kulaga'),
	('Olga', 'Kulaga'),
	('Alesya', 'Kulaga'),
	('Helen', 'Kulaga'),
	('Vadim', 'Kulaga'),
	('Artur', 'Kulaga'),
	('Alina', 'Bagnenko'),
	('Boris', 'Bagnenko'),
	('Svetlana', 'Bagnenko'),
	('Dmitry', 'Bagnenko'),
	('Nikita', 'Bagnenko'),
	('Olga', 'Bagnenko'),
	('Alesya', 'Bagnenko'),
	('Helen', 'Bagnenko'),
	('Vadim', 'Bagnenko'),
	('Artur', 'Bagnenko'),
	('Alina', 'Moga'),
	('Boris', 'Moga'),
	('Svetlana', 'Moga'),
	('Dmitry', 'Moga'),
	('Nikita', 'Moga'),
	('Olga', 'Moga'),
	('Alesya', 'Moga'),
	('Helen', 'Moga'),
	('Vadim', 'Moga'),
	('Artur', 'Moga'),
	('Alina', 'Yanovich'),
	('Boris', 'Yanovich'),
	('Svetlana', 'Yanovich'),
	('Dmitry', 'Yanovich'),
	('Nikita', 'Yanovich'),
	('Olga', 'Yanovich'),
	('Alesya', 'Yanovich'),
	('Helen', 'Yanovich'),
	('Vadim', 'Yanovich'),
	('Artur', 'Yanovich'),
	('Alina', 'Vasilyeva'),
	('Boris', 'Vasilyeva'),
	('Svetlana', 'Vasilyeva'),
	('Dmitry', 'Vasilyeva'),
	('Nikita', 'Vasilyeva'),
	('Olga', 'Vasilyeva'),
	('Alesya', 'Vasilyeva'),
	('Helen', 'Vasilyeva'),
	('Vadim', 'Vasilyeva'),
	('Artur', 'Vasilyeva'),
	('Alina', 'Kulikov'),
	('Boris', 'Kulikov'),
	('Svetlana', 'Kulikov'),
	('Dmitry', 'Kulikov'),
	('Nikita', 'Kulikov'),
	('Olga', 'Kulikov'),
	('Alesya', 'Kulikov'),
	('Helen', 'Kulikov'),
	('Vadim', 'Kulikov'),
	('Artur', 'Kulikov');

SELECT * FROM employees;

-----------------------------------------------
--2. Создать таблицу salary и наполнить строками 
CREATE TABLE salary (
	id serial PRIMARY KEY,
	mounthly_salary int NOT null
);

INSERT INTO salary (mounthly_salary)
VALUES (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);
      
SELECT * FROM salary;

---------------------------------
--3. Создать таблицу employee_salary
CREATE TABLE employee_salary (
	id serial PRIMARY KEY,
	employee_id int NOT NULL UNIQUE,
	salary_id int NOT NULL 
);  

INSERT INTO employee_salary (employee_id, salary_id)
VALUES  (1, 2),
	(2, 4),
	(4, 6),
 	(6, 8),
	(8, 10),
	(10, 12),
	(12, 14),
 	(14, 16),
 	(16, 3),
	(18, 5),
 	(20, 7),
 	(22, 9),
	(24, 11),
	(26, 13),
 	(28, 15),
 	(30, 1),
	(32, 2),
	(34, 4),
 	(36, 6),
 	(38, 8),
 	(40, 10),
 	(42, 12),
 	(44, 14),
 	(46, 16),
 	(48, 3),
	(50, 5),
 	(52, 7),
 	(54, 9),
 	(56, 11),
 	(58, 13),
 	(71, 15),
	(72, 1),
 	(73, 2),
 	(74, 4),
 	(75, 6),
 	(76, 8),
 	(77, 10),
	(78, 12),
 	(79, 14),
 	(80, 16);
 	  
SELECT * FROM employee_salary;

------------------------------------------------------------------
--4. Создать таблицу roles, заполнить, поменять тип столбца role_name
CREATE TABLE roles (
	id serial PRIMARY KEY,
	role_name int NOT NULL UNIQUE 
);

ALTER TABLE roles
ALTER COLUMN role_name TYPE varchar(30);

INSERT INTO roles (role_name)
VALUES  ('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Junior JavaScript developer'),
	('Middle JavaScript developer'),
	('Senior JavaScript developer'),
	('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),
	('Senior Manual QA engineer'),
	('Project Manager'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales manager'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer');
	  
SELECT * FROM roles;	

--------------------------------
--5. Создать таблицу roles_employee, выполнить реляцию  
CREATE TABLE roles_employee (
	id serial PRIMARY KEY,
	employee_id int NOT NULL UNIQUE,
	role_id int NOT NULL,
	FOREIGN KEY (employee_id)
		REFERENCES employees (id),
	FOREIGN KEY (role_id)
		REFERENCES roles (id)
);

INSERT INTO roles_employee (employee_id, role_id)
VALUES  (1, 2),
	(2, 4),
	(4, 6),
	(6, 8),
	(8, 10),
	(10, 12),
	(12, 14),
	(14, 16),
	(16, 18),
	(18, 20),
	(20, 1),
	(22, 3),
	(24, 5),
	(26, 7),
	(28, 9),
	(30, 11),
	(32, 13),
	(34, 15),
	(36, 17),
	(38, 19),
	(40, 2),
	(42, 4),
	(43, 6),
	(44, 8),
	(46, 10),
	(48, 12),
	(50, 14),
	(52, 16),
	(54, 18),
	(56, 20),
	(58, 1),
	(60, 3),
	(63, 5),
	(65, 7),
	(67, 9),
	(69, 11),
	(70, 13),
	(3, 15),
	(5, 17),
	(11, 11);
	  
SELECT * FROM roles_employee;	




