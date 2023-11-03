DELETE FROM yaglo_215.library."Borrowing";
DELETE FROM yaglo_215.library."Copy";
DELETE FROM yaglo_215.library."BookCategory";
DELETE FROM yaglo_215.library."Category";
DELETE FROM yaglo_215.library."Book";
DELETE FROM yaglo_215.library."Reader";
DELETE FROM yaglo_215.library."Publisher";

INSERT INTO yaglo_215.library."Reader" ("id", "last_name", "first_name", "address", "birth_date") VALUES
(1, 'Иванов', 'Иван', 'ул. Пушкина, 1, Москва', '1990-01-01'),
(2, 'Смирнова', 'Екатерина', 'пр. Ленина, 10, Санкт-Петербург', '1985-05-10'),
(3, 'Кузнецов', 'Сергей', 'ул. Гагарина, 5, Екатеринбург', '1992-09-15'),
(4, 'Попов', 'Михаил', 'ул. Кирова, 15, Новосибирск', '1988-03-20'),
(5, 'Васильева', 'Ольга', 'пр. Октября, 20, Самара', '1995-07-25'),
(6, 'Петров', 'Андрей', 'ул. Красноармейская, 30, Волгоград', '1991-02-28'),
(7, 'Соколова', 'Татьяна', 'ул. Комсомольская, 25, Ростов-на-Дону', '1987-06-05'),
(8, 'Михайлов', 'Дмитрий', 'пр. Мира, 40, Казань', '1994-10-10'),
(9, 'Новикова', 'Анастасия', 'ул. Ленинградская, 8, Нижний Новгород', '1993-04-15'),
(10, 'Федоров', 'Александр', 'пр. Советский, 12, Челябинск', '1989-08-20'),
(11, 'Морозова', 'Елена', 'ул. Коммунистическая, 3, Омск', '1996-12-25'),
(12, 'Волков', 'Иван', 'пр. Ленинградский, 7, Саратов', '1992-01-30'),
(13, 'Алексеева', 'Наталья', 'ул. Победы, 2, Красноярск', '1986-05-05'),
(14, 'Лебедев', 'Максим', 'ул. Горького, 9, Владивосток', '1990-09-10'),
(15, 'Семенова', 'Анастасия', 'пр. Революции, 14, Иркутск', '1988-02-15'),
(16, 'Егоров', 'Сергей', 'ул. Фрунзе, 18, Ярославль', '1995-06-20'),
(17, 'Павлова', 'Александра', 'ул. Пролетарская, 6, Тюмень', '1991-10-25'),
(18, 'Козлов', 'Игорь', 'ул. Жуковского, 23, Уфа', '1987-03-30'),
(19, 'Никитина', 'Людмила', 'ул. Майская, 11, Краснодар', '1994-08-04'),
(20, 'Андреев', 'Максим', 'ул. Советская, 35, Сочи', '1993-12-09'),
(21, 'Громов', 'Артем', 'ул. Волкова, 27, Воронеж', '1989-04-14'),
(22, 'Петухова', 'Екатерина', 'ул. Мира, 16, Москва', '1996-07-19'),
(23, 'Яковлев', 'Денис', 'пр. Кирова, 22, Москва', '1992-11-24'),
(24, 'Белова', 'Ольга', 'ул. Московская, 4, Якутск', '1991-03-29'),
(25, 'Антонов', 'Андрей', 'ул. Лесная, 19, Томск', '1987-08-03');

INSERT INTO yaglo_215.library."Publisher" ("id", "pub_name", "pub_address") VALUES
(1, 'Издательство 1', 'ул. Пушкина, 1, Москва'),
(2, 'Издательство 2', 'пр. Ленина, 10, Санкт-Петербург'),
(3, 'Издательство 3', 'ул. Гагарина, 5, Екатеринбург'),
(4, 'Издательство 4', 'ул. Кирова, 15, Новосибирск'),
(5, 'Издательство 5', 'пр. Октября, 20, Самара'),
(6, 'Издательство 6', 'ул. Красноармейская, 30, Волгоград'),
(7, 'Издательство 7', 'ул. Комсомольская, 25, Ростов-на-Дону'),
(8, 'Издательство 8', 'пр. Мира, 40, Казань'),
(9, 'Издательство 9', 'ул. Ленинградская, 8, Нижний Новгород'),
(10, 'Издательство 10', 'пр. Советский, 12, Челябинск'),
(11, 'Издательство 11', 'ул. Коммунистическая, 3, Омск'),
(12, 'Издательство 12', 'пр. Ленинградский, 7, Саратов'),
(13, 'Издательство 13', 'ул. Победы, 2, Красноярск'),
(14, 'Издательство 14', 'ул. Горького, 9, Владивосток'),
(15, 'Издательство 15', 'пр. Революции, 14, Иркутск'),
(16, 'Издательство 16', 'ул. Фрунзе, 18, Ярославль'),
(17, 'Издательство 17', 'ул. Пролетарская, 6, Тюмень'),
(18, 'Издательство 18', 'ул. Жуковского, 23, Уфа'),
(19, 'Издательство 19', 'ул. Майская, 11, Краснодар'),
(20, 'Издательство 20', 'ул. Советская, 35, Сочи'),
(21, 'Издательство 21', 'ул. Волкова, 27, Воронеж'),
(22, 'Издательство 22', 'ул. Мира, 16, Пермь'),
(23, 'Издательство 23', 'пр. Кирова, 22, Оренбург'),
(24, 'Издательство 24', 'ул. Московская, 4, Якутск'),
(25, 'Издательство 25', 'ул. Лесная, 19, Томск');

