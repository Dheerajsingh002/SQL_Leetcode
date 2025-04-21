SELECT 
    transaction_date,
    SUM(CASE WHEN MOD(amount, 2) != 0 THEN amount ELSE 0 END) AS odd_sum,
    SUM(CASE WHEN MOD(amount, 2) = 0 THEN amount ELSE 0 END) AS even_sum
FROM Transactions
GROUP BY transaction_date
order by transaction_date asc;
