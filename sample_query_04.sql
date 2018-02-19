SELECT tmp.book_category, ROUND(tmp.revenue, 2) AS revenue
FROM (
  SELECT books.category AS book_category, SUM(books.price * transactions.quantity) AS revenue
  FROM books
  JOIN transactions ON (
    transactions.book_id = books.id
  )
  JOIN customers ON (
    transactions.customer_id = customers.id
    AND customers.state IN ('WA', 'CA', 'NY')
  )
  GROUP BY books.category
) tmp
ORDER BY revenue DESC LIMIT 10;
