SELECT
	sexo,
    edad,
    count(*)
FROM
	titanic.pasajeros
    
GROUP BY sexo, edad
HAVING
    count(*) > 100


    
    
    
    
