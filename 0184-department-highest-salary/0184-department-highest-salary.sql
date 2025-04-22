select d.name as Department,e.name as Employee,e.salary from Employee e left  join Department d on e.departmentId=d.id 
where e.salary=(select max(e.salary) from Employee e where e.departmentId=d.id)
