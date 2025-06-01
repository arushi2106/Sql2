select 
    id
    , coalesce((case when id % 2 = 0 then lag(student) over(order by id)
            when id % 2 != 0 then lead(student) over(order by id) end), student) as student
from 
    Seat