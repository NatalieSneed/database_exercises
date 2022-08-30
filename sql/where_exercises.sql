use employees;

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya') OR first_name = ('Maya');

# Find all employees whose last name starts with 'E'
SELECT *
FROM employees
WHERE last_name LIKE 'E%';

# Find all employees with a 'q' in their last name
SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT e.*
from employees as e
where e.first_name = 'Irena'
OR e.first_name = 'Vidya'
OR e.first_name = 'Maya';

SELECT e.*
from employees as e
where (e.first_name = 'Irena'
   OR e.first_name = 'Vidya'
   OR e.first_name = 'Maya')
# Add a condition to the previous query to find everybody with those names who is also male
#   add paranthesis around the first_name searches above
  AND e.gender LIKE 'M';
# Find all employees whose last name starts or ends with 'E'
select e.*
from employees e
where e.last_name like 'e%'
OR e.last_name like '%e';

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E'
select e.*
from employees e
where e.last_name like 'e%'
AND e.last_name like '%e';

# Find all employees with a 'q' in their last name but not 'qu'
select e.*
from employees e
where e.last_name like '%q%'
AND e.last_name not like '%qu%';










