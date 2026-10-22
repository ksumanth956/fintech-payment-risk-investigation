\# Fintech Payment Risk \& Fraud Investigation



\## Project Overview



A SQL-based investigation project using a synthetic fintech payment dataset to examine authorization patterns, payment declines, chargeback exposure, and merchant-level risk indicators.



Four investigation cases were completed using PostgreSQL. Each case documents observed evidence, an assessment, a disposition, and recommended follow-up actions. Suspicious indicators are treated as investigation leads, not automatic proof of fraud.



\*\*Project type:\*\* Synthetic payment-risk investigation  

\*\*Primary tool:\*\* SQL  

\*\*Database:\*\* PostgreSQL  

\*\*Dataset:\*\* 3,000 payment attempts across eight merchants  

\*\*Cases completed:\*\* 4



\## Dataset



The database contains five related tables:



| Table | Records |

|---|---:|

| Merchants | 8 |

| Customers | 300 |

| Payment instruments | 400 |

| Payment attempts | 3,000 |

| Chargebacks | 95 |



The analysis uses SQL filtering, aggregation, joins, time-window analysis, and grouped comparisons.



\## Investigation Cases



\### Case 1 â€” Potential Card Testing



Investigated a burst of low-value authorization attempts involving payment instrument `PI0001`.



\- 45 attempts occurred between approximately 10:00 and 10:31 on August 12, 2026.

\- 37 attempts were declined and 8 were approved.

\- Attempt amounts ranged from $0.50 to $4.95.

\- The activity shared IP address `203.0.113.77` and device identifier `DEVTEST01`.

\- Related activity involved a second customer and payment instrument using the same technical identifiers.



\*\*Disposition:\*\* Escalate for manual review. Validate instrument ownership, account history, and related activity before taking action. The observed pattern is consistent with potential card testing but does not confirm fraud.



\### Case 2 â€” Payment Declines and Velocity



Analyzed payment outcomes, decline reasons, and payment instruments with concentrated decline activity.



| Payment status | Attempts |

|---|---:|

| Approved | 2,438 |

| Declined | 404 |

| Pending | 99 |

| Reversed | 59 |

| \*\*Total\*\* | \*\*3,000\*\* |



The most frequent recorded decline reasons were timeout (110), do not honor (105), suspected fraud (100), and insufficient funds (89).



Payment instrument `PI0001` had 38 declined attempts in the instrument-level analysis, followed by `PI0002` with 11.



\*\*Disposition:\*\* Review repeated attempts, timing, outcomes, and instrument history. Distinguish potential card testing from technical retries and legitimate payment failures.



\### Case 3 â€” Chargeback Exposure



Analyzed 95 chargebacks totaling \*\*$8,016.73\*\*.



\- Average disputed amount: approximately $84.39.

\- Minimum disputed amount: $4.09.

\- Maximum disputed amount: $450.55.

\- All 95 chargebacks matched a payment attempt by payment ID.

\- No discrepancy was found between the disputed amount and original payment amount for the matched records.



The analysis identified repeat-dispute customers and grouped chargebacks by status and reason.



\*\*Disposition:\*\* Prioritize repeat-dispute customers, review larger exposures, and monitor cases that remain under review or have not reached a final outcome.



\### Case 4 â€” Merchant Risk Comparison



Compared eight merchants using payment-attempt volume, approval rate, chargeback count, disputed amount, and lost-case rate.



Key findings:



\- \*\*MER006 â€” FlashVoucher:\*\* 426 attempts, 74.88% approval rate, 18 chargebacks, and $1,987.50 in disputed amounts.

\- \*\*MER008 â€” Urban Market:\*\* 14 chargebacks and a 42.86% lost-case rate.

\- \*\*MER007 â€” StreamBox Media:\*\* 12 chargebacks and a 41.67% lost-case rate.



MER006 had the highest attempt volume, the largest total disputed amount, and the lowest approval rate among the merchants analyzed. MER008 and MER007 also warranted review based on their lost-case rates, which were based on relatively small numbers of chargebacks.



\*\*Disposition:\*\* Prioritize MER006 for further investigation and review MER008 and MER007. Validate transaction patterns, customer activity, and related identifiers before recommending merchant-level action.



\## Cross-Case Recommendations



1\. Investigate transaction frequency, amount, timing, payment status, device, IP, and customer history together.

2\. Validate whether shared IP addresses or devices indicate suspicious coordination or legitimate shared environments.

3\. Separate rapid, low-value authorization bursts from ordinary retries and technical failures.

4\. Prioritize repeat chargebacks and higher-value disputed cases while tracking final outcomes.

5\. Compare merchant risk indicators with transaction volume and sample size.

6\. Document observed facts, hypotheses, limitations, and the reasons for each disposition.



\## Tools and SQL Skills



\- PostgreSQL and pgAdmin 4

\- Filtering and conditional logic

\- Aggregation and grouped comparisons

\- Joins across related payment tables

\- Time-window analysis

\- Payment decline and authorization analysis

\- Chargeback reconciliation and exposure analysis

\- Evidence-based investigation documentation



\## Limitations



\- All data is synthetic and does not represent real company or Stripe activity.

\- The available fields do not prove user intent or establish fraud independently.

\- Payment timestamps were insufficient for precise matching with IP activity in the relevant investigation.

\- Shared IP addresses and device identifiers may have legitimate explanations.

\- Merchant lost-case rates are based on small counts and should not be interpreted as stable long-term risk rates.

\- Findings are exploratory and require additional validation before production decisions.



\## Repository Structure



\- `data/` â€” Synthetic source datasets.

\- `sql/case\_1/` through `sql/case\_4/` â€” SQL investigation queries.

\- `results/case\_1/` through `results/case\_4/` â€” Saved query results.

\- `reports/` â€” Case reports and the final portfolio report.



## Interview Summary



I completed a synthetic fintech payment-risk project using SQL. I investigated potential card testing, payment decline and retry patterns, chargeback exposure, and merchant-level risk. I used filtering, aggregation, joins, time-window analysis, and grouped comparisons to identify suspicious patterns and quantify exposure. I documented evidence, limitations, and recommended next steps, treating risk indicators as investigation leads rather than automatically classifying them as confirmed fraud.




