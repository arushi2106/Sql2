select 
    (case when mod(id, 2) = 1 and id = cnt then id 
        when mod(id, 2) = 0 then id-1
        else id+1 end) as id
    , student
from 
    Seat, 
(select count(*) as cnt from Seat) as seat_counts
order by 1