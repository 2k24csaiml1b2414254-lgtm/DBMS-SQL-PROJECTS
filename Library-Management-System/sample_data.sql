-- ============================================
-- Insert Sample Data into Tables
-- ============================================

-- Authors
INSERT INTO Authors VALUES
(1,'J.K. Rowling'),
(2,'Chetan Bhagat'),
(3,'R.K. Narayan');

-- Books
INSERT INTO Books VALUES
(101,'Harry Potter',1,'Fantasy',5),
(102,'Five Point Someone',2,'Education',3),
(103,'Malgudi Days',3,'Fiction',4);

-- Members
INSERT INTO Members VALUES
(201,'Rahul Sharma','rahul@email.com','9876543210'),
(202,'Priya Singh','priya@email.com','9876543211'),
(203,'Amit Verma','amit@email.com','9876543212');

-- Issue Table
INSERT INTO Issue VALUES
(1,101,201,'2025-03-01','2025-03-10'),
(2,102,202,'2025-03-05','2025-03-15');
