SELECT gr.name AS Name_group, s.fullname AS student, d.name AS discipline, g.grade, MAX(g.date_of) AS last_lesson 
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN [groups] gr ON gr.id = s.group_id
JOIN disciplines d ON d.id = g.discipline_id
WHERE gr.name = 'AM-92' and (d.name, g.date_of) IN (SELECT d.name, MAX(g.date_of) AS last_lesson 
FROM grades g
JOIN disciplines d ON d.id = g.discipline_id
WHERE d.name = 'Теорія ігор')
GROUP BY s.fullname;