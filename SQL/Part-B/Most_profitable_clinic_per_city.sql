WITH profit AS (
    SELECT 
        c.city,
        cs.cid,
        SUM(cs.amount) - IFNULL(SUM(e.amount), 0) AS profit
    FROM clinics c
    JOIN clinic_sales cs ON c.cid = cs.cid
    LEFT JOIN expenses e ON c.cid = e.cid
    GROUP BY c.city, cs.cid
),
ranked AS (
    SELECT *,
        RANK() OVER (PARTITION BY city ORDER BY profit DESC) AS rnk
    FROM profit
)
SELECT * FROM ranked WHERE rnk = 1;