use db_geolocalitation;

CREATE TABLE network_monitoring(
	id_monitoring INT AUTO_INCREMENT,
	name varchar(50),
	latitude decimal,	
	longitude decimal,	
	location varchar(250),
	STA_Notes text,
	ImageDescription text,
	primary key (id_monitoring)
);


CREATE TABLE pollution(
	id_pollution INT AUTO_INCREMENT,
	co double,
	no double,
	no2 double,
	o3 double,
	so2 double,
	pm2_5 double,
	pm10 double,
	nh3 double,
	lon double,
	lat double,
	aqi double,
	range_h varchar(50),
	color varchar(50),
	Level varchar(50),
	date varchar(50),
	id_monitoring INT,
	primary key (id_pollution),
	FOREIGN KEY (id_monitoring) references network_monitoring(id_monitoring)
);

CREATE TABLE weather(
	id_weather INT AUTO_INCREMENT,
	main varchar(20),
	description varchar(20),
	icon varchar(20),
	temp double,
	feels_like double,
	temp_min double,
	temp_max double,
	pressure double,
	humidity double,
	speed double,
	deg double,
	type double,
	id_sys double,
	country varchar(20),
	sunrise double,
	sunset double,
	base varchar(20),
	visibility varchar(20),
	date varchar(20),
	timezone varchar(20),
	name varchar(300),
	id_monitoring INT,
	lon double,
	lat double,
	primary key (id_weather),
	FOREIGN KEY (id_monitoring) references network_monitoring(id_monitoring)
);


insert into network_monitoring (name,latitude,longitude,location,STA_Notes,ImageDescription)
values
('Bogota General','4.711','-74.0721','Av. Tv. De Suba, Bogotá','Centro',''),
('Bolivia','4.7358056','-74.1258888888889','Avenida Calle 80  # 121-98','','Estación Bolivia'),
('Carvajal - Sevillana','4.5958333','-74.1485','Auto Sur No 61-40','La estacion esta ubicada en una zona industrial en un entorno de fuentes puntuales de contaminantes primarios y se encuentra en la periferia de la Autopista Sur.  Se encuentra a 4 m del suelo.  Registra el sector sur,  su escala de medicion es vecindario.','Estacion Sony'),
('Centro de Alto Rendimiento','4.6583333','-74.0838888888889','Cl 63 No 47-06','La estación se encuentra ubicada dentro de las instalaciones del Centro de Alto Rendimiento COLDEPORTES.','Estacion IDRD'),
('Ciudad Bolivar','4.5778056','-74.1662777777778','Calle 70 Sur # 56 - 11','',''),
('Colina','4.7371944','-74.0694722222222','Avenida Boyacá No 142ª-55','',''),
('Fontibon','4.6782417','-74.1438194444445','KR 96G 17B 49','',''),
('Guaymaral','4.78375','-74.0441388888889','Auto Norte KM 13','La estacion esta a nivel del suelo, dentro de las enstalaciones de la Escuela de ingeniería Julio Garavito.','Estacion Escuela de Ingenieria'),
('Jazmin','4.6085','-74.1149444444444','Calle 1 G # 41 A 39','',''),
('Kennedy','4.62505','-74.1613333333333','Cr 86 No 40-55 Sur','La estación se encuentra ubicada dentro de las instalaciones del Parque Cayetano Cañizares','Estacion Kennedy'),
('Las Ferias','4.6907','-74.0824833333333','AV Calle 80 N° 69Q - 50','Esta a nivel del suelo, cercana a  una via principal (Calle 80), presenta vegetacion arborea a su alrededor.  Registra el sector noroccidente y centro,  su escala de medicion es vecindario. Estacion ambiental frente a estacion de servicio','Estacion Carrefour'),
('MinAmbiente','4.6254861','-74.0669805555555','CL 37 No. 8 - 40','Se encuentra ubicada en la azotea del Ministerio de Ambiente a una altura de 15 m sobre el nivel del suelo.','Estacion MAVDT'),
('Movil 7ma','4.645','-74.0615555555556','AV boyaca calle 63','estacion destinada a la ejecucion del convenio 176 con el IDEAM y Trasmilenio para la medicion de parametros en via',''),
('Movil Fontibon','4.668','-74.1485','Cra. 98 #16 B 50','',''),
('Puente Aranda','4.6317667','-74.1174833333333','Cr 65 No 10-95','La estacion esta a 15 m del suelo,  ubicada en una zona industrial, cercana a una via principal (Avenidas de Las Americas).  Registra el sector centroccidente y sur,  su escala de medicion es vecindario','Estacion Puente Aranda'),
('San Cristobal','4.5725528','-74.0838138888889','Carrera 2 Este No. 12-78 Sur','','Estación San Cristóbal'),
('Suba','4.7612472','-74.0934611111111','Ave Corpas Km 13 / KR 111 157-45','La estación se encuentra ubicada en la Carrera 111 # 159 A-61. Registra el sector noroccidental su escala de medicion es vecindario. Franqueada por el Cerro de la Conejera','Estacion Universidad de Corpas'),
('Tunal','4.57619','-74.13093','Carrera 24 N° 49-86 sur','La estacion esta ubicada dentro de las instalaciones Inem Santiago Perez, se encuentra a nivel del suelo, presenta vegetacion arborea que no afecta su registro.  Registra el sector suroriente.','Estacion Tunal'),
('Usaquen','4.71035','-74.0304166666667','TV-9 No 133-95','La estación se encuentra en la azotea del edificio de la Universidad El Bosque, a una altura de 10 m.','Estacion Usaquén'),
('Usme','4.53120556','-74.1117138888889','Carrera 11 # 65 D 50 Sur','','');


CREATE TABLE user_cat(
	id INT AUTO_INCREMENT,
	user_id varchar(50),
	longitude varchar(50),
    latitude varchar(50),
    r1 integer,
	r2 integer,
	r3 integer,
	r4 integer,
	r5 integer,
	r6 integer,
	r7 integer,
	r8 integer,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	primary key (id)
);

