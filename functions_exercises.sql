use employees;

# 1. Update your queries for employees whose names start and end with 'E'.
# Use concat() to combine their first and last name together as a single column in your results.

select concat_ws(' ', e.first_name, e.last_name) as full_name from employees e
where e.first_name like 'E%' or e.last_name like 'E%';
# where e.last_name like 'e%'
# and e.first_name like 'e%';

# 3.Find all employees born on Christmas
SELECT e.*
FROM employees e
where month(e.birth_date) = 12
and day(e.birth_date) = 25;

# 4.Find all employees hired in the 90s and born on Christmas
SELECT e.*
FROM employees e
where month(e.birth_date) = 12
  and day(e.birth_date) = 25
    and year(e.hire_date) between 1990 and 1999;

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last.
SELECT e.*
FROM employees e
where month(e.birth_date) = 12
  and day(e.birth_date) = 25
  and year(e.hire_date) between 1990 and 1999
    ORDER BY hire_date DESC limit 1;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).
SELECT e.*, datediff(now(), hire_date) as working_days
FROM employees e
where month(e.birth_date) = 12
  and day(e.birth_date) = 25
  and year(e.hire_date) between 1990 and 1999;






