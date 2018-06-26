SELECT b.category, m.contact
FROM books b, vt_category_mst m
WHERE b.category = m.category
AND   b.price > 195
ORDER BY b.id DESC
LIMIT 10;
