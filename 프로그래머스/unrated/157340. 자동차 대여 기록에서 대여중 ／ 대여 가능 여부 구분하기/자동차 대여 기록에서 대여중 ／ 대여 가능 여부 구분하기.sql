-- 코드를 입력하세요
SELECT CAR_ID, case
when sum(if('2022-10-16' between START_DATE and END_DATE, 1, 0)) = 0 then '대여 가능'
else '대여중' end as AVAILABILITY
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by CAR_ID
order by CAR_ID desc;