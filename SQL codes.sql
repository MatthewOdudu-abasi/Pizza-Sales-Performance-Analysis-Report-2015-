-- 1. Total Revenue
-- Calculates total sales revenue
SELECT 
    SUM(total_price) AS total_revenue
FROM pizza_sales;


-- 2. Average Order Value
-- Calculates average revenue per order
SELECT 
    SUM(total_price) / COUNT(DISTINCT order_id) AS avg_order_value
FROM pizza_sales;


-- 3. Total Pizzas Sold
-- Calculates total quantity of pizzas sold
SELECT 
    SUM(quantity) AS total_pizza_sold
FROM pizza_sales;


-- 4. Total Orders
-- Counts total unique orders
SELECT 
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales;


-- 5. Average Pizzas Per Order
-- Calculates average number of pizzas per order
SELECT 
    CAST(
        CAST(SUM(quantity) AS DECIMAL(10,2)) /
        CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2))
    AS DECIMAL(10,2)) AS avg_pizza_per_order
FROM pizza_sales;


-- 6. Total Orders Per Day
-- Groups orders by day of the week in correct Sunday–Saturday order
SELECT 
    TO_CHAR(order_date, 'FMDay') AS order_day,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY 
    TO_CHAR(order_date, 'FMDay'),
    EXTRACT(DOW FROM order_date)
ORDER BY 
    EXTRACT(DOW FROM order_date);


-- 7. Total Orders Per Month
-- Groups orders by month in correct chronological order
SELECT 
    TO_CHAR(order_date, 'Mon YYYY') AS order_month,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY 
    TO_CHAR(order_date, 'Mon YYYY'),
    DATE_TRUNC('month', order_date)
ORDER BY 
    DATE_TRUNC('month', order_date);


-- 8. Percentage of Sales by Pizza Category
-- Calculates percentage contribution of each pizza category
SELECT 
    pizza_category,
    ROUND(
        SUM(total_price) * 100.0 /
        (SELECT SUM(total_price) FROM pizza_sales),
    2) AS pct_of_sales
FROM pizza_sales
GROUP BY pizza_category;


-- 9. Pizza Category Revenue with Percentage Contribution
-- Shows revenue and percentage share by category
SELECT 
    pizza_category,
    SUM(total_price) AS total_sales,
    ROUND(
        SUM(total_price) * 100.0 /
        (SELECT SUM(total_price) FROM pizza_sales),
    2) AS pct_of_sales
FROM pizza_sales
GROUP BY pizza_category
ORDER BY total_sales DESC;


-- 10. Top 5 Pizzas by Revenue
-- Identifies highest revenue-generating pizzas
SELECT 
    pizza_name,
    SUM(total_price) AS total_revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue DESC
LIMIT 5;


-- 11. Bottom 5 Pizzas by Revenue
-- Identifies lowest revenue-generating pizzas
SELECT 
    pizza_name,
    SUM(total_price) AS total_revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue ASC
LIMIT 5;


-- 12. Top 5 Pizzas by Quantity Sold
-- Identifies pizzas with highest sales volume
SELECT 
    pizza_name,
    SUM(quantity) AS total_quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_quantity DESC
LIMIT 5;


-- 13. Bottom 5 Pizzas by Quantity Sold
-- Identifies pizzas with lowest sales volume
SELECT 
    pizza_name,
    SUM(quantity) AS total_quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_quantity ASC
LIMIT 5;


-- 14. Top 5 Pizzas by Total Orders
-- Identifies pizzas ordered most frequently
SELECT 
    pizza_name,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_orders DESC
LIMIT 5;


-- 15. Bottom 5 Pizzas by Total Orders
-- Identifies pizzas ordered least frequently
SELECT 
    pizza_name,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_orders ASC
LIMIT 5;

