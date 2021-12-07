--1 Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами
SELECT e.employee_name, e.employee_lastname, s.mounthly_salary 
FROM employee_salary es 
JOIN employees e ON e.id = es.employee_id
JOIN salary s ON es.salary_id = s.id;

--2 Вывести всех работников у которых ЗП меньше 2000
SELECT e.employee_name, e.employee_lastname, s.mounthly_salary 
FROM employee_salary es 
JOIN employees e ON e.id = es.employee_id
JOIN salary s ON es.salary_id = s.id 
WHERE mounthly_salary < 2000;

--3 Вывести все зарплатные позиции, но работник по ним не назначен
SELECT es.employee_id, s.mounthly_salary, e.employee_name 
FROM employees e
RIGHT JOIN employee_salary es ON es.employee_id = e.id
JOIN salary s ON es.salary_id = s.id
WHERE employee_name IS NULL;

--4 Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен
SELECT es.employee_id, s.mounthly_salary, e.employee_name 
FROM employee_salary es
JOIN salary s ON es.salary_id = s.id
LEFT JOIN employees e ON es.employee_id = e.id
WHERE employee_name IS NULL AND mounthly_salary < 2000;

--5 Найти всех работников кому не начислена ЗП
SELECT e.employee_name, e.employee_lastname, es.salary_id 
FROM employees e 
LEFT JOIN employee_salary es ON e.id = es.employee_id
WHERE salary_id IS NULL;

--6 Вывести всех работников с названиями их должности
SELECT e.employee_name, e.employee_lastname, r.role_name 
FROM roles_employee re
JOIN employees e ON re.employee_id = e.id
JOIN roles r ON re.role_id = r.id;

--7 Вывести имена и должность только Java разработчиков
SELECT e.employee_name, e.employee_lastname, e.id, r.role_name 
FROM roles_employee re 
JOIN employees e ON re.employee_id = e.id
JOIN roles r ON re.role_id = r.id
WHERE role_name LIKE '%Java developer';

--8 Вывести имена и должность только Python разработчиков
SELECT e.employee_name, e.employee_lastname, e.id, r.role_name 
FROM roles_employee re 
JOIN employees e ON re.employee_id = e.id
JOIN roles r ON re.role_id = r.id
WHERE role_name LIKE '%Python%'; 

--9 Вывести имена и должность всех QA инженеров
SELECT e.employee_name, e.employee_lastname, e.id, r.role_name 
FROM roles_employee re 
JOIN employees e ON re.employee_id = e.id
JOIN roles r ON re.role_id = r.id
WHERE role_name LIKE '%QA%'; 

--10 Вывести имена и должность ручных QA инженеров
SELECT e.employee_name, e.employee_lastname, e.id, r.role_name 
FROM roles_employee re 
JOIN employees e ON re.employee_id = e.id
JOIN roles r ON re.role_id = r.id
WHERE role_name LIKE '%Manual QA%'; 

--11 Вывести имена и должность автоматизаторов QA
SELECT e.employee_name, e.employee_lastname, e.id, r.role_name 
FROM roles_employee re 
JOIN employees e ON re.employee_id = e.id
JOIN roles r ON re.role_id = r.id
WHERE role_name LIKE '%Automation QA%'; 

--12 Вывести имена и зарплаты Junior специалистов
SELECT e.employee_name, e.employee_lastname, s.mounthly_salary, r.role_name
FROM employees e 
JOIN employee_salary es ON es.employee_id = e.id
JOIN salary s ON s.id = es.salary_id
JOIN roles_employee re ON re.employee_id = e.id
JOIN roles r ON r.id = re.role_id
WHERE role_name LIKE '%Junior%';

--13 Вывести имена и зарплаты Middle специалистов
SELECT e.employee_name, e.employee_lastname, s.mounthly_salary, r.role_name
FROM employees e 
JOIN employee_salary es ON es.employee_id = e.id
JOIN salary s ON s.id = es.salary_id
JOIN roles_employee re ON re.employee_id = e.id
JOIN roles r ON r.id = re.role_id
WHERE role_name LIKE '%Middle%';

--14 Вывести имена и зарплаты Senior специалистов
SELECT e.employee_name, e.employee_lastname, s.mounthly_salary, r.role_name 
FROM employees e
JOIN employee_salary es ON e.id = es.employee_id
JOIN salary s ON s.id = es.salary_id
JOIN roles_employee re ON re.employee_id = e.id
JOIN roles r ON r.id = re.role_id
WHERE role_name LIKE '%Senior%';

--15 Вывести зарплаты Java разработчиков
SELECT r.role_name, s.mounthly_salary 
FROM employees e
LEFT JOIN roles_employee re ON e.id = re.employee_id
JOIN roles r ON re.role_id=r.id
JOIN employee_salary es ON e.id=es.employee_id
JOIN salary s ON s.id = es.salary_id
WHERE role_name LIKE '%Java developer';

--16 Вывести зарплаты Python разработчиков
SELECT r.role_name, s.mounthly_salary 
FROM employees e
LEFT JOIN roles_employee re ON e.id = re.employee_id
JOIN roles r ON re.role_id=r.id
JOIN employee_salary es ON e.id=es.employee_id
JOIN salary s ON s.id = es.salary_id
WHERE role_name LIKE '%Python developer';

--17 Вывести имена и зарплаты Junior Python разработчиков
SELECT e.employee_name, e.employee_lastname, s.mounthly_salary, r.role_name
FROM employees e 
JOIN employee_salary es ON es.employee_id = e.id
JOIN salary s ON s.id = es.salary_id
JOIN roles_employee re ON re.employee_id = e.id
JOIN roles r ON r.id = re.role_id
WHERE role_name = 'Junior Python developer';

