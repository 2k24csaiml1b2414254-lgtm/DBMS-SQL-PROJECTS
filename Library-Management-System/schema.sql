-- ============================================
-- Library Management System Database Schema
-- ============================================

-- Create Database
CREATE DATABASE LibraryDB;

-- Use Database
USE LibraryDB;

-- ============================================
-- Table: Authors
-- Stores information about book authors
-- ============================================

CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL
);

-- ============================================
-- Table: Books
-- Stores information about books
-- ============================================

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    author_id INT,
    category VARCHAR(100),
    quantity INT,

    -- Foreign Key
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- ============================================
-- Table: Members
-- Stores library member details
-- ============================================

CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    member_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- ============================================
-- Table: Issue
-- Stores issued books
-- ============================================

CREATE TABLE Issue (
    issue_id INT PRIMARY KEY,
    book_id INT,
    member_id INT,
    issue_date DATE,
    return_date DATE,

    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);
