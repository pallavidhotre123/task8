Q1) Range the first is 0 to 9 char and second is 2 or 8
	
select * from customer where age::varchar ~* '^[0-9][2/8]$' 

Q2) first char a to z and second char is a/u/h
select first_name from customer where first_name ~* '^[a-z][a/u/h]'

Q3) I have first char is a to z and second char is only (a and f) third char is the a to z
	and control the last digit (2/8)
	
select * from product where product_id ~* '^[a-z][a/f]{2}-[a-z]{2}-[0-9]{7}[2/8]$'

Q4) control the product_name first char A and second a-z

select * from product where product_name ~* '^a[a-z]'

Q5) 1st char a-z and 2nd char only have a & v in customer_fact table

select * from customer_fact where customer_id ~* '^[a-z][a/v]-[0-9]{5}$'

Q6) control the postal_code table in customer_fact so i have more than 5000 numbers

select * from customer_fact where postal_code::varchar ~* '^[5-9][0-9]{4}$'

Q7) i have only M to start the first alphabate and case is sensitively

select * from customer_region where city ~ '^M'

Q8 handle only last digit t 

select * from customer_region where region ~* '^[a-z]{3}(t)$'

Q9) year have 2015 and 2017, month is 0-9, day 0-5

select * from sales where  order_date::varchar ~* '^201[5/7]-[0-9]{2}-[0-5]{2}$'

Q10) fifth char b/t and sixth char a-z in product_id

select * from sales where product_id ~* '^fur-[b/t][a-z]-[0-9]{8}$' 

