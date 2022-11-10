SELECT
	
    case
		when edad < 18 then 'Menores de edad'
        else 'Mayores de edad'
	end rango_edad,
    count(*)
FROM
titanic.pasajeros
group by rango_edad