select
    o.order_id,
    o.user_id as customer_id,
    o.status,
    o.num_of_item,
    o.created_at as ordered_at,
    o.shipped_at,
    o.delivered_at,
    o.returned_at
from {{ ref('stg_thelook_orders') }} o