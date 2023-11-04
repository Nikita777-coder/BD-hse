-- a)
SELECT con.* FROM yaglo_215.trains."Connection" con
    JOIN yaglo_215.trains."Train" T on T.train_nr = con.train_nr
    JOIN yaglo_215.trains."Station" from_station on from_station.name = con.from_station
    JOIN yaglo_215.trains."Station" to_station on to_station.name = con.to_station
    JOIN yaglo_215.trains."City" from_city on from_station.city_id = from_city.id
    JOIN yaglo_215.trains."City" to_city on to_station.city_id = to_city.id
        WHERE from_city.name = 'Москва' AND to_city.name = 'Тверь';

-- б)
SELECT con1.train_nr AS "Номер поезда", con1.departure AS "Отправление из Москвы",
       con2.arrival AS "Прибытие в Санкт-Петербург"
    FROM yaglo_215.trains."Connection" con1
    JOIN yaglo_215.trains."Connection" con2 ON con1.to_station = con2.from_station AND con1.arrival <= con2.departure
    JOIN yaglo_215.trains."Station" from_station ON con1.from_station = from_station.name
    JOIN yaglo_215.trains."Station" to_station ON con2.to_station = to_station.name
    JOIN yaglo_215.trains."City" from_city on from_city.id = from_station.city_id
    JOIN yaglo_215.trains."City" to_city on to_city.id = to_station.city_id
        WHERE from_city.name = 'Москва'
            AND to_city.name = 'Санкт-Петербург'
            AND con1.departure::DATE = con2.arrival::DATE