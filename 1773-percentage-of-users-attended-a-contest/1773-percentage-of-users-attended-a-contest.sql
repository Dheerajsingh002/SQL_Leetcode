select r.contest_id, Round(count(Distinct r.user_id)*100.0/(select count(*) from Users u),2) as Percentage
from Register r 
group by r.contest_id
order by 
percentage desc,
r.contest_id asc