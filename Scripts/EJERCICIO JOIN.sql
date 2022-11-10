
Sacar el conteo total de supervivientes y victimas por descripción de puerto de embarque para los hombres mayores de 50 años

-------------------------------------------------------------------------

RESUMEN

Cadaver / No Cadaver (no id_cuerpo)  Hombres años >50 | Cadaver: 18 NO Cadaver: 45

CREATE VIEW titanic.Resumen_PasajHombresMayor50
AS
(
SELECT
	CASE 
        WHEN id_cuerpo = 0 THEN 'No cadaver'
		ELSE 'cadaver'
	END Estado,
        count(*) AS Recuento
FROM titanic.pasajeros
WHERE edad > 50
	AND sexo = 'M'
    GROUP BY Estado
 )


----------------------------------------------------------------------------
TABLA CADAVER

18 Cadaver SI id_cuerpo

CREATE VIEW titanic.Cuerpos_PasajHombresMayor50
AS
SELECT id_pasajero AS Cadaver, cod_puerto_embarque
FROM titanic.pasajeros
WHERE edad > 50
AND sexo = 'M'
AND id_cuerpo !=0
------------------------------------------------------------------------------------
TABLA NO CADAVER

45 No cadaver NO id cuerpo 


CREATE VIEW titanic.NoCuerpos_PasajHombresMayor50
AS
SELECT id_pasajero AS No_cadaver, cod_puerto_embarque
FROM titanic.pasajeros
WHERE edad > 50
AND sexo = 'M'
AND id_cuerpo = 0
-----------------------------------------------------------------------------------

RESULTADO SUPERVIVIENTES (NO CADAVER)

SUPERVIVIENTES 9 | MISSING 36

CREATE VIEW titanic.sup
AS
(
SELECT count(c.id_pasajero) AS supervivientes, d.nombre_puerto_embarque AS Puerto_Embarque
FROM
titanic.NoCuerpos_PasajHombresMayor50 a
INNER JOIN
titanic.supervivientes c
	ON a.No_cadaver = c.id_pasajero
LEFT OUTER JOIN
titanic.puertos_embarque d
	ON a.cod_puerto_embarque = d.cod_puerto_embarque
GROUP BY d.nombre_puerto_embarque
)


--------------------------------------------------------------------
RESULTADO VICTIMAS (CADAVERES)

CREATE VIEW titanic.vict
AS
(
SELECT count(a.Cadaver) AS Victimas, d.nombre_puerto_embarque AS Puerto_Embarque
FROM
titanic.Cuerpos_PasajHombresMayor50 a
LEFT OUTER JOIN
titanic.puertos_embarque d
	ON a.cod_puerto_embarque = d.cod_puerto_embarque
GROUP BY d.nombre_puerto_embarque
)

-----------------------------------------------------------------------------
RESULTADO FINAL

SELECT
sup.supervivientes, vict.Victimas, vict.Puerto_Embarque
FROM
titanic.sup
RIGHT OUTER JOIN
titanic.vict
	ON sup.Puerto_Embarque = vict.Puerto_Embarque
    GROUP BY sup.Puerto_Embarque
UNION
SELECT
sup.supervivientes, vict.Victimas, vict.Puerto_Embarque
FROM titanic.sup
LEFT OUTER JOIN
titanic.vict
	ON sup.Puerto_Embarque = vict.Puerto_Embarque
	GROUP BY sup.Puerto_Embarque




