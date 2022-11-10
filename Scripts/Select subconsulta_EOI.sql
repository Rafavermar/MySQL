select *
from titanic.pasajeros principal
INNER JOIN

(
select
cod_puerto_embarque
FROM titanic.puertos_embarque
where
nombre_puerto_embarque like '%e%'
) as puertos

ON principal.cod_puerto_embarque = puertos.cod_puerto_embarque
