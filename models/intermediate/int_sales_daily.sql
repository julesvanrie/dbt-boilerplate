select
    date_date
    ,extract(year from date_date) as year
    ,extract(month from date_date) as month
    ,extract(week from date_date) as week
    ,sum(turnover) as turnover
    ,sum(quantity) as items_count
    ,count(*) as product_id_unique

from
    {{ ref('int_stock_sales')}}

group by
    date_date

order by
    date_date desc