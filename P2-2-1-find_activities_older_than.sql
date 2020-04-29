CREATE FUNCTION find_activities_older_than(old_date date) 
RETURNS activity AS $$ 
SELECT title  
FROM activity 
WHERE old_date = modification_date
RETURNING activity
$$
LANGAGE SQL;