--1)
SELECT extract(year from pl.birthdate) as "Олимпиада 2004, годы рождения",
       count(distinct pl.player_id) filter (where r.medal = 'GOLD') as "Кол-во игроков",
       count(r.medal) filter (where r.medal = 'GOLD') as "Кол-во золотых медалей"
FROM players pl
JOIN results r ON pl.player_id = r.player_id
JOIN events e ON r.event_id = e.event_id
JOIN olympics o ON e.olympic_id = o.olympic_id
where o.year = 2004
group by(extract(year from pl.birthdate));

--2)
select e.name from events e
join results r on r.event_id = e.event_id
join results r1 on r1.event_id = e.event_id
where e.is_team_event = 0 and r.result = r1.result and r.player_id != r1.player_id
and r.medal = 'Gold'
GROUP BY e.name
HAVING count(distinct r.player_id) >= 2;

-- 3)
SELECT DISTINCT player.name AS player_name, results.event_id
FROM players player
JOIN results ON player.player_id = results.player_id
WHERE results.medal IN ('GOLD', 'SILVER', 'BRONZE');

-- 4)
SELECT country_id,
       COUNT(*) as total_players,
       SUM(CASE WHEN LOWER(SUBSTRING(name, 1, 1)) IN ('a', 'e', 'i', 'o', 'u') THEN 1 ELSE 0 END) as vowel_starting_players
FROM players
GROUP BY country_id
ORDER BY (vowel_starting_players * 100.0) / total_players DESC
LIMIT 1;

-- 5)
SELECT countries,
       COUNT(results.medal) as total_medals,
       CAST(COUNT(results.medal) as float) / countries.population as medals_per_capita
FROM results
JOIN players ON results.player_id = players.player_id
JOIN countries ON players.country_id = countries.country_id
JOIN "7thHW".olympics o on countries.country_id = o.country_id
JOIN "7thHW".events e on e.event_id = results.event_id
WHERE o.year = 2000
AND e.is_team_event = 1
GROUP BY countries, countries.population
ORDER BY medals_per_capita
LIMIT 5;