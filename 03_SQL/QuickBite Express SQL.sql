---------------------------------------------------
--QuickBite Express--
---------------------------------------------------
--===============================================--
---------------------------------------------------
-- Total Revenue -- Average Order Value -- Total Discount Given --
---------------------------------------------------

SELECT
    SUM(total_amount) AS Total_Revenue,
    AVG(total_amount) AS Average_Order_Value,
    SUM(discount_amount) AS Total_Discount_Given
FROM fact_orders
WHERE is_cancelled = 'N';


---------------------------------------------------
-- Total Orders -- Completed_Orders -- Cancelled_Orders -- Cancellation Rate Percentage --
---------------------------------------------------

SELECT 
    COUNT(*) AS Total_Orders,

    COUNT(CASE 
            WHEN is_cancelled = 'N' THEN 1
          END) AS Completed_Orders,

    COUNT(CASE 
            WHEN is_cancelled = 'Y' THEN 1
          END) AS Cancelled_Orders,

    ROUND(
        COUNT(CASE 
                WHEN is_cancelled = 'Y' THEN 1
              END) * 100.0 / COUNT(*),
        2
    ) AS Cancellation_Rate_Percentage

FROM fact_orders;


---------------------------------------------------
-- Revenue By Month --
---------------------------------------------------

SELECT
      SUM(total_amount) AS Revenue_By_Month
FROM fact_orders
GROUP BY MONTH(order_timestamp)
ORDER BY MONTH(order_timestamp)


---------------------------------------------------
-- Orders By Month --
---------------------------------------------------

SELECT 
  COUNT(*) AS Orders_By_Month
FROM fact_orders
GROUP BY MONTH(order_timestamp)



---------------------------------------------------
-- Payment Method --
---------------------------------------------------

SELECT
  is_cod,
  COUNT(*) AS Orders
FROM fact_orders
GROUP BY is_cod


---------------------------------------------------
-- Orders By Day --
---------------------------------------------------

SELECT
  DATENAME(WEEKDAY, order_timestamp) AS Order_Day,
  COUNT(*) AS Orders_By_Day
FROM fact_orders
GROUP BY DATENAME(WEEKDAY, order_timestamp)
ORDER BY Orders_By_Day ASC;


---------------------------------------------------
-- Peak Order Hours --
---------------------------------------------------

SELECT
    DATEPART(HOUR, order_timestamp) AS Order_Hour,
    COUNT(*) AS Total_Orders
FROM fact_orders
GROUP BY DATEPART(HOUR, order_timestamp)
ORDER BY Total_Orders DESC;


---------------------------------------------------
-- Order Status Distribution --
---------------------------------------------------

SELECT
    CASE
        WHEN is_cancelled = 'Y' THEN 'Cancelled'
        ELSE 'Completed'
    END AS Order_Status,
    COUNT(*) AS Total_Orders
FROM fact_orders
GROUP BY is_cancelled;


---------------------------------------------------
-- Revenue Trend --
---------------------------------------------------

SELECT
    YEAR(order_timestamp) AS Year,
    MONTH(order_timestamp) AS Month,
    SUM(total_amount) AS Total_Revenue
FROM fact_orders
WHERE is_cancelled = 'N'
GROUP BY
    YEAR(order_timestamp),
    MONTH(order_timestamp)
ORDER BY
    Year,
    Month;


--===============================================--
---------------------------------------------------
-- Total Customer --
---------------------------------------------------

SELECT
    COUNT(*) AS Total_Customer
FROM dim_customer;

---------------------------------------------------
-- Customers by City --
---------------------------------------------------
SELECT
    city,
    COUNT(customer_id) AS Total_Customers
FROM dim_customer
GROUP BY city
ORDER BY Total_Customers DESC;


---------------------------------------------------
-- Customers by Acquisition Channel --
---------------------------------------------------


SELECT
    acquisition_channel,
    COUNT(customer_id) AS Total_Customers
FROM dim_customer
GROUP BY acquisition_channel
ORDER BY Total_Customers DESC;

---------------------------------------------------
-- Top 10 Customers by Spending --
---------------------------------------------------


SELECT TOP 10
    customer_id,
    SUM(total_amount) AS Customer_Spending
