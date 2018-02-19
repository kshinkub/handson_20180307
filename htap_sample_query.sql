SELECT b.category, sum(b.price)
FROM   books b, sample_transactions t
WHERE  t.book_id = b.id
GROUP BY b.category;
