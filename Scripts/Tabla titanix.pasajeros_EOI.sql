create table titanic.pasajeros (
	id_pasajeros	smallint PRIMARY KEY,
    clase			smallint,
    nombre			char(200),
    sexo			char(1),pasajeros
    edad			smallint,
    num_hermanos_parejas_abordo		smallint,
    num_padres_hijos_abordo			smallint,
    id_ticket		char(20),
    tarifa			float(10,5),
    camarote		char(30),
    cod_puerto_embarque		char(1),
    Bote_rescate	char(5),
    id_cuerpo		smallint,
    Destino			char(100)
    ) CHARSET=UTF8MB4;