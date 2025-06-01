select 
    s1.id
    , coalesce(s2.student, s1.student) as student
from 
    Seat s1 left join Seat s2 
on  (s1.id + 1) ^ 1 - 1 = s2.id
order by 1