
SELECT
	Borrowers.BorrowerName,
    string_agg(Books.BookName, ', ' ORDER BY Books.BookName) AS list_books
FROM Borrowers
LEFT JOIN Books ON Books.BookID=Borrowers.BookID
GROUP BY BorrowerName
ORDER BY Borrowers.BorrowerName;
