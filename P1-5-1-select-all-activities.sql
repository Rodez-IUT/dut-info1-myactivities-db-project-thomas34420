SELECT title, description, username
FROM "user"
JOIN "activity"
ON owner_id = "user".id
WHERE creation_date > '2019-09-01'
ORDER BY username ASC