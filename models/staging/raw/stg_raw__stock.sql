with 

source as (

    select * from {{ source('raw', 'stock') }}

),

renamed as (

    select
        concat(model, '_', color, '_', coalesce(size, "")) as product_id,
        model,
        model_name,
        color,
        color_name,
        size,
        `new`,
        forecast_stock,
        stock,
        price

    from source

)

select * from renamed
