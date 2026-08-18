select
    u.id as customer_id,
    u.first_name,
    u.last_name,
    u.email,
    u.age,
    u.gender,
    u.city,
    u.state,
    u.country,
    u.traffic_source,
    u.created_at as signed_up_at,
    coalesce(s.total_orders, 0) as total_orders,
    s.first_order_at,
    s.most_recent_order_at
from {{ ref('stg_thelook_users') }} u
left join {{ ref('int_user_order_summary') }} s
    on u.id = s.user_id