[14:57] de Water, J. (Joel)
{{
 config(materialized = 'table', file_format = 'delta', schema = "Bha")
}}

select platform, count(event_id) from dbdemos.dbt_c360_bronze_events group by platform