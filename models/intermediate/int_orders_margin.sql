SELECT
    orders_id
    , date_date
    , ROUND (SUM (total_revenue), 2) AS total_revenue
    , SUM (total_quantity) AS total_quantity
    , ROUND (SUM (total_purchase_cost), 2) AS total_purchase_cost
    , ROUND (SUM (total_margin), 2) AS total_margin

FROM {{ ref('int_sales_margin') }}

GROUP BY
    date_date
    , orders_id