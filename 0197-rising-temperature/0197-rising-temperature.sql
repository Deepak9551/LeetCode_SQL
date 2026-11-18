# Write your MySQL query statement below
-- select w.id from Weather w
-- where w.temperature > 
-- (
--     select ws.temperature as prevtemp from Weather ws
--     where ws.recordDate = DATE_SUB(w.recordDate, INTERVAL 1 DAY)
-- )

-- cross join
select w.id from Weather w
join Weather ws
where w.temperature > ws.temperature
AND datediff(w.recordDate , ws.recordDate)=1


-- select w.id from Weather w
-- where w.temperature >
-- (select ws.temperature from Weather ws 
-- where DATEDIFF(w.recordDate ,ws.recordDate ) = 1)