WITH item_orders AS (
    SELECT 
        strftime('%Y-%m', bill_date) AS month,
        item_id,
        SUM(item_quantity) AS total_qty
    FROM booking_commercials
    WHERE strftime('%Y', bill_date) = '2021'
    GROUP BY month, item_id
),
ranked AS (
    SELECT *,
        RANK() OVER (PARTITION BY month ORDER BY total_qty DESC) AS rnk_desc,
        RANK() OVER (PARTITION BY month ORDER BY total_qty ASC) AS rnk_asc
    FROM item_orders
)
SELECT * 
FROM ranked
WHERE rnk_desc = 1 OR rnk_asc = 1;