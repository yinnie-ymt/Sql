Case when function

select customer_id,
case when incoming_crypto = 'ETH' then amount/100.0 else
  case when incoming_crypto = 'BTC' then amount/1000.0 else
    case when incoming_crypto = "USDC" then amount/10.0 end end end as "Amount",
---case when function goes through conditions and returns a value when the first condition is met. Since I used 3 case when lines, it needs 3 times 'end'
crypto_name

from crypto_native

where customer_info -> 'address' ->> 'country' = 'USA'
--- extracting json using >> 
