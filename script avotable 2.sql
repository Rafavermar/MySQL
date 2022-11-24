SET SQL_SAFE_UPDATES = 0;

SET @@global.event_scheduler = 0;

SELECT flujo, año, mes, avotable.cod_pais, provincia, euros, cod_taric, nivel_taric, kilogramos
FROM avodb.avotable
WHERE cod_taric LIKE '8044%' AND nivel_taric IN (5,3) AND  flujo = 'I' AND cod_pais = 41;