--18 Вывести имена и зарплаты Middle JS разработчиков
SELECT e.employee_name, e.employee_lastname, s.mounthly_salary, r.role_name
FROM employees e 
JOIN employee_salary es ON es.employee_id = e.id
JOIN salary s ON s.id = es.salary_id
JOIN roles_employee re ON re.employee_id = e.id
JOIN roles r ON r.id = re.role_id
WHERE role_name = 'Middle JavaScript developer';

--19 Вывести имена и зарплаты Senior Java разработчиков
SELECT e.employee_name, e.employee_lastname, s.mounthly_salary, r.role_name
FROM employees e 
JOIN employee_salary es ON es.employee_id = e.id
JOIN salary s ON s.id = es.salary_id
JOIN roles_employee re ON re.employee_id = e.id
JOIN roles r ON r.id = re.role_id
WHERE role_name = 'Senior Java developer';

--20 Вывести зарплаты Junior QA инженеров
SELECT s.mounthly_salary, r.role_name
FROM employees e 
LEFT JOIN employee_salary es ON es.employee_id = e.id
JOIN salary s ON s.id = es.salary_id
JOIN roles_employee re ON re.employee_id = e.id
JOIN roles r ON r.id = re.role_id
WHERE role_name LIKE 'Junior%QA%';

--21 Вывести среднюю зарплату всех Junior специалистов
SELECT avg(s.mounthly_salary) AS avg_salary_junior
FROM employees e 
LEFT JOIN employee_salary es ON es.employee_id = e.id
JOIN salary s ON s.id = es.salary_id
JOIN roles_employee re ON re.employee_id = e.id
JOIN roles r ON r.id = re.role_id
WHERE role_name LIKE 'Junior%QA%';

--22 Вывести сумму зарплат JS разработчиков
SELECT sum(s.mounthly_salary) AS sum_salary_js
FROM employees e 
LEFT JOIN employee_salary es ON es.employee_id = e.id
JOIN salary s ON s.id = es.salary_id
JOIN roles_employee re ON re.employee_id = e.id
JOIN roles r ON r.id = re.role_id
WHERE role_name LIKE '%JavaScript%';

--23 Вывести минимальную ЗП QA инженеров
SELECT min(s.mounthly_salary) AS min_salary_qa
FROM employees e 
LEFT JOIN employee_salary es ON es.employee_id = e.id
JOIN salary s ON s.id = es.salary_id
JOIN roles_employee re ON re.employee_id = e.id
JOIN roles r ON r.id = re.role_id
WHERE role_name LIKE '%QA%';

--24 Вывести максимальную ЗП QA инженеров
SELECT max(s.mounthly_salary) AS max_salary_qa
FROM employees e 
LEFT JOIN employee_salary es ON es.employee_id = e.id
JOIN salary s ON s.id = es.salary_id
JOIN roles_employee re ON re.employee_id = e.id
JOIN roles r ON r.id = re.role_id
WHERE role_name LIKE '%QA%';

--25 Вывести количество QA инженеров
SELECT count(r.role_name)
FROM roles_employee re
JOIN roles r ON r.id = re.role_id
WHERE role_name LIKE '%QA%';

--26 Вывести количество Middle специалистов.
SELECT count(r.role_name)
FROM roles_employee re
JOIN roles r ON r.id = re.role_id
WHERE role_name LIKE '%Middle%';

--27 Вывести количество разработчиков
SELECT count(r.role_name)
FROM roles_employee re
JOIN roles r ON r.id = re.role_id
JOIN employees e ON e.id = re.employee_id
WHERE role_name LIKE '%developer%';

--28 Вывести фонд (сумму) зарплаты разработчиков
SELECT sum(mounthly_salary) AS sum_salary_developer
FROM employee_salary es
RIGHT JOIN roles_employee re ON re.employee_id = es.employee_id
JOIN salary s ON s.id = es.salary_id
JOIN roles r ON r.id = re.role_id
WHERE role_name LIKE '%developer%';

--29 Вывести имена, должности и ЗП всех специалистов по возрастанию
SELECT e.employee_name, e.employee_lastname, r.role_name, s.mounthly_salary
FROM employees e
JOIN roles_employee re ON re.employee_id = e.id
JOIN roles r ON re.role_id = r.id
JOIN employee_salary es ON es.employee_id = e.id
JOIN salary s ON s.id = es.salary_id
ORDER BY mounthly_salary;

--30 Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
SELECT e.employee_name, e.employee_lastname, r.role_name, s.mounthly_salary
FROM employees e
JOIN roles_employee re ON re.employee_id = e.id
JOIN roles r ON re.role_id = r.id
JOIN employee_salary es ON es.employee_id = e.id
JOIN salary s ON s.id = es.salary_id
WHERE mounthly_salary >= 1700 AND mounthly_salary <= 2300
ORDER BY mounthly_salary;

--31 Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300 
SELECT e.employee_name, e.employee_lastname, r.role_name, s.mounthly_salary
FROM employees e
JOIN roles_employee re ON re.employee_id = e.id
JOIN roles r ON re.role_id = r.id
JOIN employee_salary es ON es.employee_id = e.id
JOIN salary s ON s.id = es.salary_id
WHERE mounthly_salary < 2300
ORDER BY mounthly_salary;

--32 Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
SELECT e.employee_name, e.employee_lastname, r.role_name, s.mounthly_salary
FROM employees e
JOIN roles_employee re ON re.employee_id = e.id
JOIN roles r ON re.role_id = r.id
JOIN employee_salary es ON es.employee_id = e.id
JOIN salary s ON s.id = es.salary_id
WHERE mounthly_salary IN (1100, 1500, 2000)
ORDER BY mounthly_salary;


