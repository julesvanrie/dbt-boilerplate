with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        product_id,
        quantity

    from source

)

select * from renamed
