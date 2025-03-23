INSERT INTO target_db.recommendation (user_id, product_id, score, created_at)
SELECT r.user_id, r.product_id, r.score, r.created_at
FROM source_db.recommendation r
JOIN target_db.users u ON r.user_id = u.id
JOIN target_db.products p ON r.product_id = p.id;