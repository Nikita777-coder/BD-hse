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
