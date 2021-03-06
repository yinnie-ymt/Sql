---Top Buyers by nationality

select
count(*) as "Quantity", 
--- astrik sign (*) refers to every value
customer_info ->'address' ->> 'country' as "Country"

---extracting json data and therefore the last item needs to use two '>>'

from customer

where transaction_state = 'completed'
--- I only want to see transactions that is completed

and to_char(complete_timestamp, 'DD-MM-YYYY') > to_char(now) - interval '3 months'
---- this to_char function is the most convenient to find dynamic timeline

group by 2 --- grouping by second column
order by 1 desc --- ordering by highest to lowest count to find top nationality 
