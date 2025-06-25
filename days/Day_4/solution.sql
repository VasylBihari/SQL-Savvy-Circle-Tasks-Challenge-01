
SELECT
	*
FROM product_reviews
WHERE (review_text ILIKE '%excellent%' OR review_text ILIKE'%amazing%')
AND review_text NOT ILIKE '%not%excellent%'
AND review_text NOT ILIKE '%not%amazing%'
ORDER BY review_id;
