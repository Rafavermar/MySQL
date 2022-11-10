create view titanic.anonimos
as
(
select id_pasajeros, edad, sexo
from titanic.pasajeros
)

select * from titanic.anonimos