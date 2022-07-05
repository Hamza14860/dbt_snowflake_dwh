{{ config (
    materialized="table"
)}}

with customers as (
    -- referencing stg_customers table. stg_customers model should be executed first
    select * from {{ ref('stg_customers')}}

),

orders as (
    -- referencing stg_orders table. stg_orders model should be executed first
    select * from {{ ref('stg_orders') }}

),
 
--cte 1 
customer_orders as (

    select
        customer_id,

        min(order_date) as first_order_date,
        max(order_date) as most_recent_order_date,
        count(order_id) as number_of_orders

    from orders

    group by 1

),

--cte 2
final as (

    select
        customers.customer_id,
        customers.first_name,
        customers.last_name,
        customer_orders.first_order_date,
        customer_orders.most_recent_order_date,
        coalesce(customer_orders.number_of_orders, 0) as number_of_orders

    from customers

    left join customer_orders using (customer_id)

)

select * from final
