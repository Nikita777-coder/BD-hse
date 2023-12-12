CREATE TABLE IF NOT EXISTS "Reader" (
  "id" integer PRIMARY KEY,
  "last_name" varchar,
  "first_name" varchar,
  "address" varchar,
  "birth_date" date
);

CREATE TABLE IF NOT EXISTS "Book" (
  "isbn" integer PRIMARY KEY,
  "title" varchar,
  "author" varchar,
  "pages_num" integer,
  "year" integer,
  "pub_id" integer
);

CREATE TABLE IF NOT EXISTS "Publisher" (
  "id" integer PRIMARY KEY,
  "pub_name" varchar,
  "pub_address" varchar
);

CREATE TABLE IF NOT EXISTS "Category" (
  "id" integer PRIMARY KEY,
  "name" varchar,
  "parent_cat" integer
);

CREATE TABLE IF NOT EXISTS "Copy" (
  "id" integer primary key,
  "copy_number" integer,
  "book_isbn" integer,
  "shelf_position" integer
);

CREATE TABLE IF NOT EXISTS "Borrowing" (
  "id" integer PRIMARY KEY,
  "reader_nr" integer,
  "book_copy" integer,
  "return_date" date
);

CREATE TABLE IF NOT EXISTS "BookCategory" (
  "id" integer PRIMARY KEY,
  "category_id" integer,
  "book_isbn" integer
);

ALTER TABLE "Book" ADD FOREIGN KEY ("pub_id") REFERENCES "Publisher" ("id");

ALTER TABLE "Copy" ADD FOREIGN KEY ("book_isbn") REFERENCES "Book" ("isbn");

ALTER TABLE "Borrowing" ADD FOREIGN KEY ("reader_nr") REFERENCES "Reader" ("id");

ALTER TABLE "Borrowing" ADD FOREIGN KEY ("book_copy") REFERENCES "Copy" ("id");

ALTER TABLE "BookCategory" ADD FOREIGN KEY ("category_id") REFERENCES "Category" ("id");

ALTER TABLE "BookCategory" ADD FOREIGN KEY ("book_isbn") REFERENCES "Book" ("isbn");