INSERT INTO yaglo_215.library."Book" ("isbn", "title", "author", "pages_num", "year", "pub_id") VALUES
(1, 'Мастер и Маргарита', 'Михаил Булгаков', 384, 1967, 1),
(2, 'Анна Каренина', 'Лев Толстой', 864, 1877, 2),
(3, 'Преступление и наказание', 'Фёдор Достоевский', 672, 1866, 3),
(4, 'Война и мир', 'Лев Толстой', 1376, 1869, 4),
(5, 'Евгений Онегин', 'Александр Пушкин', 320, 1833, 2),
(6, 'Герой нашего времени', 'Михаил Лермонтов', 256, 1840, 6),
(7, 'Отцы и дети', 'Иван Тургенев', 352, 1862, 7),
(8, 'Братья Карамазовы', 'Фёдор Достоевский', 960, 1880, 8),
(9, 'Доктор Живаго', 'Борис Пастернак', 768, 1957, 9),
(10, 'Идиот', 'Фёдор Достоевский', 640, 1869, 10),
(11, 'Над пропастью во ржи', 'Джером Сэлинджер', 432, 1951, 11),
(12, '12 стульев', 'Илья Ильф, Евгений Петров', 496, 1928, 12),
(13, 'Тихий Дон', 'Михаил Шолохов', 800, 1940, 13),
(14, 'Мёртвые души', 'Николай Гоголь', 384, 1842, 1),
(15, 'Собачье сердце', 'Михаил Булгаков', 224, 1925, 15),
(16, 'Стихотворения и поэмы', 'Александр Пушкин', 528, 1820, 16),
(17, 'Убить пересмешника', 'Харпер Ли', 416, 1960, 17),
(18, 'Дон Кихот', 'Мигель де Сервантес', 816, 1605, 8),
(19, 'Ревизор', 'Николай Гоголь', 256, 1836, 19),
(20, 'Маленький принц', 'Антуан де Сент-Экзюпери', 128, 1943, 20),
(21, '1984', 'Джордж Оруэлл', 320, 1949, 2),
(22, 'Сказки', 'Ганс Христиан Андерсен', 352, 1835, 22),
(23, 'О дивный новый мир', 'Олдос Хаксли', 288, 1932, 23),
(24, 'Пикник на обочине', 'Аркадий и Борис Стругацкие', 216, 1971, 24),
(25, 'Отверженные', 'Виктор Гюго', 1528, 1862, 25);

INSERT INTO yaglo_215.library."Category" (id, name) VALUES
(1, 'Путешествие'),
(2, 'Драма'),
(3, 'Ужасы'),
(4, 'Фантастика'),
(5, 'Боевик'),
(6, 'Мелодрама'),
(7, 'Триллер'),
(8, 'Горы'),
(9, 'Документальный'),
(10, 'Приключения'),
(11, 'Криминал'),
(12, 'Исторический'),
(13, 'Фэнтези'),
(14, 'Вестерн'),
(15, 'Мультфильм'),
(16, 'Семейный'),
(17, 'Военный'),
(18, 'Романтика'),
(19, 'Детектив'),
(20, 'Комикс'),
(21, 'Фильм-нуар'),
(22, 'Биография'),
(23, 'Музыка'),
(24, 'Спорт'),
(25, 'Научно-популярный');

INSERT INTO yaglo_215.library."BookCategory" VALUES
(1, 1, 1),
(2, 4, 1),
(3, 8, 1),
(4, 3, 2),
(5, 1, 4),
(6, 8, 4),
(7, 12, 20),
(8, 11, 19),
(9, 8, 3),
(10, 2, 3),
(11, 8, 9);

INSERT INTO yaglo_215.library."Copy" VALUES
(1, 1, 2, 3),
(2, 2, 2, 3),
(3, 3, 2, 4),
(4, 1, 3, 5),
(5, 1, 6, 7),
(6, 1, 7, 8),
(7, 2, 7, 6);

INSERT INTO yaglo_215.library."Borrowing" VALUES
(1, 1, 1, null),
(2, 1, 6, '2021-02-17'),
(3, 12, 7, null),
(4, 10, 4, '2023-10-28'),
(6, 25, 2, null);