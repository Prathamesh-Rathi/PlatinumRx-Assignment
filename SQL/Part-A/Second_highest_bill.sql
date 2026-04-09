WITH bill_data AS (
    SELECT 
        b.user_id,
        bc.booking_id,
        strftime('%Y-%m', bc.bill_date) AS month,
        SUM(bc.item_quantity * i.item_rate) AS total_bill
    FROM booking_commercials bc
    JOIN bookings b ON bc.booking_id = b.booking_id
    JOIN items i ON bc.item_id = i.item_id
    GROUP BY bc.booking_id, b.user_id, month
),
ranked AS (
    SELECT *,
        RANK() OVER (PARTITION BY month ORDER BY total_bill DESC) AS rnk
    FROM bill_data
)
SELECT *
FROM ranked
WHERE rnk = 2;