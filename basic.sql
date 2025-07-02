
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    join_date DATE
);

INSERT INTO employees (name, department, salary, join_date) VALUES
('John Doe', 'IT', 60000, '2022-01-15'),
('Jane Smith', 'HR', 55000, '2023-05-10'),
('Mike Johnson', 'Finance', 70000, '2021-08-20'),
('Sara Williams', 'IT', 65000, '2024-02-12'),
('Alex Brown', 'Marketing', 50000, '2023-11-01');


SELECT * FROM employees;
SELECT name, salary FROM employees;


SELECT * FROM employees WHERE department = 'IT';
SELECT * FROM employees WHERE salary > 60000;


SELECT * FROM employees ORDER BY salary DESC;
SELECT * FROM employees ORDER BY name ASC;


UPDATE employees
SET salary = 75000
WHERE name = 'Mike Johnson';


DELETE FROM employees
WHERE name = 'Alex Brown';


SELECT COUNT(*) AS total_employees FROM employees;
SELECT AVG(salary) AS average_salary FROM employees;
SELECT MAX(salary) AS max_salary FROM employees;
SELECT MIN(salary) AS min_salary FROM employees;


SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;


SELECT * FROM employees
ORDER BY salary DESC
LIMIT 2;
