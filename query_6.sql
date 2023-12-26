SELECT gr.name AS name_group, s.fullname 
FROM students s
JOIN [groups] gr ON gr.id = s.group_id
WHERE gr.id = 1;