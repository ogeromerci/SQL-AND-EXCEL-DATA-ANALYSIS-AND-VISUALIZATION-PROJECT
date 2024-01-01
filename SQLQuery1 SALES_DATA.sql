--Daily Trend
SELECT DATENAME (DW, order_date) as order_day, COUNT(DISTINCT order_id) AS Total_orders from sales_data
GROUP BY DATENAME(DW, order_date)

--Hourly Trend
SELECT 
    DATEPART(HOUR, order_time) AS [order-hours], 
    COUNT(DISTINCT order_id) AS Total_orders 
FROM 
    sales_data
GROUP BY 
    DATEPART(HOUR, order_time)
ORDER BY
    DATEPART(HOUR, order_time)


SELECT pizza_category, sum[Total-price] *100 / (SELECT sum(total_price) from sales_data)
from sales_data
GROUP BY sales_category

SELECT
    pizza_category,
    SUM([Total-price]) * 100 / (SELECT SUM(total_price) FROM sales_data) AS percentage_of_total
FROM
    sales_data
GROUP BY
    pizza_category;


	SELECT
    pizza_category,
    SUM([Total-price]) * 100 / (SELECT SUM(total_price) FROM sales_data) AS percentage_of_total
FROM
    sales_data
GROUP BY
    pizza_category;

