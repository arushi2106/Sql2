select 
    s.score
    , count(distinct T.score) as 'rank'
from 
    Scores s join Scores T on T.score >= s.score
group by s.id
order by 1 desc

-- join method