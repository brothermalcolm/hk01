SELECT 
    COUNT(DISTINCT s.userId)
FROM
    (SELECT 
        userId
    FROM
        clickstream
    WHERE
        action = 'FIRST_INSTALL') AS s
        JOIN
    clickstream c ON s.userId = c.userId
WHERE
    DATE(s.time) BETWEEN '2017-04-02' AND '2017-04-08'
        AND NOT action = 'FIRST_INSTALL';