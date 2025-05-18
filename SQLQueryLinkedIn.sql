USE Linkedin;

WITH cte AS (SELECT uf.user_id, pl.post_id, COUNT(*) AS no_of_likes FROM user_followers uf
INNER JOIN post_likes pl ON uf.follows_user_id = pl.user_id
GROUP BY uf.user_id, pl.post_id),

ranked_posts AS (SELECT cte.user_id,cte.post_id, cte.no_of_likes,
ROW_NUMBER() OVER (PARTITION BY cte.user_id ORDER BY cte.no_of_likes DESC, cte.post_id ASC) AS rn
FROM cte
LEFT JOIN post_likes pl2 ON cte.user_id = pl2.user_id AND cte.post_id = pl2.post_id
WHERE pl2.post_id IS NULL)

SELECT user_id, post_id, no_of_likes
FROM ranked_posts
WHERE rn = 1
ORDER BY user_id;