FROM fact_orders
WHERE is_cancelled = 'N'
GROUP BY customer_id
ORDER BY Customer_Spending DESC;

---------------------------------------------------
-- Repeat Customers --
---------------------------------------------------


SELECT
    customer_id,
    COUNT(order_id) AS Total_Orders
FROM fact_orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1
ORDER BY Total_Orders DESC;

--===============================================--
---------------------------------------------------
-- Total Restaurant --
---------------------------------------------------


SELECT 
    COUNT(*) AS Total_Restaurant
FROM dim_restaurant;

---------------------------------------------------
-- Total Active Restaurant --
---------------------------------------------------


SELECT 
    COUNT(*) AS Total_Active_Restaurant
FROM dim_restaurant
WHERE is_active = 'Y';

---------------------------------------------------
-- Top Restaurant By Revanue --
---------------------------------------------------


SELECT TOP 10
    restaurant_id AS Restaurant,
    SUM(total_amount) AS Restaurant_Revanue
FROM fact_orders
GROUP BY restaurant_id
ORDER BY Restaurant_Revanue DESC;

---------------------------------------------------
-- Order By Cusine --
---------------------------------------------------


SELECT 
      r.cuisine_type AS cusine,
      COUNT (o.order_id) AS Total_Order
FROM fact_orders o
JOIN dim_restaurant r
ON o.restaurant_id = r.restaurant_id
GROUP BY r.cuisine_type
ORDER BY Total_order DESC;

---------------------------------------------------
-- Avg Rating --
---------------------------------------------------


SELECT
      restaurant_id AS Restorant,
      AVG(rating) AS Avg_Rating
FROM fact_ratings
GROUP BY restaurant_id
ORDER BY Avg_Rating DESC;

---------------------------------------------------
-- Total Revenue --
---------------------------------------------------


SELECT  
    restaurant_id,
    SUM(total_amount) AS Total_Revenue
FROM fact_orders
GROUP BY restaurant_id
ORDER BY Total_Revenue DESC;

--===============================================--
---------------------------------------------------
-- Average Delivery Time --
---------------------------------------------------


SELECT 
      AVG(actual_delivery_time_mins) AS Avg_Delivery_Time
FROM fact_delivery_performance;

---------------------------------------------------
-- Average Delay --
---------------------------------------------------


SELECT
    (AVG(actual_delivery_time_mins)) - (AVG(expected_delivery_time_mins)) AS Average_Delay
FROM fact_delivery_performance;

---------------------------------------------------
-- Delivery Partner Performance --
---------------------------------------------------


SELECT
      o.delivery_partner_id,
      AVG(dp.actual_delivery_time_mins) AS Average_Delivery_Time,
      COUNT(o.order_id) AS Total_Deliveries
FROM fact_orders o
JOIN fact_delivery_performance dp 
     ON o.order_id = dp.order_id
GROUP BY o.delivery_partner_id
ORDER BY Average_Delivery_Time ASC;

---------------------------------------------------
-- Order By Vehicle Type --
---------------------------------------------------


SELECT
      vehicle_type AS Vehicle_Type,
      COUNT(o.order_id) AS Total_Deliveries
FROM fact_orders o
JOIN dim_delivery_partner_ dp 
   ON o.delivery_partner_id = dp.delivery_partner_id
GROUP BY Vehicle_type
ORDER BY Total_Deliveries DESC;

--===============================================--
---------------------------------------------------
-- Avg Rating --
---------------------------------------------------


SELECT
      AVG(rating) AS Avg_Rating
FROM fact_ratings;

---------------------------------------------------
-- Rating Distribution --
---------------------------------------------------


SELECT
    rating,
    COUNT(*) AS Total_Ratings
FROM fact_ratings
GROUP BY rating
ORDER BY rating DESC;

---------------------------------------------------
-- Sentiment Distribution --
---------------------------------------------------


SELECT
    sentiment_score AS Score,
    COUNT(*) AS Total_Reviews
FROM fact_ratings
GROUP BY sentiment_score
ORDER BY Total_Reviews DESC;

---------------------------------------------------
--  --
---------------------------------------------------


