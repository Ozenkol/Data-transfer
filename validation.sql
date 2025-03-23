SELECT COUNT(*) FROM source_db.recommendation;
SELECT COUNT(*) FROM target_db.recommendation;

SELECT COUNT(*) FROM target_db.recommendation r
LEFT JOIN target_db.users u ON r.user_id = u.id
WHERE u.id IS NULL;

SELECT COUNT(*) FROM target_db.recommendation r
LEFT JOIN target_db.products p ON r.product_id = p.id
WHERE p.id IS NULL;