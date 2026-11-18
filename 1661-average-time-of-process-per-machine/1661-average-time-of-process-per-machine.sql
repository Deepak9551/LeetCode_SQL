# Write your MySQL query statement below

SELECT
    a.machine_id,
    ROUND(AVG(ak.timestamp - a.timestamp), 3) AS processing_time
FROM Activity a
JOIN Activity ak
    ON a.machine_id = ak.machine_id
    AND a.process_id = ak.process_id
    AND a.activity_type = 'start'
    AND ak.activity_type = 'end'
GROUP BY a.machine_id;