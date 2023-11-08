select
    date_date
    ,sum(turnover) as turnover
    ,sum(items_count) as items_count
    ,sum(product_id_unique) as product_id_unique

from
    {{ ref("int_sales_daily")}}

group by
    date_date

order by
    date_date desc