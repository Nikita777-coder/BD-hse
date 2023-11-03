CREATE TABLE "StationPersonell" (
  "pers_nr" int PRIMARY KEY,
  "name" varchar,
  "station_id" int
);

CREATE TABLE "Caregiver" (
  "station_personell_id" integer PRIMARY KEY,
  "qualification" varchar
);

CREATE TABLE "Doctor" (
  "station_personell_id" integer PRIMARY KEY,
  "area" integer,
  "rank" varchar
);

CREATE TABLE "Patient" (
  "patient_nr" integer PRIMARY KEY,
  "doctor_id" integer,
  "name" varchar,
  "disease" varchar,
  "bed_nr" integer
);

CREATE TABLE "Station" (
  "stan_nr" integer PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "Room" (
  "room_nr" int PRIMARY KEY,
  "stan_nr" int
);

CREATE TABLE "Bed" (
  "id" integer PRIMARY KEY,
  "room_nr" integer
);

ALTER TABLE "StationPersonell" ADD FOREIGN KEY ("station_id") REFERENCES "Station" ("stan_nr");

ALTER TABLE "Caregiver" ADD FOREIGN KEY ("station_personell_id") REFERENCES "StationPersonell" ("pers_nr");

ALTER TABLE "Doctor" ADD FOREIGN KEY ("station_personell_id") REFERENCES "StationPersonell" ("pers_nr");

ALTER TABLE "Patient" ADD FOREIGN KEY ("doctor_id") REFERENCES "Doctor" ("station_personell_id");

ALTER TABLE "Patient" ADD FOREIGN KEY ("bed_nr") REFERENCES "Bed" ("id");

ALTER TABLE "Room" ADD FOREIGN KEY ("stan_nr") REFERENCES "Station" ("stan_nr");

ALTER TABLE "Bed" ADD FOREIGN KEY ("room_nr") REFERENCES "Room" ("room_nr");
