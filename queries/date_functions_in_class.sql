select 
    extract(month from order_date_date) as month,
	extract(quarter from order_date_date) as quarter
from sales_analysis;

select 
    extract(month from order_date_date) as month,
    sum(total_sales) as monthly_rev
from sales_analysis
group by extract(month from order_date_date)
order by monthly_rev desc
limit 3;

select 
    extract(quarter from order_date_date) as quarter,
    sum(total_sales) as q_rev
from sales_analysis
group by extract(quarter from order_date_date)
order by q_rev desc
limit 3;

select order_date_date,
    current_date - order_date_date as days_since_transaction
from sales_analysis;

select * from sales_analysis 
where order_date_date >= current_date - interval '60 days';