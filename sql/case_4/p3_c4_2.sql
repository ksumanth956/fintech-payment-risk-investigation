select m.merchant_id,
m.merchant_name,
count(c.chargeback_id) as total_chargebacks,
sum(c.disputed_amount) as total_disputed_amount,
sum(case when case_status = 'lost' then 1 else 0 end) as lost_chargebacks
from merchants as m 
join chargebacks as c
on m.merchant_id =c.merchant_id
group by m.merchant_id, m.merchant_name
order by count(c.chargeback_id) desc;
