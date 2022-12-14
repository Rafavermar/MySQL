
SET SQL_SAFE_UPDATES = 0;
SET GLOBAL innodb_buffer_pool_size=268435456;
SET @@global.event_scheduler = 0;

SELECT flujo, año, mes, avotable.cod_pais, euros, cod_taric, kilogramos
FROM avodb.avotable
WHERE cod_taric LIKE '8044%' AND flujo = 'E';
SELECT avotable.cod_pais,
SUM(CASE WHEN mes = '1' AND año = '2020' THEN avotable.kilogramos ELSE 0 END) AS Enero_2020,
  SUM(CASE WHEN mes = '2' AND año = '2020' THEN avotable.kilogramos ELSE 0 END) AS Febrero_2020,
  SUM(CASE WHEN mes = '3' AND año = '2020' THEN avotable.kilogramos ELSE 0 END) AS Marzo_2020,
  SUM(CASE WHEN mes = '4' AND año = '2020' THEN avotable.kilogramos ELSE 0 END) AS Abril_2020,
  SUM(CASE WHEN mes = '5' AND año = '2020' THEN avotable.kilogramos ELSE 0 END) AS Mayo_2020,
  SUM(CASE WHEN mes = '6' AND año = '2020' THEN avotable.kilogramos ELSE 0 END) AS Junio_2020,
  SUM(CASE WHEN mes = '7' AND año = '2020' THEN avotable.kilogramos ELSE 0 END) AS Julio_2020,
  SUM(CASE WHEN mes = '8' AND año = '2020' THEN avotable.kilogramos ELSE 0 END) AS Agosto_2020,
  SUM(CASE WHEN mes = '9' AND año = '2020' THEN avotable.kilogramos ELSE 0 END) AS Septiembre_2020,
  SUM(CASE WHEN mes = '10' AND año = '2020' THEN avotable.kilogramos ELSE 0 END) AS Octubre_2020,
  SUM(CASE WHEN mes = '11' AND año = '2020' THEN avotable.kilogramos ELSE 0 END) AS Noviembre_2020,
  SUM(CASE WHEN mes = '12' AND año = '2020' THEN avotable.kilogramos ELSE 0 END) AS Diciembre_2020
   FROM avodb.avotable
  WHERE cod_taric LIKE '8044%' AND nivel_taric IN (5,3) AND flujo= 'E'
GROUP BY mes,avotable.cod_pais;