# Write your MySQL query statement below
#find user_id for those without transactions
#qty of these types of visits


SELECT visits.customer_id, COUNT(visits.visit_id) as count_no_trans
FROM visits
LEFT JOIN transactions ON visits.visit_id = transactions.visit_id
WHERE transactions.transaction_id IS NULL 
GROUP BY customer_id;