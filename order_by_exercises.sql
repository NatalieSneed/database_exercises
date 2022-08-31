use employees;

# Modify your first query to order by first name. The first result should be Irena Pelz and the last result should be Vidya Awdeh.

SELECT employees.*
FROM employees
WHERE employees.first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY employees.first_name asc, employees.emp_no;

# Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.

SELECT employees.*
FROM employees
WHERE employees.first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY employees.first_name asc, employees.last_name asc;

# Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT employees.*
FROM employees
WHERE employees.first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY employees.last_name, employees.first_name;

# Update your queries for employees with 'e' in their last name to sort the results by their employee number. Make sure the employee numbers are in the correct order.
SELECT employees.*
FROM employees
WHERE employees.last_name LIKE '%e%'
ORDER BY employees.emp_no;

# Now reverse the sort order for both queries and compare results.
SELECT employees.*
FROM employees
WHERE employees.last_name LIKE '%e%'
ORDER BY employees.emp_no desc;





