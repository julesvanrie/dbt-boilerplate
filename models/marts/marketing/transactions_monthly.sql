select
    {{ yearmonth(year, month) }}
    ,sum(turnover) as turnover
    ,sum(items_count) as items_count
    ,sum(product_id_unique) as product_id_unique

from
    {{ ref("int_sales_daily")}}

group by
    year
    ,month

order by
    year desc
    ,month desc