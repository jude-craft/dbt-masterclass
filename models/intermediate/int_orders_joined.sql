select
    oi.order_item_id,
    oi.order_id,
    oi.user_id,
    oi.product_id,
    oi.sale_price,
    p.cost,
    oi.sale_price - p.cost as gross_margin,
    p.category as product_category,
    p.brand as product_brand,
    p.department as product_department,
    dc.distribution_center_name,  
    oi.created_at,
    oi.status
from {{ ref('stg_thelook_order_items') }} oi
left join {{ ref('stg_thelook_products') }} p
    on oi.product_id = p.product_id
left join {{ ref('stg_thelook_distribution_centers') }} dc
    on p.distribution_center_id = dc.distribution_center_id