SELECT t.fullname, d.name, ROUND(AVG(g.grade), 2) AS Average_Grade
FROM disciplines d
JOIN teachers t ON t.id = d.teacher_id
JOIN grades g ON d.id  = g.discipline_id
WHERE t.id = 2
GROUP BY t.fullname, d.name
ORDER BY d.id;