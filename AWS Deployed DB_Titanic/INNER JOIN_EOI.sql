
1309 registros
INNER JOIN 1307

select 
	count(*)
from 
	titanic.pasajeros a
    INNER JOIN
    titanic.puertos_embarque b
		ON a.cod_puerto_embarque = b.cod_puerto_embarque
	
