DELIMITER $$ 
drop procedure if exists elimin_prod;
CREATE PROCEDURE elimin_prod(
    in id int,
    OUT confir INT)
BEGIN
    delete colum from Dispositivo
    where Id_Dispo=id;        
    --
    IF ROW_COUNT()>0 THEN
        SET confir =1;
    ELSE
        SET confir =0;
    END IF;
END$$
DELIMITER ;
