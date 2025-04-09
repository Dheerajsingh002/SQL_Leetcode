select name from employee where Id in
(select Managerid from Employee 
group by managerId
having count(Id)>=5)
