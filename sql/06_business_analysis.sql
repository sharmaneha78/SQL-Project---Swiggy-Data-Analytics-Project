--DATE BASED ANALYSIS
--DEEP DIVE BUSINESS ANALYSIS--MONTHLY ORDER TREND
SELECT
d.year,
d.month,
d.month_name,
COUNT(*) AS Total_Orders
FROM fact_swiggy_orders f
JOIN dim_date d 
ON f.date_id = d.date_id
GROUP BY
d.year,
d.month,
d.month_name
ORDER BY
count(*) desc;
--QUARTERLY ORDER TREND
SELECT
d.year,
d.quarter,
COUNT(*) AS Total_Orders
FROM fact_swiggy_orders f
JOIN dim_date d 
ON f.date_id = d.date_id
GROUP BY
d.year,
d.quarter
ORDER BY
count(*) desc;
--Yearly trends
SELECT
d.year,
COUNT(*) AS total_orders
FROM fact_swiggy_orders f
JOIN dim_date d 
ON f.date_id = d.date_id
GROUP BY
d.year
ORDER BY
d.year;
--Orders by Day of Week (Mon–Sun)
SELECT
DATENAME(WEEKDAY, d.full_date) AS day_name,
COUNT(*) AS total_orders
FROM fact_swiggy_orders f
JOIN dim_date d 
ON f.date_id = d.date_id
GROUP BY
DATENAME(WEEKDAY, d.full_date),
