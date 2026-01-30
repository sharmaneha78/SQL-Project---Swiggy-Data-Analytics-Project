--data validatiom and cleaming--null check
SELECT
SUM(CASE WHEN State IS NULL THEN 1 ELSE 0 END) AS null_state,
SUM(CASE WHEN City IS NULL THEN 1 ELSE 0 END) AS null_city,
SUM(CASE WHEN Order_Date IS NULL THEN 1 ELSE 0 END) AS 
null_order_date,
SUM(CASE WHEN Restaurant_Name IS NULL THEN 1 ELSE 0 END) AS 
null_restaurant_name,
SUM(CASE WHEN Location IS NULL THEN 1 ELSE 0 END) AS null_location,
SUM(CASE WHEN Category IS NULL THEN 1 ELSE 0 END) AS null_category,
SUM(CASE WHEN Dish_Name IS NULL THEN 1 ELSE 0 END) AS null_dish,
SUM(CASE WHEN Price_INR IS NULL THEN 1 ELSE 0 END) AS null_price,
SUM(CASE WHEN Rating IS NULL THEN 1 ELSE 0 END) AS null_rating,
SUM(CASE WHEN Rating_Count IS NULL THEN 1 ELSE 0 END) AS 
null_rating_count
FROM swiggy_data;--blank or empty string
SELECT * FROM swiggy_data WHERE 
State='' OR City=''  OR Restaurant_Name='' OR Location='' OR Category='' 
OR Dish_Name=''--duplicate detection
SELECT State,City,Order_Date,Restaurant_Name,Location,Category,
Dish_Name,Price_INR,Rating,Rating_Count,count(*) as CNT
FROM swiggy_data
GROUP BY 
State,City,Order_Date,Restaurant_Name,Location,Category,
Dish_Name,Price_INR,Rating,Rating_Count HAVING COUNT(*)>1--DELETE DUPLICATION
WITH CTE AS(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY 
State,City,Order_Date,Restaurant_Name,Location,Category,
Dish_Name,Price_INR,Rating,Rating_Count 
ORDER BY (SELECT NULL)) AS RN 
FROM swiggy_data
)
DELETE FROM CTE
WHERE RN>1
