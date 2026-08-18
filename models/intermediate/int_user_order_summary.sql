select
    user_id,
    count(distinct order_id) as total_orders,
    min(created_at) as first_order_at,
    max(created_at) as most_recent_order_at,
    sum(num_of_item) as total_items_ordered
from {{ ref('stg_thelook_orders') }}
group by user_id