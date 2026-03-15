-- ============================================
-- Important Queries for Library System
-- ============================================

-- 1. Show all books
SELECT * FROM Books;

-- 2. Show all members
SELECT * FROM Members;

-- 3. Show issued books with member name
SELECT Members.member_name, Books.title, Issue.issue_date
FROM Issue
JOIN Members ON Issue.member_id = Members.member_id
JOIN Books ON Issue.book_id = Books.book_id;

-- 4. Count total books
SELECT COUNT(*) AS total_books FROM Books;

-- 5. Find books by category
SELECT * FROM Books
WHERE category = 'Fantasy';

-- 6. Show books with authors
SELECT Books.title, Authors.author_name
FROM Books
JOIN Authors ON Books.author_id = Authors.author_id;
