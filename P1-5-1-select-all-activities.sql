SELECT "title", description, "username"
FROM "user"
JOIN "activity"
ON id_owner = "user".id
WHERE creation_date > '01/09/2019'
