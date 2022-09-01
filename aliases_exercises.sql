use employees;

#3. Return 10 employees in a result set named 'full_name' in the format of 'last name, first name' for each employee.
select CONCAT(last_name, ', ', first_name) AS full_name
from employees e
limit 10;


#4. Add the date of birth for each employee as 'DOB' to the query.
SELECT CONCAT(e.last_name, ', ', e.first_name) AS full_name, DATE_FORMAT(birth_date, '%M %D, %Y') AS DOB
FROM employees e
LIMIT 10;

# 5.Update the query to format full name to include the employee number so it is formatted as 'employee number - last name, first name'.
SELECT CONCAT(e.emp_no, '- ', e.last_name, ', ', e.first_name) AS full_name, e.birth_date AS DOB
FROM employees e
LIMIT 10;






