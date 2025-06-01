select 
    t1.id
    , if(t1.p_id is null, 'Root', 
        if(t1.id not in (select distinct t2.p_id from Tree t2 where t2.p_id is not null), 'Leaf', 'Inner'))
        as 'type'
from 
    Tree t1