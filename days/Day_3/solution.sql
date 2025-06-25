
SELECT 
	loans.loan_id,
    loans.loan_amount,
    loans.due_date,
    CASE
    	WHEN SUM(payments.amount_paid)>=loan_amount THEN '1' 
        ELSE '0' 
    END AS fully_paid_flag, 
    CASE
    	WHEN SUM(payments.amount_paid)>=loan_amount AND MAX(payment_date) <= due_date THEN '1'
        ELSE '0'
    END AS on_time_flag
FROM loans
LEFT JOIN payments ON loans.loan_id=payments.loan_id 
GROUP BY loans.loan_id
ORDER BY loan_id;
