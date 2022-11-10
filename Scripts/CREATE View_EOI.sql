create view titanic.mayoresedad
as
( 
select *
from titanic.pasajeros
where edad >17
)



