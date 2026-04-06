    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status,
        _etl_loaded_at

    -- from raw.jaffle_shop.orders es etático, pero si la DB cambia de raw, deja d funcionar. Por eso mejor así:
from {{ source('jaffle_shop', 'orders') }}
