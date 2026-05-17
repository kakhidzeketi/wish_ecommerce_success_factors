SELECT COUNT (product_id) AS Noofproducts
FROM wish_list_clean

-- PRICES

SELECT MIN(price) AS min_price, 
		MAX (price) AS max_price, 
		AVG (price) AS avg_price 
FROM wish_list_clean

-- top performing products by quantity

SELECT TOP 10
			title_orig, SUM (units_sold) AS total_items
FROM wish_list_clean
GROUP BY title_orig
ORDER BY  total_items  DESC



-- top performing product by revenue
SELECT TOP 10	title_orig, 
				SUM (units_sold*price) AS revenue 
FROM wish_list_clean
GROUP BY title_orig
ORDER BY revenue DESC;





-- defining price ranges and sales for each range:

WITH CTE_Price_ranges AS (
    SELECT 
    units_sold,
     CASE 
        WHEN price < 10 THEN '0-10'
        WHEN price < 20 THEN '10-20'
        WHEN price < 30 THEN '20-30'
        WHEN price < 40 THEN '30-40'

        ELSE '40-50' 
-- Because max price is 50
    END AS price_ranges
    FROM wish_list_clean 
    )

SELECT 
    price_ranges, 
    SUM (units_sold) AS total_items
FROM CTE_Price_ranges
GROUP BY price_ranges
ORDER BY total_items DESC;



-- rating & sales 


WITH CTE_rating AS (
    SELECT 
    units_sold, 
        CASE
                 WHEN rating < 1.5 THEN '1'
                WHEN rating < 2.5 THEN '2'
                WHEN rating < 3.5 THEN '3'
                 WHEN rating < 4.5 THEN '4'
            ELSE '5'
        END AS rating_group
    FROM wish_list_clean
    )

SELECT 
    rating_group,
    SUM (units_sold) AS total_items
    
FROM CTE_rating
GROUP BY rating_group
ORDER BY SUM(units_sold) DESC;



-- review count 

WITH CTE_Rev_count AS (
    SELECT 
        units_sold,
        CASE 
            WHEN rating_count < 50 THEN 'few reviews'
            WHEN rating_count < 200 THEN 'Medium reviews'
            ELSE 'many reviews'
        END AS review_group
    FROM wish_list_clean
)

SELECT 
    review_group,
    SUM (units_sold) AS total_items
FROM CTE_Rev_count
GROUP BY review_group
ORDER BY total_items DESC;
 


 -- Merchants reputation 

 WITH CTE_merch AS (
    SELECT
     units_sold, 
        CASE
         WHEN merchant_rating < 1.5 THEN '1'
            WHEN merchant_rating < 2.5 THEN '2'
            WHEN merchant_rating < 3.5 THEN '3'
            WHEN merchant_rating < 4.5 THEN '4'
           ELSE '5'
END AS merch_rating
FROM wish_list_clean 
)

SELECT 
   merch_rating,
   SUM (units_sold) AS total_items
FROM CTE_merch
GROUP BY merch_rating
ORDER BY total_items DESC

-- badges impact
SELECT DISTINCT badges_count
FROM wish_list_clean

SELECT badges_count AS NoofBadges, 
       sum (units_sold) AS sold_items 
FROM wish_list_clean
GROUP BY badges_count
ORDER BY SUM (units_sold) DESC


-- shipping price impact 
SELECT DISTINCT shipping_option_name AS ship_name, 
                shipping_option_price AS ship_price 
FROM wish_list_clean

SELECT shipping_option_price AS ship_price, 
       SUM (units_sold) AS sold_items
FROM wish_list_clean
GROUP BY shipping_option_price
ORDER BY sold_items
            
                
