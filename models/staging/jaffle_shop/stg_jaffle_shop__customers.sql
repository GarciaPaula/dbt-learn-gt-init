    select
        id as customer_id,
        first_name,
        last_name

    -- from raw.jaffle_shop.customers es etático, pero si la DB cambia de raw, deja d funcionar. Por eso mejor así:
    from {{ source('jaffle_shop', 'customers') }}

