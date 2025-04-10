select e.employee_id,e.name,count(mr.employee_id) as reports_count,ROUND(Avg(mr.age)) as average_age from employees e left join employees mr  on e.employee_id=mr.reports_to 
where mr.age is not null
group by e.employee_id
order by e.employee_id asc