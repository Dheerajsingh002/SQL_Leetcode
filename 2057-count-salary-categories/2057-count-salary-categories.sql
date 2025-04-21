select case 
when income<20000 then 'Low Salary'
when income Between 20000 and 50000 then 'Average Salary'
when income>50000 then 'High Salary'
end as Category,Count(income) as accounts_count  from Accounts
group by Category
union
select 'Low Salary' as category,0 as accounts_count 
where Not Exists(select 1 from Accounts where income<20000)
union
select 'Average Salary' as category,0 as accounts_count 
where Not Exists(select 1 from Accounts where income Between 20000 and 50000)
union
select 'High Salary' as category,0 as accounts_count 
where Not Exists(select 1 from Accounts where income>50000)


