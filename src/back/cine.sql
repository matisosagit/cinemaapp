
CREATE SCHEMA IF NOT EXISTS `cine` DEFAULT CHARACTER SET utf8;
USE `cine`;


CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,       
  correo VARCHAR(60) NOT NULL UNIQUE,  
  contrasena VARCHAR(100) NOT NULL,     
  PRIMARY KEY (id)
) ENGINE = InnoDB;


CREATE TABLE salas (
  idsala INT NOT NULL AUTO_INCREMENT,   
  capacidad INT NOT NULL,               
  nombre VARCHAR(100) NOT NULL,        
) ENGINE = InnoDB;


CREATE TABLE asientos (
  idasiento INT NOT NULL AUTO_INCREMENT,
  idsala INT NOT NULL,                   
  iduser INT NULL,                       
  ocupado BOOLEAN NOT NULL DEFAULT FALSE, 
  PRIMARY KEY (idasiento),
  FOREIGN KEY (idsala) REFERENCES salas(idsala) ON DELETE CASCADE,
  FOREIGN KEY (iduser) REFERENCES users(id) ON DELETE SET NULL
) ENGINE = InnoDB;


CREATE TABLE funciones (
  idfuncion INT NOT NULL AUTO_INCREMENT,
  idsala INT NOT NULL,                  
  idpelicula INT NOT NULL,              
  hora DATETIME NOT NULL,                
  PRIMARY KEY (idfuncion),
  FOREIGN KEY (idsala) REFERENCES salas(idsala) ON DELETE CASCADE,
  FOREIGN KEY (idpelicula) REFERENCES pelis(idpelicula) ON DELETE CASCADE
) ENGINE = InnoDB;


CREATE TABLE pelis (
  idpelicula INT NOT NULL AUTO_INCREMENT,
  titulo VARCHAR(100) NOT NULL,          
  descripcion VARCHAR(400) NULL,         
  PRIMARY KEY (idpelicula)
) ENGINE = InnoDB;
