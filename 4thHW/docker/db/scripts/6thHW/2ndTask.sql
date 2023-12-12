-- 1)
INSERT INTO "Book" (isbn, title, author, pages_num, year, pub_id) VALUES
(123456, 'wrke', 'kdfdlf', 1234, 1999, 12);

INSERT INTO "Copy" (id, copy_number, book_isbn, shelf_position) VALUES
(8, 1, 123456, 232),
(9, 2, 123456, 233),
(10, 3, 123456, 234),
(11, 4, 123456, 235),
(12, 5, 123456, 236);

INSERT INTO "Reader" (id, last_name, first_name, address, birth_date) VALUES
(50, 'Петровым', 'Василеем', 'wslfdksjf 2 3c skdclsf', '08.12.1990');

INSERT INTO "Borrowing" (id, reader_nr, book_copy, return_date) VALUES
(100, 50, 11, '2023:12:31');

-- 2)
DELETE from "Book" where year > 2000;

-- 3)
update "Borrowing"
SET return_date = return_date + 30
where return_date >= '2016-01-01';
