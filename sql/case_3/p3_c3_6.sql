select chargeback_id,
payment_id,
disputed_amount,
reason,
case_status
from chargebacks
order by disputed_amount desc
limit 5;