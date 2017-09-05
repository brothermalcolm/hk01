SELECT 
    a.id, a.title, COUNT(*) AS likes_received
FROM
    clickstream c
        JOIN
    articles a ON c.objectId = a.id
WHERE
    action = 'LIKE_ARTICLE'
        AND DATE(time) = '2017-04-01'
GROUP BY a.id
ORDER BY COUNT(*) DESC
LIMIT 10;

