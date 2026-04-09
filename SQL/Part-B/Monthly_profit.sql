WITH revenue AS (
    SELECT strftime('%Y-%m', datetime) AS month, SUM(amount) AS revenue
    FROM clinic_sales
    GROUP BY month
),
expense AS (
    SELECT strftime('%Y-%m', datetime) AS month, SUM(amount) AS expense
    FROM expenses
    GROUP BY month
)
SELECT 
    r.month,
    r.revenue,
    IFNULL(e.expense, 0) AS expense,
    (r.revenue - IFNULL(e.expense, 0)) AS profit,
    CASE 
        WHEN (r.revenue - IFNULL(e.expense, 0)) > 0 THEN 'Profitable'
        ELSE 'Not Profitable'
    END AS status
FROM revenue r
LEFT JOIN expense e ON r.month = e.month;