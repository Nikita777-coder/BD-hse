-- 1)
select title, author from "Book";

-- 2)
select * from "Book" where pages_num = (select max(pages_num) from "Book");

-- 3)
select distinct b.author from "Book" b
where (select count(*) from "Book" where b.author = author) > 5;

-- 4)
select * from "Book" b
where b.pages_num > 2 * (select avg(pages_num) from "Book");

-- 5)
select * from "Category"
where parent_cat != 0;

-- 6)
select author from "Book"
group by author
having count(*) = (select max(coun) from
                                        (select count(*) as coun from "Book"
                                                                 GROUP BY author) y);

-- 7)
SELECT r.reader_nr
FROM "Borrowing" r
JOIN library."Copy" C on C.id = r.book_copy
JOIN "Book" b ON c.book_isbn = b.isbn
WHERE b.author = 'Марк Твен'
GROUP BY r.reader_nr
HAVING COUNT(DISTINCT b.isbn) = (SELECT COUNT(*)
                                    FROM "Book"
                                    WHERE author = 'Марк Твен');

-- 8)
select book_isbn from "Copy" c
group by book_isbn
having count(c.copy_number) > 1;

-- 9)
select * from "Book"
order by year
limit 10;

-- 10), skip
