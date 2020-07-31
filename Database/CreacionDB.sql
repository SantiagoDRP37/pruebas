CREATE DATABASE  IF NOT EXISTS `volando_Alto`;

USE volando_Alto; 																	-- Uso de base de datos deli

CREATE TABLE IF NOT EXISTS `pasajero` (											-- creacion de tabla de pasajero
  `cedula` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `correo` VARCHAR(45) NOT NULL,
  `telefono` INT NOT NULL,
  constraint usuario_id_pk primary key (`cedula`));
  
  CREATE TABLE IF NOT EXISTS`avion` (											-- creacion de tabla de avion
  `idAvion` INT NOT NULL,
  `tipoAvion` VARCHAR(45) NOT NULL,
  `capacidad`  INT NOT NULL,
  constraint usuario_id_pk primary key (`idAvion`));
  
  CREATE TABLE IF NOT EXISTS `viaje` (											-- creacion de tabla de viaje
  `idViaje` INT NOT NULL,
  `origen` VARCHAR(45) NOT NULL,
  `destino` VARCHAR(45) NOT NULL,
   `precio` DOUBLE NOT NULL,
  constraint usuario_id_pk primary key (`idViaje`));
  
  CREATE TABLE IF NOT EXISTS `piloto` (											-- creacion de tabla de piloto
  `idPiloto` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `tipoPiloto` VARCHAR(45) NOT NULL,
  constraint usuario_id_pk primary key (`idPiloto`));
  
 CREATE TABLE IF NOT EXISTS `Vuelo` (											-- creacion de tabla de Vuelo
  `idVuelo` INT NOT NULL AUTO_INCREMENT,
  constraint usuario_id_pk primary key (`idVuelo`)); 
  
-- Relaciones 
  
  
  -- Poblado de tablas
     -- Poblar tabla de pasajero
		 insert into pasajero (cedula,nombre,apellido,correo,telefono)
			values 
				(123456,
				"david",
				"rojas",
				"correo@hotmail.com",
				7410118);
   -- Poblar tabla de avion
		 insert into avion (idAvion,tipoAvion,capacidad)
			values 
				(001,
				"Avioneta",
				9);
 -- Poblar tabla de viaje
		 insert into viaje (idViaje,origen,destino,precio)
			values 
				(1,
				"Bogota",
                "Villavicencio",
				210000);
		insert into viaje (idViaje,origen,destino,precio)
			values 
				(2,
				"Bogota",
                "Medellin",
				304000 );
		insert into viaje (idViaje,origen,destino,precio)
			values 
				(1,
				"Bogota",
                "Cali",
				280000);

  