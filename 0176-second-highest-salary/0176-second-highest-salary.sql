-- select distinct secondHighestSalary from(select 
-- case
-- when salary is null then null
-- else salary end as secondHighestSalary
-- from employee 
-- order by salary  desc limit 2) as temp
-- order by secondHighestSalary limit 1

select (select distinct salary from employee order by salary desc limit 1 offset 1) as SecondHighestSalary
