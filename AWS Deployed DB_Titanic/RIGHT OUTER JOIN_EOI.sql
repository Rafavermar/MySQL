1309 registros
INNER JOIN 1307
LEFT OUTER JOIN 1310 (primera fila 0)
ROJ 1308 (devuelve todos los registros (1307) y el puerto Madrid en nulos porque manda la tabla de la derecha)

select 
	count(*)
from 
	titanic.pasajeros a
    RIGHT OUTER JOIN
    titanic.puertos_embarque b
		ON a.cod_puerto_embarque = b.cod_puerto_embarque
        
        
 # COMPROBACION DEL ROJ
 
 select 
	b.nombre_puerto_embarque, count(*)
from 
	titanic.pasajeros a
    RIGHT OUTER JOIN
    titanic.puertos_embarque b
		ON a.cod_puerto_embarque = b.cod_puerto_embarque
group by b.nombre_puerto_embarque


# COMPROBACION DEL LOJ

select 
	b.nombre_puerto_embarque, count(*)
from 
	titanic.pasajeros a
    RIGHT OUTER JOIN
    titanic.puertos_embarque b
		ON a.cod_puerto_embarque = b.cod_puerto_embarque
group by b.nombre_puerto_embarque