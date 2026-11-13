# Write your MySQL query statement below

select ROUND(SUM(tiv_2016),2) as tiv_2016
from insurance
where
tiv_2015 in (
    select tiv_2015 from insurance group by tiv_2015
     having count(*) > 1)
AND
(lon,lat) in (
    select lon,lat from insurance group by lon,lat 
    having count(*) = 1)
