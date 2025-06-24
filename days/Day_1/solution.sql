/*Select BorrowerName from the Borrowers table.
Uses a LEFT JOIN to join the Books table by BookID to include all borrowers, even if they haven't checked out a book.
Aggregates the book names (BookName) into a comma-separated list (string_agg) sorted alphabetically (ORDER BY Books.BookName).
Groups the results by borrower name (GROUP BY BorrowerName).
Sorts the output by borrower name in ascending order (ORDER BY Borrowers.BorrowerName).*/

SELECT
	Borrowers.BorrowerName,
    string_agg(Books.BookName, ', ' ORDER BY Books.BookName) AS list_books
FROM Borrowers
LEFT JOIN Books ON Books.BookID=Borrowers.BookID
GROUP BY BorrowerName
ORDER BY Borrowers.BorrowerName;
