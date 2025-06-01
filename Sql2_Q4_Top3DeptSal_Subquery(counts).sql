with req_names as (
select 
    e1.*
from Employee e1
where 3 > (select count(distinct e2.salary) from Employee e2 where e1.departmentId = e2.departmentId and 
e2.salary > e1.salary))
select 
    d.name as Department
    , r.name as Employee
    , r.salary as Salary
from 
    Department d join req_names r on d.id = r.departmentId
order by 1, 3 desc