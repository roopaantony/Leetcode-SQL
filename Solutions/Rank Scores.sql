--MS SQL Server
--DENSE_RANK() supported in MYSQL 8.0 or lated. Older versions it is not supported
SELECT score, 
DENSE_RANK() OVER (ORDER BY score DESC) as rank
FROM Scores

--MySQL
SELECT score, CAST(rank_score AS SIGNED) as 'rank'
FROM
(
SELECT score, 
@rank := CASE WHEN @prev = score THEN @rank ELSE @rank + 1 END as rank_score,
@prev := score
FROM Scores,
(SELECT @rank:=0, @prev:=NULL) init
ORDER BY score Desc
) AS A;
