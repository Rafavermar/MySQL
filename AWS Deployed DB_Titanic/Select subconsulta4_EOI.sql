select sexo GENDER, edad AGE, count(*) COUNT
from titanic.pasajeros
where sexo = 'F'
group by edad