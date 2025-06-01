with ranked_scores as 
(
    select 
        id 
        , score
        , dense_rank() over(order by score desc) as rnk
    from Scores
)

select 
    score 
    , rnk as 'rank'
from
    ranked_scores
order by 1 desc