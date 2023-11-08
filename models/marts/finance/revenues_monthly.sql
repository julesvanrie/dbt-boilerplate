{{ config(materialized='table') }}

select
    {{ yearmonth(year, month) }}
    ,sum(turnover) as turnover

from
    {{ ref("int_sales_daily")}}

group by
    year
    ,month

order by
    year desc
    ,month desc