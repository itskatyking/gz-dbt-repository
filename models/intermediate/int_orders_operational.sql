SELECT
  *,
  ROUND(
    margin_data.total_margin
    + ship_data.shipping_fee
    - ship_data.logcost
    - ship_data.ship_cost,
    2
  ) AS operational_margin,


FROM {{ ref('int_orders_margin') }} AS margin_data
LEFT JOIN {{ ref('stg_raw__ship') }} AS ship_data
  
  USING (orders_id)
