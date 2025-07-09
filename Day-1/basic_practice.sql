-- 1. Create Table
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    join_date DATE
);

-- 2. Insert Records
INSERT INTO employees (name, department, salary, join_date) VALUES
('John Doe', 'IT', 60000, '2022-01-15'),
('Jane Smith', 'HR', 55000, '2023-05-10'),
('Mike Johnson', 'Finance', 70000, '2021-08-20'),
('Sara Williams', 'IT', 65000, '2024-02-12'),
('Alex Brown', 'Marketing', 50000, '2023-11-01');

-- 3. Select Records
SELECT * FROM employees;
SELECT name, salary FROM employees;

-- 4. Filter Records
SELECT * FROM employees WHERE department = 'IT';
SELECT * FROM employees WHERE salary > 60000;

-- 5. Sorting Records
SELECT * FROM employees ORDER BY salary DESC;
SELECT * FROM employees ORDER BY name ASC;

-- 6. Update Records
UPDATE employees
SET salary = 75000
WHERE name = 'Mike Johnson';

-- 7. Delete Records
DELETE FROM employees
WHERE name = 'Alex Brown';

-- 8. Aggregate Functions
SELECT COUNT(*) AS total_employees FROM employees;
SELECT AVG(salary) AS average_salary FROM employees;
SELECT MAX(salary) AS max_salary FROM employees;
SELECT MIN(salary) AS min_salary FROM employees;

-- 9. Group By
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

-- 10. Limit Results
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 2;
