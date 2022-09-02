# 1. Find all the employees with the same hire date as employee 101010 using a sub-query.

SELECT * FROM employees
         WHERE hire_date = (SELECT hire_date
         FROM employees WHERE emp_no = 101010);

#2. find all the titles held by all employees with the first name Aamod
SELECT title FROM titles
            WHERE emp_no IN (SELECT emp_no FROM employees
            WHERE first_name = 'Aamod'
            );

# 3.Find all department managers that are female.
SELECT first_name, last_name FROM employees
WHERE emp_no IN (SELECT emp_no from dept_manager
                               WHERE gender = 'f' and to_date = 9999-01-01);












