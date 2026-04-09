WITH profit AS (
    SELECT 
        c.state,
        cs.cid,
        SUM(cs.amount) - IFNULL(SUM(e.amount), 0) AS profit
    FROM clinics c
    JOIN clinic_sales cs ON c.cid = cs.cid
    LEFT JOIN expenses e ON c.cid = e.cid
    GROUP BY c.state, cs.cid
),
ranked AS (
    SELECT *,
        RANK() OVER (PARTITION BY state ORDER BY profit ASC) AS rnk
    FROM profit
)
SELECT * FROM ranked WHERE rnk = 2;