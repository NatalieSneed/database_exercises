# part 1
CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
                                             ('bob', 'bob@example.com', 1),
                                             ('joe', 'joe@example.com', 2),
                                             ('sally', 'sally@example.com', 3),
                                             ('adam', 'adam@example.com', 3),
                                             ('jane', 'jane@example.com', null),
                                             ('mike', 'mike@example.com', null);

# INNER JOIN
SELECT users.name, roles.name
FROM users
INNER JOIN roles ON users.role_id = roles.id;

# LEFT JOIN
SELECT users.name, roles.name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

# RIGHT JOIN
SELECT users.name, roles.name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

# PART 2: Employees Database
# write a query that shows each dept. along w/the name of the current manager
select departments.dept_name, employees.first_name, employees.last_name
from departments
inner join employees on departments.manager_id = employees.employee_id;
