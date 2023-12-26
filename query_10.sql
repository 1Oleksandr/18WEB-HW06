SELECT s.fullname, t.fullname, d.name
FROM grades g
JOIN students s ON s.id = g.student_id 
JOIN disciplines d ON d.id = g.discipline_id
JOIN teachers t ON t.id = d.teacher_id 
WHERE s.fullname = 'Dana West' and t.fullname = 'Amanda Wood'
GROUP BY d.name;