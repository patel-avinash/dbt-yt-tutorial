WITH dedup_query AS
(
SELECT
    *,
    ROW_NUMBER() OVER (PARTITION BY id ORDER BY updateDate DESC) as deduplicated_id 
FROM 
{{source('source','items')}}
)
SELECT
    id,name,category,updateDate
FROM
    dedup_query    
WHERE deduplicated_id = 1
