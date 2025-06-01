with ranked_salaries as (
select 
    name
    , departmentId
    , salary 
    , dense_rank() over(partition by departmentId order by salary desc) as rnk
from 
    Employee
)
select 
    d.name as Department
    , r.name as Employee
    , r.salary as Salary
from 
    Department d join ranked_salaries r on d.id = r.departmentId
where r.rnk <= 3
order by 1, 3 desc