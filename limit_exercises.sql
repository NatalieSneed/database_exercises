use employees;
# 1.
SELECT DISTINCT title, to_date FROM titles;

#2. List the first 10 distinct last name sorted in descending order.
SELECT DISTINCT e.last_name
FROM employees e
ORDER BY e.last_name desc
limit 10;


# 3.  Create a query to get the top 5 salaries and display just the employees number from the salaries table. The employee number results should be:
select s.emp_no
from salaries s
order by s.salary desc
limit 5;

# 4.Try to think of your results as batches, sets, or pages. The first five results are your first page. The five after that would be your second page, etc. Update the previous query to find the tenth page of results. The employee number results should be:

select s.*
from salaries s
order by s.salary desc
limit 5 offset 45;
# (desired_page_number * limit_amount - limit_amount) *** Louie's formula example
