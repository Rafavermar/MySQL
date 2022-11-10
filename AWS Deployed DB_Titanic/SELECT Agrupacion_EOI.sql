
select*
from titanic.pasajeros as principal
INNER JOIN

(
SELECT
nombre, edad, sexo
from titanic.pasajeros
where
	edad >=70
) as mayores
ON principal.nombre = mayores.nombre