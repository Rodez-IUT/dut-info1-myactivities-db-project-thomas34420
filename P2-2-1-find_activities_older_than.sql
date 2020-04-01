CREATE FUNCTION find_activities_older_than(old_date date) 
RETURNS activity AS $$ 
SELECT title  
FROM activity 
WHERE old_date = creation_date
RETURNING activity
$$
LANGAGE SQL;