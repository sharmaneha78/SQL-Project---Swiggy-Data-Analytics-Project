--FACT TABLE
CREATE TABLE fact_swiggy_orders(
order_id INT IDENTITY(1,1) PRIMARY KEY,
date_id INT,
price_INR DECIMAL(10,2),
Rating decimal(4,2),
Rating_Count INT,
location_id INT,
restaurant_id INT,
category_id INT,
dish_id INT,
FOREIGN KEY (date_id) references dim_date(date_id),
FOREIGN KEY (location_id) references dim_location(location_id),
FOREIGN KEY (restaurant_id) references dim_restaurant(restaurant_id),
FOREIGN KEY (category_id) references dim_category(category_id),
FOREIGN KEY (dish_id) references dim_dish(dish_id),
);
