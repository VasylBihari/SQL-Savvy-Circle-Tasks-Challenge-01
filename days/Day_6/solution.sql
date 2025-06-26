SELECT 
	category,
  COALESCE(MIN(CASE WHEN ps.stars >= 4 THEN pr.price END), 0) as price
FROM products pr
LEFT JOIN purchases ps ON pr.id=ps.product_id
GROUP BY category
ORDER BY category; 
