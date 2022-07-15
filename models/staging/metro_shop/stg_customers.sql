
with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    --direct table name
    --from raw.jaffle_shop.customers

    -- using sources, after adding this, sources show in lineage
    from {{ source('metro_shop', 'customers') }} --source name , table name
)

select * from customers