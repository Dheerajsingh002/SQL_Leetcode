SELECT 
  p.product_id, 
  IfNull(ROUND(SUM(u.units * p.price) / SUM(u.units), 2),0) AS average_price
FROM 
  Prices p
Left JOIN 
  UnitsSold u ON p.product_id = u.product_id and u.purchase_date Between p.start_date and p.end_date
GROUP BY 
  p.product_id;
