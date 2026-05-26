SELECT COUNT(*) FROM food_delivery;
USE food_delivery_db;
SELECT City, COUNT(Order_ID) AS Total_Orders
FROM food_delivery
GROUP BY City
ORDER BY Total_Orders DESC;
SELECT Restaurant_Name, COUNT(Order_ID) AS Orders_Count
FROM food_delivery
GROUP BY Restaurant_Name
ORDER BY Orders_Count DESC;
SELECT Restaurant_Name,
AVG(Customer_Rating) AS Avg_Rating
FROM food_delivery
GROUP BY Restaurant_Name
ORDER BY Avg_Rating DESC;
SELECT Cuisine_Type,
SUM(Final_Amount) AS Total_Revenue
FROM food_delivery
GROUP BY Cuisine_Type
ORDER BY Total_Revenue DESC;
SELECT Payment_Method,
COUNT(*) AS Usage_Count
FROM food_delivery
GROUP BY Payment_Method
ORDER BY Usage_Count DESC;
SELECT Order_Status,
COUNT(*) AS Total
FROM food_delivery
GROUP BY Order_Status;
SELECT *
FROM food_delivery
ORDER BY Order_Amount DESC
LIMIT 5;
SELECT City,
AVG(Discount_Amount) AS Avg_Discount
FROM food_delivery
GROUP BY City;