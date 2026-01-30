--KPI's
--Total Orders
SELECT COUNT(*) AS Total_Orders
FROM fact_swiggy_orders;
--Total Revenue (INR Million)
SELECT
FORMAT(
SUM(CONVERT(FLOAT, Price_INR)) / 1000000,
'N2'
) + ' INR Million' AS Total_Revenue
FROM fact_swiggy_orders;
--Average Dish Price
SELECT
FORMAT(
AVG(CONVERT(FLOAT, Price_INR)),
'N2'
) + ' INR' AS Avg_dish_price
FROM fact_swiggy_orders;
--Average Rating
SELECT
AVG(Rating) AS Avg_rating
FROM fact_swiggy_orders;
