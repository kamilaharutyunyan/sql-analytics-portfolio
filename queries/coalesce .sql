UPDATE public.sales_analysis 
SET discount = NULL
WHERE discount = 0;

Select 
* 
From public.sales_analysis 
WHERE discount IS NULL 

select 
	round(min(discount), 2) as min_discount,
	round(max(discount), 2) as max_discount,
	round(avg(discount), 2) as avg_discount,
	count(transaction_id) as transactions
from sales_analysis;

select 
	round(avg(discount),2) as avg_discount, 
	avg(coalesce(discount, (select avg(discount)from sales_analysis))) as test1,
	AVG(coalesce(discount, 0.5)) as test2, 
	avg(coalesce(discount, 0.25)) as test3
from sales_analysis;
	