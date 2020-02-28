DELIMITER $$ 
drop procedure if exists registrar_prod;
CREATE PROCEDURE registrar_prod(
    in id int,
    in nombre VARCHAR(30),
    in precio NUMERIC(7,2),
    in tipo varchar(30),
    OUT confir INT)
BEGIN
    DECLARE id INT;
    SET nombre = UPPER(nombre);
    set tipo=upper(tipo);
    SET precio=precio *3.5;
    --
    SELECT FLOOR(1+RAND()*60) INTO id;
    --
    INSERT INTO Dispositivo
        (Id_Dispo,Nombre,Precio,Tipo)
        values
        (id,nombre,precio,tipo);
    --
    IF ROW_COUNT()>0 THEN
        SET confir =1;
    ELSE
        SET confir =0;
    END IF;
END$$
DELIMITER ;

