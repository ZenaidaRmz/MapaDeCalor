create database InsidenciasDelictivas

	create table TipoDelito(

		id 			int not null auto_increment primary key,
		descripcion varchar(50) not null,
		gravedad 	int
	)

	create table Usuarios(

		id 			int not null auto_increment  primary key,
		nombre		varchar(50) not null,
		apPaterno		varchar(50) not null,
		apMaterno		varchar(50),
		Email			varchar(100) not null,
		fcNacimiento	date not null,
		sexo			char(1) not null,
		nivEducat		varchar(100) not null,
		contrasenia		varchar(10) not null,
		coPostal		int not null

	)

	create table Incidencias(

		id 				int not null auto_increment primary key,
		fecha			date not null,
		id_tipodelito 	int not null references TipoDelito (id),
		descripcion  	varchar(100) not null,
		fecha_delito	date not null,
		id_usuario		int not null references Usuario(id),
		coordenada		point not null

	)

	create table Colonias(

		id 			int not null auto_increment primary key,
		nombre		varchar(50) not null,
		coPostal 	int
		)

	create table Sindicaturas(

		id 			int not null auto_increment primary key,
		nombre		varchar(50) not null,
		id_colonia	int not null references Colonias(id)

		)

	create table Estadisticas(

		id 				int not null auto_increment primary key,
		id_tipodelito	int not null references TipoDelito(id),
		observaciones	varchar(250)

		)