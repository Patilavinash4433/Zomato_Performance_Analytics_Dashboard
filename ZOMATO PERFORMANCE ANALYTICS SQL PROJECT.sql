-- =====================================================
-- ZOMATO PERFORMANCE ANALYTICS PROJECT
-- SQL QUERIES FOR DATA ANALYSIS
-- =====================================================


-- =====================================================
-- Q1. Display all Users Information
-- Purpose: View complete user details
-- =====================================================

SELECT *
FROM Users;


-- =====================================================
-- Q2. Display all Restaurant Information
-- Purpose: View complete restaurant details
-- =====================================================

SELECT *
FROM Restaurant;


-- =====================================================
-- Q3. Count Total Number of Users
-- Purpose: Find total registered customers
-- =====================================================

SELECT COUNT(*) AS Total_Users
FROM Users;


-- =====================================================
-- Q4. Count Total Number of Restaurants
-- Purpose: Find total restaurants available
-- =====================================================

SELECT COUNT(*) AS Total_Restaurants
FROM Restaurant;


-- =====================================================
-- Q5. Calculate Total Revenue
-- Purpose: Find total sales generated
-- =====================================================

SELECT SUM(sales_amount) AS Total_Revenue
FROM Orders;


-- =====================================================
-- Q6. Calculate Total Orders
-- Purpose: Find total number of orders placed
-- =====================================================

SELECT COUNT(*) AS Total_Orders
FROM Orders;


-- =====================================================
-- Q7. Gender Wise User Distribution
-- Purpose: Analyze Male vs Female users
-- =====================================================

SELECT
    gender,
    COUNT(*) AS User_Count
FROM Users
GROUP BY gender
ORDER BY User_Count DESC;


-- =====================================================
-- Q8. Average Age of Users
-- Purpose: Find average customer age
-- =====================================================

SELECT
    ROUND(AVG(age),2) AS Average_Age
FROM Users;


-- =====================================================
-- Q9. Top 10 Highest Rated Restaurants
-- Purpose: Identify best-rated restaurants
-- =====================================================

SELECT
    name,
    city,
    rating
FROM Restaurant
ORDER BY CAST(rating AS NUMERIC) DESC
LIMIT 10;


-- =====================================================
-- Q10. Top 10 Cities by Restaurant Count
-- Purpose: Find cities having maximum restaurants
-- =====================================================

SELECT
    city,
    COUNT(*) AS Restaurant_Count
FROM Restaurant
GROUP BY city
ORDER BY Restaurant_Count DESC
LIMIT 10;


-- =====================================================
-- BONUS QUERY 1
-- Restaurants with Rating Greater Than 4
-- =====================================================

SELECT
    name,
    city,
    rating
FROM Restaurant
WHERE CAST(rating AS NUMERIC) > 4
ORDER BY CAST(rating AS NUMERIC) DESC;


-- =====================================================
-- BONUS QUERY 2
-- Users Above Age 30
-- Purpose: Customer Segmentation
-- =====================================================

SELECT *
FROM Users
WHERE age > 30;


-- =====================================================
-- BONUS QUERY 3
-- Occupation Wise User Count
-- Purpose: Analyze customer professions
-- =====================================================

SELECT
    occupation,
    COUNT(*) AS User_Count
FROM Users
GROUP BY occupation
ORDER BY User_Count DESC;


-- =====================================================
-- BONUS QUERY 4
-- Cities Having More Than 100 Restaurants
-- Purpose: High Density Restaurant Locations
-- =====================================================

SELECT
    city,
    COUNT(*) AS Restaurant_Count
FROM Restaurant
GROUP BY city
HAVING COUNT(*) > 100
ORDER BY Restaurant_Count DESC;


-- =====================================================
-- BONUS QUERY 5
-- Average Rating by City
-- Purpose: City Performance Analysis
-- =====================================================

SELECT
    city,
    ROUND(AVG(CAST(rating AS NUMERIC)),2) AS Avg_Rating
FROM Restaurant
GROUP BY city
ORDER BY Avg_Rating DESC;

