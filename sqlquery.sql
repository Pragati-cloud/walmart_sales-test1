-- select * from walmart limit 10;

-- Business problems
-- 1. find different payment method and no. of transections, no. of qty sold

-- select payment_method, count(*) as no_payment, sum(quantity) as no_qty_sold from walmart  
-- group by payment_method ;

-- 2. identify the highest rated category in each branch , displaying the branch , category order by 
-- avg rating 

-- SELECT 
   -- branch, category, 
    -- AVG(rating) AS avg_rating, 
    -- RANK() OVER (PARTITION BY branch ORDER BY AVG(rating) DESC) AS rank
-- FROM walmart GROUP BY branch,category;


-- 3. identify the busiest day for each branch based on the no, of transections

-- SELECT 
  --  date, 
  --  DAYNAME(STR_TO_DATE(date, '%d/%m/%y')) AS day_name 
-- FROM walmart;


-- 4 . calculate the total quantity of items sold per payment method 

-- select payment_method, count(*) as no_payment , sum(quantity) as no_quantity from walmart group by payment_method  ;

-- 5. determine the avg , min and max rating for each city

select city , avg(rating) as avg_rating , max(rating) as max_rating, min(rating) as min_rating from walmart group by city ;

