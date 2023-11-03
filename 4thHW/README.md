# 4 задание
## Код к физическим моделям
1. Библиотека
```
Table Reader {
id integer pk
last_name varchar
first_name varchar
address varchar
birth_date datetime
}


Table Book {
isbn integer pk
title varchar
author varchar
pages_num integer
year integer
pub_id integer [ref: > Publisher.id]
}


Table Publisher {
id integer pk
pub_name varchar
pub_address varchar
}


Table Category {
id integer pk
name varchar
}


Table Copy {
copy_number integer pk
book_isbn integer [ref: > Book.isbn]
shelf_position integer
}


Table Borrowing {
id integer pk
reader_nr integer [ref: > Reader.id]
book_copy integer [ref: > Copy.copy_number]
return_date timestamp
}


Table BookCategory {
id integer pk
category_id integer [ref: > Category.id]
book_isbn integer [ref: > Book.isbn]
}
```

2. Пациенты
```
Table StationPersonell {
pers_nr int pk
name varchar
station_id int [ref: > Station.stan_nr]
}


Table Caregiver {
station_personell_id integer pk [ref: - StationPersonell.pers_nr]
qualification varchar
}


Table Doctor {
station_personell_id integer pk [ref: - StationPersonell.pers_nr]
area integer
rank varchar
}


Table Patient {
patient_nr integer pk
doctor_id integer [ref: > Doctor.station_personell_id]
name varchar
disease varchar
bed_nr integer [ref: > Bed.id]
}


Table Station {
stan_nr integer pk
name varchar
}


Table Room {
room_nr int pk
stan_nr int [ref: > Station.stan_nr]
}


Table Bed {
id integer pk
room_nr integer [ref: > Room.room_nr]
}
```
3. Поезда
```
Table Station {
name varchar pk
city_id integer [ref: > City.id]
number_of_trains integer
}


Table City {
id integer pk
region varchar
name varchar
}


Table Train {
train_nr integer pk
length integer
start_station_name varchar
end_station_name varchar
}


Table Connection {
id integer pk
from_station varchar [ref: > Station.name]
to_station varchar [ref: > Station.name]
train_nr integer [ref: > Train.train_nr]
departure varchar
arrival varchar
}
```
## Расположение остальных файлов по заданию
Остальные файлы расположены согласно заданию 

## Скриншоты с таблицами 
![img.png](img.png)

