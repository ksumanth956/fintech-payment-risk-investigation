select merchant_id,
count(chargeback_id) as total_chargebacks,
sum(case when case_status ='lost' then 1 else 0 end) as lost_chargebacks,
SUM(CASE WHEN case_status = 'lost' THEN 1 ELSE 0 END)
    * 100.0 / COUNT(chargeback_id) AS lost_case_rate
from chargebacks 
group by merchant_id
order by count(chargeback_id) desc