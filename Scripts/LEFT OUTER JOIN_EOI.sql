1309 registros
INNER JOIN 1307
LEFT OUTER JOIN 1310 (primera fila 0)

select 
	count(*)
from 
	titanic.pasajeros a
    LEFT OUTER JOIN
    titanic.puertos_embarque b
		ON a.cod_puerto_embarque = b.cod_puerto_embarque