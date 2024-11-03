use global_electronics;

select cust.name,cust.city,cust.state,cust.country, sales.order_number, sales.line_item, sales.quantity
from customer_details cust inner join sales_details sales on cust.customerkey=sales.customerkey

select Gender,year(current_date())-year(Birthday),city,state,Country  from customer_details

select cust.name, avg(sales.quantity)
from customer_details cust inner join sales_details sales on cust.customerkey=sales.customerkey
group by cust.name

select cust.name,sales.order_date
from customer_details cust inner join sales_details sales on cust.customerkey=sales.customerkey
order by cust.name

select cust.name, product_name
from customer_details cust inner join sales_details sales on cust.customerkey=sales.customerkey
inner join product_details pd on pd.productKey=sales.productKey
order by cust.name

select city, product_name,sum(quantity)
from customer_details cust inner join sales_details sales on cust.customerkey=sales.customerkey
inner join product_details pd on pd.productkey=sales.productkey
group by city,product_name




select product_name,order_date,ex.exchange 
from exchange_details ex inner join sales_details sales on ex.currency_code=sales.currency_code
inner join product_details pd on pd.productkey=sales.productkey

select name,product_name,quantity,unit_price_usd,quantity*unit_price_usd
from customer_details cd inner join sales_details sales on cd.customerkey=sales.customerkey
inner join product_details pd on pd.productkey=sales.productkey

select pd.Category, sum(quantity)
from product_details pd inner join sales_details sd on sd.productkey=pd.productkey
group by Category

select pd.Category,pd.subcategory, sum(quantity),year(order_date)
from product_details pd inner join sales_details sd on sd.productkey=pd.productkey
group by Category,subcategory,order_date


