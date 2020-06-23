DROP DATABASE IF EXISTS amazon;
CREATE DATABASE amazon;
USE amazon;

CREATE TABLE amazon.catalogo
(
   id_libro INT(4) NOT NULL AUTO_INCREMENT,
   nombre VARCHAR(40) NOT NULL,
   precio DECIMAL(10,2) NOT NULL ,
   autor_id INT(4),
   unidades_disp INT(4) NOT NULL,
   UNIQUE (id_libro),
   PRIMARY KEY (id_libro)
)
ENGINE = InnoDB;

INSERT INTO catalogo VALUE('','Python desde cero',23.40,2,'');
INSERT INTO catalogo VALUE('','Arduino for dummies',15.90,2,1);
INSERT INTO catalogo VALUE('','Linux basics',5.00,1,5);
INSERT INTO catalogo VALUE('','Learn PHP with examples',7.46,3,'0');

SELECT *
FROM catalogo;

CREATE TABLE amazon.autores
(
   id_autor INT(4) NOT NULL AUTO_INCREMENT,
   nombre VARCHAR(40) NOT NULL,
   direccion VARCHAR(40) NOT NULL ,
   mas_de1 BOOLEAN DEFAULT 0,
   UNIQUE (id_autor),
   PRIMARY KEY (id_autor)
)
ENGINE = InnoDB;

INSERT INTO autores VALUE('','Jhon Smith','Carrer Marina 150',TRUE);
INSERT INTO autores VALUE('','Jym Mathu','Vila Cap 233',TRUE);
INSERT INTO autores VALUE('','Pepe Zargos','Lima 254',FALSE);

SELECT *
FROM autores;

CREATE TABLE amazon.usuario
(
   id_usuario INT(4) NOT NULL AUTO_INCREMENT,
   nombre VARCHAR(40) NOT NULL,
   email VARCHAR(40) NOT NULL ,
   contras VARCHAR(40) NOT NULL,
   UNIQUE (id_usuario),
   PRIMARY KEY (id_usuario)
)
ENGINE = InnoDB;

INSERT INTO usuario VALUE('','Caro Matis','caro_1988@outlook.com','caro123');
INSERT INTO usuario VALUE('','Martin Mojado','tin_weet@gmail.com','2020_best_year');
INSERT INTO usuario VALUE('','Luis Borja','lu_bo@gmail.com','19283746');

SELECT *
FROM usuario;

CREATE TABLE amazon.compras
(
   id_compra INT(100) NOT NULL,
   libro_id INT(4) NOT NULL,
   usuario_id INT(4) NOT NULL
)
ENGINE = InnoDB;

INSERT INTO compras VALUE('10',2,2);
INSERT INTO compras VALUE('10',3,2);
INSERT INTO compras VALUE('11',3,3);

SELECT *
FROM compras;

ALTER TABLE catalogo
ADD CONSTRAINT id_autor_id
FOREIGN KEY (autor_id)
REFERENCES autores(id_autor);

ALTER TABLE compras
ADD CONSTRAINT id_libro_id
FOREIGN KEY (libro_id)
REFERENCES catalogo(id_libro);

ALTER TABLE compras
ADD CONSTRAINT id_usuario_id
FOREIGN KEY (usuario_id)
REFERENCES usuario(id_usuario);