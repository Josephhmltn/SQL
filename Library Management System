--Creating Tables for the Library Database Management System Practice--

CREATE TABLE publisher (
    publisher_PublisherName VARCHAR(100) NOT NULL,
    publisher_PublisherAddress VARCHAR(200) NOT NULL,
    publisher_PublisherPhone VARCHAR(50) NOT NULL,
    PRIMARY KEY (publisher_PublisherName)
);

CREATE TABLE book (
    book_BookID INT NOT NULL AUTO_INCREMENT,
    book_Title VARCHAR(100) NOT NULL,
    book_PublisherName VARCHAR(100) NOT NULL,
    PRIMARY KEY (book_BookID),
    CONSTRAINT FK_publisher_name1 FOREIGN KEY (book_PublisherName) REFERENCES publisher(publisher_PublisherName) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE library_branch (
    library_branch_BranchID INT NOT NULL AUTO_INCREMENT,
    library_branch_BranchName VARCHAR(100) NOT NULL,
    library_branch_BranchAddress VARCHAR(200) NOT NULL,
    PRIMARY KEY (library_branch_BranchID)
);

CREATE TABLE borrower (
    borrower_CardNo INT NOT NULL AUTO_INCREMENT,
    borrower_BorrowerName VARCHAR(100) NOT NULL,
    borrower_BorrowerAddress VARCHAR(200) NOT NULL,
    borrower_BorrowerPhone VARCHAR(50) NOT NULL,
    PRIMARY KEY (borrower_CardNo)
);

--For practice, set borrowers card numbers to begin at 100--

ALTER TABLE borrower AUTO_INCREMENT=100;

CREATE TABLE book_loans (
    book_loans_LoansID INT NOT NULL AUTO_INCREMENT,
    book_loans_BookID INT NOT NULL,
    book_loans_BranchID INT NOT NULL,
    book_loans_CardNo INT NOT NULL,
    book_loans_DateOut VARCHAR(50) NOT NULL,
    book_loans_DueDate VARCHAR(50) NOT NULL,
    PRIMARY KEY (book_loans_LoansID),
    CONSTRAINT FK_book_id1 FOREIGN KEY (book_loans_BookID) REFERENCES book(book_BookID) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT FK_branch_id1 FOREIGN KEY (book_loans_BranchID) REFERENCES library_branch(library_branch_BranchID) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT FK_cardno FOREIGN KEY (book_loans_CardNo) REFERENCES borrower(borrower_CardNo) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE book_copies (
    book_copies_CopiesID INT NOT NULL AUTO_INCREMENT,
    book_copies_BookID INT NOT NULL,
    book_copies_BranchID INT NOT NULL,
    book_copies_No_Of_Copies INT NOT NULL,
    PRIMARY KEY (book_copies_CopiesID),
    CONSTRAINT FK_book_id2 FOREIGN KEY (book_copies_BookID) REFERENCES book(book_BookID) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT FK_branch_id2 FOREIGN KEY (book_copies_BranchID) REFERENCES library_branch(library_branch_BranchID) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE book_authors (
    book_authors_AuthorID INT NOT NULL AUTO_INCREMENT,
    book_authors_BookID INT NOT NULL,
    book_authors_AuthorName VARCHAR(50) NOT NULL,
    PRIMARY KEY (book_authors_AuthorID),
    CONSTRAINT FK_book_id3 FOREIGN KEY (book_authors_BookID) REFERENCES book(book_BookID) ON UPDATE CASCADE ON DELETE CASCADE
);

--Populating tables with generic data for practice--

INSERT INTO publisher
    (publisher_PublisherName, publisher_PublisherAddress, publisher_PublisherPhone)
    VALUES
    ('HarperCollins Publishers, Inc','10 East 53rd Street, New York, NY 10022-5299','212-207-7528'),
    ('Avon Books','195 Broadway, New York, NY 10007','Not Available'),
    ('Scholastic Press','557 Broadway, New York, NY 10012','Not Available'),
    ('Simon Pulse','1230 Avenue of the Americans, New York, NY 10020','Not Available'),
    ('Henry Holt and Company, LLC','175 Fifth Aveneue, New York, NY 10010','Not Available'),
    ('The Berkley Publishing Group','375 Hudson Street, New York, NY 10014','Not Available'),
    ('William Morrow','195 Broadway, New York, NY 10007','Not Available'),
    ('Random House Business','20 Vauxhall Bridge Road, London SW1V 2SA','Not Available'),
    ('Portable Press','10350 Barnes Canyon Road, Suite 100, San Diego, CA 92121','Not Available'),
    ('Random House, Inc.','Not Available','Not Available'),
    ('Minotaur Books','120 Broadway, New York, NY 10271','Not Available')
;

SELECT *
FROM publisher

INSERT INTO book
    (book_Title, book_PublisherName)
    VALUES
    ('The Deepest of Serets','Minotaur Books'),
    ("Trickster's Queen",'Random House, Inc.'),
    ('Strange History','Portable Press'),
    ('Never Split The Difference','Random House Business'),
    ('Freakonomics','William Morrow'),
    ('Bone Crossed','The Berkley Publishing Group'),
    ('Six of Crows','Henry Holt and Company, LLC'),
    ('Sometimes We Tell The Truth','Simon Pulse'),
    ("The Sin Eater's Daughter",'Scholastic Press'),
    ('Burn For Me','Avon Books'),
    ('The Good, The Bad, and The Undead','HarperCollins Publishers, Inc'),
    ('Show Me How','HarperCollins Publishers, Inc'),
    ('Shades of Wicked','HarperCollins Publishers, Inc'),
    ('Halfway to the Grave','Avon Books')
;

SELECT *
FROM book

INSERT INTO library_branch
    (library_branch_BranchName, library_branch_BranchAddress)
    VALUES
    ('Westchester Public Library, Thomas Branch - Main','200 West Indiana Avenue, Chesterton, IN 46304'),
    ('Westchester Public Library, Hageman Branch','100 Francis Street, Porter, IN 46304'),
    ('Cape May County Library Lower Cape Branch','2600 Bayshore Road, Villas, NJ 08251'),
    ('Cape May County Library Cape May Court House','30 Mechanic Street, Cape May Court House, NJ 08210'),
    ('Sacramento Public Library, Fair Oaks','11601 Fair Oaks Blvd, Fair Oaks, CA 95628'),
    ('Sacramento Public Library, Orangevale','8820 Greenback Lane, Suite L, Orangevale, CA 95662')
;

SELECT *
FROM library_branch

INSERT INTO borrower
    (borrower_BorrowerName, borrower_BorrowerAddress, borrower_BorrowerPhone)
    VALUES
    ('Joe Hamilton','1111 East West Street, Chesterton, IN 46304','123-456-7890'),
    ('Sionna Hamilton','1111 East West Street, Chesteron, IN 46304','231-564-8790'),
    ('Steve Harper','9854 North South Street, Cape May Court House, NJ 08210','321-654-9870'),
    ('Rodney Miller','0123 West North Road, Fair Oaks, CA 95628','221-554-8870'),
    ('Wayne Smith','773 Superfast Blvd, Villas, NJ 08251','223-556-8890'),
    ('Fred Hammond','93 French Toast Way, Orangevale, CA 95662','331-664-9970')
;

SELECT *
FROM borrower

INSERT INTO book_loans
    (book_loans_BookID, book_loans_BranchID, book_loans_CardNo, book_loans_DateOut, book_loans_DueDate)
    VALUES
    ('51','1','100','1/2/23','2/2/23'),
    ('52','1','100','1/2/23','2/2/23'),
    ('43','1','102','1/3/23','2/3/23'),
    ('44','1','102','1/3/23','2/3/23'),
    ('45','1','102','1/3/23','2/3/23'),
    ('46','1','103','1/3/23','2/3/23'),
    ('47','1','101','1/3/23','2/3/23'),
    ('48','1','101','1/7/23','2/7/23'),
    ('49','1','104','1/7/23','2/7/23'),
    ('50','1','104','1/7/23','2/7/23'),
    ('51','2','100','2/7/23','2/7/23'),
    ('52','2','101','2/7/23','2/7/23'),
    ('51','2','101','2/9/23','3/9/23'),
    ('52','2','102','2/9/23','3/9/23'),
    ('43','2','102','1/9/23','2/9/23'),
    ('44','2','103','1/9/23','2/9/23'),
    ('45','2','103','1/12/23','2/12/23'),
    ('46','2','103','1/12/23','2/12/23'),
    ('53','2','104','1/12/23','2/12/23'),
    ('54','2','104','1/12/23','2/12/23'),
    ('47','2','104','1/22/23','2/22/23'),
    ('48','2','104','1/22/23','2/22/23'),
    ('49','2','105','2/22/23','2/22/23'),
    ('50','2','105','2/22/23','2/22/23'),
    ('51','3','105','2/22/23','3/22/23'),
    ('52','3','105','2/22/23','3/22/23'),
    ('43','3','102','1/14/23','2/14/23'),
    ('44','3','103','1/14/23','2/14/23'),
    ('45','3','104','1/17/23','2/17/23'),
    ('46','3','102','1/20/23','2/20/23'),
    ('47','3','101','1/30/23','2/30/23'),
    ('48','3','100','1/31/23','2/31/23'),
    ('49','3','101','1/28/23','2/28/23'),
    ('50','3','104','2/23/23','3/23/23'),
    ('51','3','103','2/22/23','3/22/23'),
    ('52','4','104','2/20/23','3/20/23'),
    ('53','4','105','1/3/23','2/3/23'),
    ('54','4','102','1/7/23','2/7/23'),
    ('51','4','103','1/8/23','2/8/23'),
    ('52','4','101','1/1/23','2/1/23'),
    ('53','4','100','1/4/23','2/4/23'),
    ('54','4','103','2/25/23','3/25/23'),
    ('55','4','104','1/28/23','2/28/23'),
    ('56','4','105','1/20/23','2/20/23'),
    ('47','4','102','2/3/23','3/3/23'),
    ('48','4','103','1/6/23','2/6/23'),
    ('49','4','104','2/8/23','2/8/23'),
    ('50','4','101','1/10/23','2/10/23'),
    ('51','4','102','1/22/23','2/22/23'),
    ('52','5','103','1/25/23','2/25/23'),
    ('53','5','100','2/28/23','3/28/23'),
    ('54','5','101','1/22/23','2/22/23'),
    ('51','5','100','1/12/23','2/12/23'),
    ('52','5','100','1/28/23','2/28/23'),
    ('53','5','105','2/29/23','2/29/23'),
    ('54','5','104','1/22/23','2/22/23'),
    ('55','5','102','1/25/23','2/25/23'),
    ('56','5','101','1/18/23','2/18/23'),
    ('47','5','100','1/16/23','2/16/23'),
    ('48','5','102','2/13/23','3/13/23'),
    ('49','5','101','1/1/23','2/1/23'),
    ('50','5','104','2/29/23','3/29/23')
;

SELECT *
FROM book_loans

/*Forgot I had 6 borrowers, so another insert into the same table*/

INSERT INTO book_loans
    (book_loans_BookID, book_loans_BranchID, book_loans_CardNo, book_loans_DateOut, book_loans_DueDate)
    VALUES
    ('51','6','100','1/2/23','2/2/23'),
    ('52','6','105','1/2/23','2/2/23'),
    ('43','6','105','1/3/23','2/3/23'),
    ('44','6','102','1/3/23','2/3/23'),
    ('45','6','105','1/3/23','2/3/23'),
    ('46','6','103','1/3/23','2/3/23'),
    ('47','6','101','1/3/23','2/3/23'),
    ('48','6','103','1/7/23','2/7/23'),
    ('49','6','104','1/7/23','2/7/23'),
    ('50','6','104','1/7/23','2/7/23'),
    ('56','6','100','2/7/23','2/7/23'),
    ('52','6','103','2/7/23','2/7/23'),
    ('55','6','101','2/9/23','3/9/23'),
    ('54','6','102','2/9/23','3/9/23')
;

INSERT INTO book_copies
    (book_copies_BookID, book_copies_BranchID, book_copies_No_Of_Copies)
    VALUES
    ('43','1','5'),
    ('44','1','5'),
    ('45','1','5'),
    ('46','1','5'),
    ('47','1','5'),
    ('48','1','5'),
    ('49','1','5'),
    ('50','1','5'),
    ('51','1','5'),
    ('52','1','5'),
    ('53','1','5'),
    ('54','1','5'),
    ('55','1','5'),
    ('56','1','5'),
    ('43','2','5'),
    ('44','2','5'),
    ('45','2','5'),
    ('46','2','5'),
    ('47','2','5'),
    ('48','2','5'),
    ('49','2','5'),
    ('50','2','5'),
    ('51','2','5'),
    ('52','2','5'),
    ('53','2','5'),
    ('54','2','5'),
    ('55','2','5'),
    ('56','2','5'),
    ('43','3','5'),
    ('44','3','5'),
    ('45','3','5'),
    ('46','3','5'),
    ('47','3','5'),
    ('48','3','5'),
    ('49','3','5'),
    ('50','3','5'),
    ('51','3','5'),
    ('52','3','5'),
    ('53','3','5'),
    ('54','3','5'),
    ('55','3','5'),
    ('56','3','5'),
    ('43','4','5'),
    ('44','4','5'),
    ('45','4','5'),
    ('46','4','5'),
    ('47','4','5'),
    ('48','4','5'),
    ('49','4','5'),
    ('50','4','5'),
    ('51','4','5'),
    ('52','4','5'),
    ('53','4','5'),
    ('54','4','5'),
    ('55','4','5'),
    ('56','4','5'),
    ('43','5','5'),
    ('44','5','5'),
    ('45','5','5'),
    ('46','5','5'),
    ('47','5','5'),
    ('48','5','5'),
    ('49','5','5'),
    ('50','5','5'),
    ('51','5','5'),
    ('52','5','5'),
    ('53','5','5'),
    ('54','5','5'),
    ('55','5','5'),
    ('56','5','5'),
    ('43','6','5'),
    ('44','6','5'),
    ('45','6','5'),
    ('46','6','5'),
    ('47','6','5'),
    ('48','6','5'),
    ('49','6','5'),
    ('50','6','5'),
    ('51','6','5'),
    ('52','6','5'),
    ('53','6','5'),
    ('54','6','5'),
    ('55','6','5'),
    ('56','6','5')
;

SELECT *
FROM book_copies

INSERT INTO book_authors
    (book_authors_BookID, book_authors_AuthorName)
    VALUES
    ('56','Jeaniene Frost'),
    ('55','Jeaniene Frost'),
    ('54','Derek Fagerstrom, Lauren Smith & Show Me Team'),
    ('53','Kim Harrison'),
    ('52','Ilona Andrews'),
    ('51','Melinda Salisbury'),
    ('50','Kim Zarins'),
    ('49','Leigh Bardugo'),
    ('48','Patricia Briggs'),
    ('47','Steven D. Levitt & Stephen J. Dubner'),
    ('46','Chris Voss with Tahl Raz'),
    ('45','Gordon Javna et. all'),
    ('44','Tamora Pierce'),
    ('43','Kelley Armstrong')
;

SELECT *
FROM book_authors

/* Practice Data Pulls
# of copies of the book "Freakonomics" owned by the Sacramento Public Library, Fair Oaks*/

SELECT  copies.book_copies_BranchID AS "Branch ID",
        branch.library_branch_BranchName AS "Branch Name",
        copies.book_copies_No_Of_Copies AS "Number of Copies",
        book.book_Title AS "Book Title"
FROM    book_copies as copies
        INNER JOIN book ON copies.book_copies_BookID = book.book_BookID
        INNER JOIN library_branch AS branch ON book_copies_BranchID = branch.library_branch_BranchID
WHERE   book.book_Title = 'Freakonomics' AND
        branch.library_branch_BranchName = 'Sacramento Public Library, Fair Oaks';

/*# of copies of the book "Freakonomics" owned by all libraries*/

SELECT  copies.book_copies_BranchID AS "Branch ID",
        branch.library_branch_BranchName AS "Branch Name",
        copies.book_copies_No_Of_Copies AS "Number of Copies",
        book.book_Title AS "Book Title"
FROM    book_copies as copies
        INNER JOIN book ON copies.book_copies_BookID = book.book_BookID
        INNER JOIN library_branch AS branch ON book_copies_BranchID = branch.library_branch_BranchID
WHERE   book.book_Title = 'Freakonomics';

/*Pull the names of all borrowers with no books checked out*/

SELECT  borrower_BorrowerName
FROM    borrower
WHERE   NOT EXISTS
        (SELECT *
         FROM book_loans
         WHERE book_loans_CardNo = borrower_CardNo);

/*How many books are loaned out for each library?*/

SELECT  branch.library_branch_BranchName AS "Branch Name",
        COUNT(loans.book_loans_BranchID) AS "Total Loans"
FROM    book_loans AS loans
        INNER JOIN library_branch AS branch ON loans.book_loans_BranchID = branch.library_branch_BranchID
GROUP BY library_branch_BranchName;

/*Pull borrower name, address, and number of books checked out for all borrowers with more than 12 books checked out*/

SELECT  borrower.borrower_BorrowerName AS "Borrower Name",
        borrower.borrower_BorrowerAddress AS "Borrower Address",
        COUNT(borrower.borrower_BorrowerName) AS "Books Checked Out"
FROM    book_loans AS loans
        INNER JOIN borrower ON loans.book_loans_CardNo = borrower.borrower_CardNo
GROUP BY borrower.borrower_BorrowerName, borrower.borrower_BorrowerAddress
HAVING  COUNT(borrower.borrower_BorrowerName) >= 12;

/*For each book authored by 'Jeaniene Frost', pull the title and numbers of copies owned by each branch*/

SELECT  branch.library_branch_BranchName AS "Branch Name",
        book.book_Title AS "Title",
        copies.book_copies_No_Of_Copies AS "Number of Copies"
FROM    book_authors AS author
        INNER JOIN book ON author.book_authors_BookID = book.book_BookID
        INNER JOIN book_copies AS copies ON copies.book_copies_BookID = book.book_BookID
        INNER JOIN library_branch AS branch ON copies.book_copies_BranchID = branch.library_branch_BranchID
WHERE   author.book_authors_AuthorName = "Jeaniene Frost";
