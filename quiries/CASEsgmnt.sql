SELECT customer_name,
CASE 
WHEN AVG(total_sales) > 252 THEN 'greater than avrg'
WHEN AVG(total_sales) = 252 THEN 'avrg' 
WHEN AVG(total_sales) < 252 THEN 'less than avrg' 
ELSE 'PAZOR'
END AS sales_segment
FROM sales_analysis
Group by customer_name;