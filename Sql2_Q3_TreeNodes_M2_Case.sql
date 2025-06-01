select 
    t1.id
    , case when t1.p_id is null then 'Root'
        when t1.id not in (select distinct t2.p_id from Tree t2 where t2.p_id is not null) then 'Leaf'
        else 'Inner' end as 'type'
from Tree t1