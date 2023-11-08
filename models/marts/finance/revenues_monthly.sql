select
    year || '-' || format('%02d', month) as year_month
    ,sum(turnover) as turnover

from
    {{ ref("int_sales_daily")}}

group by
    year
    ,month

order by
    year desc
    ,month desc