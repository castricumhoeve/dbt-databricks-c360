{{
 config(materialized = 'table', file_format = 'delta', schema = "BHa")
}}

select
  user_id,
  sum(amount) count
from dbdemos.dbt_c360_bronze_orders
group by
  user_id