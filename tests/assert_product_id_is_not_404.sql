select product_id
from {{ ref("stg_raw__stock") }}
where product_id = '404'