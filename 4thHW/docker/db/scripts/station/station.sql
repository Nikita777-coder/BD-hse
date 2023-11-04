CREATE TABLE IF NOT EXISTS "Station" (
  "name" varchar PRIMARY KEY,
  "city_id" integer,
  "tracks" integer
);

CREATE TABLE IF NOT EXISTS "City" (
  "id" integer PRIMARY KEY,
  "region" varchar,
  "name" varchar
);

CREATE TABLE if not exists "Train" (
  "train_nr" integer PRIMARY KEY,
  "length" integer,
  "start_station_name" varchar,
  "end_station_name" varchar
);

CREATE TABLE if not exists "Connection" (
  "id" integer PRIMARY KEY,
  "from_station" varchar,
  "to_station" varchar,
  "train_nr" integer,
  "departure" timestamp,
  "arrival" timestamp
);

ALTER TABLE "Station" ADD FOREIGN KEY ("city_id") REFERENCES "City" ("id");

ALTER TABLE "Connection" ADD FOREIGN KEY ("from_station") REFERENCES "Station" ("name");

ALTER TABLE "Connection" ADD FOREIGN KEY ("to_station") REFERENCES "Station" ("name");

ALTER TABLE "Connection" ADD FOREIGN KEY ("train_nr") REFERENCES "Train" ("train_nr");
