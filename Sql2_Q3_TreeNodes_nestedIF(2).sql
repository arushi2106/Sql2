select 
    id
    , if (p_id is null, 'Root', 
        if (id in (select distinct p_id from Tree), 'Inner', 'Leaf'))
        as 'type'
from 
    Tree