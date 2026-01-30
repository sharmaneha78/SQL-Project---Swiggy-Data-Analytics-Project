--CREATING SCHEMAS
--DIMENSION TABLE
--DATE TABLE
CREATE TABLE dim_date(
date_id INT IDENTITY(1,1) PRIMARY KEY,
full_date DATE,
year INT,
month INT,
month_name varchar(20),
quarter INT,
day INT,
week INT
)
SELECT * FROM dim_date;--dim_location
CREATE TABLE dim_location (
location_id INT IDENTITY(1,1) PRIMARY KEY,
State varchar(100),
City varchar(100) ,
Location varchar(200)
);--dim_restaurant
CREATE TABLE dim_restaurant (
restaurant_id INT IDENTITY(1,1) PRIMARY KEY,
restaurant_name VARCHAR(200)
);--DIM_CATEGORY
CREATE TABLE dim_category(
category_id INT IDENTITY(1,1) PRIMARY KEY,
category VARCHAR(200)
);--DIM_DISH
CREATE TABLE dim_dish(
dish_id INT IDENTITY(1,1) PRIMARY KEY,
dish_name VARCHAR(200)
);
