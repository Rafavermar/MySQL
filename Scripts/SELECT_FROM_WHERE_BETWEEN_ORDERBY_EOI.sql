SELECT
	nombre, sexo, edad 
FROM
	titanic.pasajeros
WHERE 
	edad BETWEEN 20 AND 40
    AND
    sexo = 'F'
ORDER BY edad desc