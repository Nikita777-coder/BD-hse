-- а)
SELECT last_name FROM yaglo_215.library."Reader" WHERE address LIKE '%Москва%';

-- б)
SELECT author, title FROM yaglo_215.library."Book" b
    JOIN yaglo_215.library."Copy" BC on b.isbn = BC.book_isbn
    JOIN yaglo_215.library."Borrowing" bor on BC.id = bor.book_copy
    JOIN yaglo_215.library."Reader" r on r.id = bor.reader_nr
    WHERE r.first_name LIKE 'Иван' AND r.last_name LIKE 'Иванов';

-- в)
SELECT isbn FROM yaglo_215.library."Book" b
    JOIN yaglo_215.library."BookCategory" BC on b.isbn = BC.book_isbn
    JOIN yaglo_215.library."Category" C on C.id = BC.category_id
    WHERE name = 'Горы' AND NOT b.isbn IN
    (SELECT isbn FROM yaglo_215.library."Book" book
                 JOIN yaglo_215.library."BookCategory" BC2 on book.isbn = BC2.book_isbn
                 JOIN yaglo_215.library."Category" C2 on C2.id = BC2.category_id
                 WHERE name = 'Путешествие');

-- г)
SELECT last_name, first_name FROM yaglo_215.library."Reader" r
    JOIN yaglo_215.library."Borrowing" B on r.id = B.reader_nr
    WHERE B.return_date not like null;

-- д)
SELECT last_name, first_name FROM yaglo_215.library."Reader" r
    JOIN yaglo_215.library."Borrowing" bor on r.id = bor.reader_nr
    JOIN yaglo_215.library."Copy" cop on bor.book_copy = cop.id
    WHERE cop.book_isbn
              IN (SELECT book_isbn FROM yaglo_215.library."Copy" cop1
                    JOIN yaglo_215.library."Borrowing" bor1
                        on cop1.id = bor1.book_copy
                    JOIN yaglo_215.library."Reader" r1
                        on bor1.reader_nr = r1.id
                    WHERE r1.first_name = 'Иван' AND r1.last_name = 'Иванов')
    AND (r.first_name not like 'Иван' OR r.last_name not like 'Иванов');