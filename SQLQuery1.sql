use employee

-- Find all employees ordered by salary


select * from employee order by salary Asc

-- Find all employees ordered by sex then name

select * from employee order by sex, first_name,last_name ;

-- Find all employees ordered by salary then sex

select * from employee order by salary , sex Asc ;

-- Find the first 5 employees in the table
--select * from employee Limit 5;

-- Find the first and last names of all employees
select first_name, last_name from employee

-- Find the forename and surnames names of all employees
select first_name as forename, last_name as surname from employee

-- Find out all the different genders
select sex from employee
-- Find all male employees
select * from employee

select * from employee where sex ='M';

-- Find all employees at branch 2
select * from employee where branch_id = 2;

-- Find all employee's id's and names who were born after 1969

--select emp_id, first_name,last_name from employee where birth_date >= 1970-01-01;

-- Find all female employees at branch 2
select * from employee where branch_id = 2 and sex = 'F'
-- Find all employees who are female & born after 1969 or who make over 80000
-- Find all employees who are female & born after 1969
select * from employee where sex = 'F' and birth_date > '1969';
--or who make over 80000
select * from employee where sex = 'F' and salary > 80000;
-- Find all employees born between 1970 and 1975
select * from employee where birth_date between '1970' and '1975';
-- Find all employees named Jim, Michael, Johnny or David
select * from employee where first_name in ('Jim','Michael','Johny','David');

-- Find the number of employees
select count(super_id) from employee
-- Find the average of all employee's salaries
select avg(salary) from employee
-- Find the sum of all employee's salaries
select SUM(salary) from employee;
-- Find out how many males and females there are
select COUNT(sex) as sex from  employee group by sex ;
-- Find the total sales of each salesman
select * from Works_with;
select SUM(total_sales) from Works_with group by client_id;
-- Find any client's who are an LLC
select * from Client where client_name like '%LLC';
-- Find any client's who are an Ex
select * from Client where client_name like '%Ex';
-- Find any branch suppliers who are in the label business
select * from branch_supplier where supplier_name like '%label%';

-- Find any employee born on the 10th day of the month
select * from employee where birth_date like '%10%';
-- Find any clients who are schools
--select * from Client where client_name like '%schools%';
-- Find a list of employee and branch names
select * from employee
select * from Branch

SELECT employee.first_name AS Employee_Branch_Names
FROM employee
UNION
SELECT branch.branch_name a
FROM branch;



