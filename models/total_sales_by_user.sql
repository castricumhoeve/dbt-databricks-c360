[14:57] de Water, J. (Joel)
{{
 config(materialized = 'table', file_format = 'delta', schema = "BHa")
}}

select
  user_id,
  sum(amount)
from dbdemos.dbt_c360_bronze_orders
group by
  user_id