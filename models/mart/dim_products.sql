select
    id as product_id,
    name as product_name,
    brand,
    category,
    department,
    sku,
    cost,
    retail_price,
    retail_price - cost as unit_margin,
    distribution_center_id
from {{ ref('stg_thelook_products') }}