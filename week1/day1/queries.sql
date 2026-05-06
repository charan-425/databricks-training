--QUESTION-1:
SELECT *
FROM Employee;

--QUESTION-2:
SELECT name,salary FROM Employee;

--QUESTION-3:
SELECT * FROM Employee WHERE age>30;

--QUESTION-4:
SELECT name FROM Department;

--QUESTION-5:
SELECT name FROM Employee WHERE department_id=1;

--QUESTION-6:
SELECT * FROM Employee WHERE name like 'j%';

--QUESTION-7:
SELECT * FROM Employee WHERE name like '%e';

--QUESTION-8:
SELECT * FROM Employee WHERE name like '%a%';

--QUESTION-9:
SELECT * FROM Employee WHERE LENGTH(name) = 9;

--QUESTION-10:
SELECT * FROM Employee WHERE name like '_o%';

--QUESTION-11:
SELECT * FROM Employee WHERE YEAR(hire_date)=2020;

--QUESTION-12:
SELECT * FROM Employee WHERE MONTH(hire_date)=2020;

--QUESTION-13:
SELECT * FROM Employee WHERE YEAR(hire_date)=1;

--QUESTION-14:
SELECT * FROM Employee WHERE hire_date >= '2021-03-01';

--QUESTION-15:
SELECT SUM(salary) AS total_salary FROM Employee;

--QUESTION-16:
SELECT AVG(salary) AS average_salary FROM Employee;

--QUESTION-17:
SELECT MIN(salary) AS minimum_salary FROM Employee;

--QUESTION-18:
SELECT department_id, COUNT(emp_id) as Employee_Count FROM Employee
GROUP BY department_id;

--QUESTION-19:
SELECT department_id, AVG(salary) FROM
Employee
GROUP BY department_id;

--QUESTION-20:
SELECT department_id,SUM(salary) FROM
Employee
Group BY department_id;

--QUESTION-21:
SELECT department_id,AVG(age) FROM
Employee
Group BY department_id;

--QUESTION-22:
SELECT department_id,SUM(salary) FROM
Employee
Group BY department_id;

--QUESTION-23:
SELECT YEAR(hire_date) AS hire_year, COUNT(*) AS employee_count
FROM Employee
GROUP BY YEAR(hire_date);

--QUESTION-24:
SELECT department_id, MAX(salary) AS highest_salary
FROM Employee
GROUP BY department_id;

--QUESTION-25:
SELECT department_id, AVG(salary) AS average_salary
FROM Employee
GROUP BY department_id
ORDER BY average_salary DESC
LIMIT 1;

--QUESTION-26:
SELECT department_id, COUNT(*) AS employee_count
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2;

--QUESTION-27:
SELECT department_id, AVG(salary) AS average_salary
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 55000;

--QUESTION-28:
SELECT YEAR(hire_date) AS hire_year, COUNT(*) AS employee_count
FROM Employee
GROUP BY YEAR(hire_date)
HAVING COUNT(*) > 1;

--QUESTION-29:
SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id
HAVING SUM(salary) < 100000;

--QUESTION-30:
SELECT department_id, MAX(salary) AS highest_salary
FROM Employee
GROUP BY department_id
HAVING MAX(salary) > 75000;

--QUESTION-31:
SELECT *
FROM Employee
ORDER BY salary ASC;

--QUESTION-32:
SELECT *
FROM Employee
ORDER BY age DESC;

--QUESTION-33:
SELECT *
FROM Employee
ORDER BY hire_date ASC;

--QUESTION-34:
SELECT *
FROM Employee
ORDER BY department_id ASC, salary ASC;

--QUESTION-35:
SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id
ORDER BY total_salary DESC;

--QUESTION-36:
SELECT e.emp_id, d.department_id
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id;

--QUESTION-37:
SELECT p.project_id, d.department_id
FROM Project p
JOIN Department d
ON p.department_id = d.department_id;

--QUESTION-38:
SELECT e.emp_id, p.project_id
FROM Employee e
JOIN Project p
ON e.emp_id = p.project_id;

--QUESTION-39:
SELECT e.emp_id, d.department_id
FROM Employee e
LEFT JOIN Department d
ON e.department_id = d.department_id;

--QUESTION-40:
SELECT d.department_id, e.emp_id
FROM Department d
LEFT JOIN Employee e
ON d.department_id = e.department_id;

--QUESTION-41:
SELECT *
FROM Employee
WHERE department_id IS NULL;

--QUESTION-42:
SELECT e.emp_id, COUNT(p.project_id) AS total_projects
FROM Employee e
JOIN Project p
ON e.department_id = p.department_id
GROUP BY e.emp_id;

--QUESTION-43:
SELECT d.department_id
FROM Department d
LEFT JOIN Employee e
ON d.department_id = e.department_id
WHERE e.emp_id IS NULL;

--QUESTION-44:
SELECT emp_id
FROM Employee
WHERE department_id = (
    SELECT department_id
    FROM Employee
    WHERE emp_id = 'John Doe'
);

--QUESTION-45:
SELECT d.department_id, AVG(e.salary) AS average_salary
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id
GROUP BY d.department_id
ORDER BY average_salary DESC
LIMIT 1;
