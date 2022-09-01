select distinct first_name, count(*)
from employees
group by first_name;

# In your script, use DISTINCT to find the unique titles in the titles table.
select distinct title
from titles;

# 2. Find your query for employees whose last names start and end with 'E'.
# Update the query to find just the unique last names that start and end with 'E' using GROUP BY.
select last_name, count(*)
from employees
where employees.first_name like 'E%' and last_name like '%E'
group by last_name;

# 3. Find your query for employees whose last names start and end with 'E'. Update the query to find just the unique last names that start and end with 'E' using GROUP BY.
select last_name, count(*)
from employees
where employees.last_name like '%E%' and last_name like '%E%'
group by last_name;

# 4.Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'.
select first_name, last_name, count(*)
from employees
where first_name like '%E%' and last_name like '%E%'
group by first_name, last_name;

# 5.Find the unique last names with a 'q' but not 'qu'.
select last_name, count(*)
from employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name;

# 6.Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
select last_name, count(*)
from employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name
order by count(*) desc;

# 7.Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names.
select first_name, count(*)
from employees
where first_name like 'Irena' or first_name = 'Vidya' or first_name = 'Maya'
    group by employees.gender
    order by count(*) desc;















