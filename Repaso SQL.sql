-- PROCEDURE

DELIMITER //
CREATE PROCEDURE programa1(IN PROYECTO VARCHAR(10))
BEGIN

	DECLARE SALARIO decimal(10,2);
	
END;
//
DELIMITER ;

-- FUNCTION

DELIMITER //
CREATE FUNCTION programa1( entrada VARCHAR(40)) RETURNS INT 
BEGIN
	DECLARE cantidad INTEGER DEFAULT 0;
	SET cantidad = (SELECT COUNT(*) FROM EMPLEADOS);
	RETURN cantidad;
END;
//
DELIMITER ;

-- Probar FUNCTION
SELECT programa1('Barcelona');

-- USO DE IF ELSE
IF SUELDO < 30000 THEN
	SET SUELDO_FINAL:= (SUELDO*1.1);
ELSEIF (SUELDO >=30000 AND SUELDO < 40000) THEN
	SET SUELDO_FINAL:= (SUELDO*1.03+300*CANT_H);
ELSE
	SET SUELDO_FINAL:= (SUELDO*1.02+200*CANT_H);
END IF;

-- USO DE DO WHILE
WHILE contador <= tope DO
	SET exponente:= (contador*contador);
	INSERT INTO cuadrados values(contador, exponente);
	select contador as numero, exponente as cuadrado;

	SET contador:= contador+1;

END WHILE;
	
-- USO DE UNTIL
REPEAT
lista_sentencias;
UNTIL condicion
END REPEAT;

-- USO DE REPEAT
REPEAT
SET suma := suma + numero;
SET numero := numero +1;
/* Muestra el acumulado y el número */
SELECT numero, suma;
UNTIL numero >10;
END REPEAT;

