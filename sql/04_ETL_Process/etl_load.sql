--INSERT DATA IN TABLES--dim_date
INSERT INTO dim_date 
(Full_Date, Year, Month, Month_Name, Quarter, Day, Week)
SELECT DISTINCT
Order_Date,
YEAR(Order_Date),
MONTH(Order_Date),
DATENAME(MONTH, Order_Date),
DATEPART(QUARTER, Order_Date),
DAY(Order_Date),
DATEPART(WEEK, Order_Date)
FROM swiggy_data
WHERE Order_Date IS NOT NULL;
select * from dim_date;--dim_location
INSERT INTO dim_location (State, City, Location)
SELECT DISTINCT
State,
City,
Location
FROM swiggy_data;--dim_restaurant
INSERT INTO dim_restaurant (Restaurant_Name)
SELECT DISTINCT
Restaurant_Name
FROM swiggy_data;--dim_category
INSERT INTO dim_category (Category)
SELECT DISTINCT
Category
FROM swiggy_data;
--dim_dish
INSERT INTO dim_dish (Dish_Name)
SELECT DISTINCT
Dish_Name
FROM swiggy_data;--fact_table
INSERT INTO fact_swiggy_orders
(
date_id,
Price_INR,
Rating,
Rating_Count,
location_id,
restaurant_id,
category_id,
dish_id
)
SELECT
dd.date_id,
s.Price_INR,
s.Rating,
s.Rating_Count,
dl.location_id,
dr.restaurant_id,
dc.category_id,
dsh.dish_id
FROM swiggy_data s
JOIN dim_date dd
ON dd.Full_Date = s.Order_Date
JOIN dim_location dl
ON dl.State = s.State
AND dl.City = s.City
AND dl.Location = s.Location
JOIN dim_restaurant dr
ON dr.Restaurant_Name = s.Restaurant_Name
JOIN dim_category dc
ON dc.Category = s.Category
JOIN dim_dish dsh
ON dsh.Dish_Name = s.Dish_Name;
