DELIMITER $$ 
drop procedure if exists actual_prod;
CREATE PROCEDURE actual_prod(
    int id int,
    in nombre VARCHAR(30),
    IN precio NUMERIC(7,2),
    in tipo varchar(30),
    OUT confir INT)
BEGIN
    update Dispositivo
        set Nombre=nombre,
            Precio=precio,
            Tipo=tipo
    where Id_Dispo=id;        
    --
    IF ROW_COUNT()>0 THEN
        SET confir =1;
    ELSE
        SET confir =0;
    END IF;
END$$
DELIMITER ;