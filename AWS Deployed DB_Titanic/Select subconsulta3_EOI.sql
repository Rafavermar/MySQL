Select nombre
from titanic.pasajeros
where edad <=
(
select avg(edad) from titanic.pasajeros

) 

