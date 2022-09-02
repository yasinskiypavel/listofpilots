SELECT pilot.last_name AS Фамилия, COUNT(airplane_pilot.id) AS Количество_полётов
FROM pilot
LEFT JOIN airplane_pilot ON airplane_pilot.pilot_id = pilot.pilot_id
JOIN airplane ON airplane.airplane_id = airplane_pilot.airplane_id
WHERE airplane.model = "Сухой" AND airplane_pilot.flight_date BETWEEN "2022-02-01" AND "2022-02-28"
GROUP BY pilot.pilot_id;