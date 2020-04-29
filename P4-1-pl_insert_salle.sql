CREATE FUNCTION gds.pl_insert_salle (un_nom varchar(250),un_nb_personne_max integer) RETURNS gds.salle AS $$
DECLARE 
    nouvelle_salle gds.salle%ROWTYPE;
BEGIN 
    INSERT INTO gds.salle (nom,nb_personnes_max,date_creation,date_modification,id)
    VALUES (un_nom,un_nb_personne_max,now(),now(),nextval('gds.salle_seq'))
	RETURNING * INTO nouvelle_salle;

    RETURN nouvelle_salle;
END;
$$ LANGUAGE plpgsql