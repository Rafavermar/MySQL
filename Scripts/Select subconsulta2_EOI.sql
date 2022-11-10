select *
from
	titanic.pasajeros
where edad =
	(
    select min(edad) from titanic.pasajeros
    )
