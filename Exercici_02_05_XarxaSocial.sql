DROP DATABASE IF EXISTS social_net;
CREATE DATABASE social_net;
USE social_net;

CREATE TABLE social_net.usuarios
(
   id_user INT(4) NOT NULL AUTO_INCREMENT,
   nombre VARCHAR(40) NOT NULL,
   email VARCHAR(40) NOT NULL ,
   passw VARCHAR(40) NOT NULL,
   UNIQUE (id_user),
   PRIMARY KEY (id_user)
)
ENGINE = InnoDB;

INSERT INTO social_net.usuarios VALUE('1','Jorge','bocchiardoje@gmail.com','123456B');
INSERT INTO social_net.usuarios VALUE('2','Joan','jbosco@gmail.com','ASd#$T');
INSERT INTO social_net.usuarios VALUE('3','Jimmy','jimorrey@gmail.com','_Asd45DF');
INSERT INTO social_net.usuarios VALUE('4','Jenny','nylstamp@gmail.com','aaa###2fg');

SELECT *
FROM usuarios;

CREATE TABLE social_net.meet
(
   id_link INT(4) NOT NULL AUTO_INCREMENT,
   user_id INT(4),
   friend_id INT(4),
   meet VARCHAR(40) NOT NULL,
   UNIQUE (id_link),
   PRIMARY KEY (id_link)
)
ENGINE = InnoDB;

INSERT INTO social_net.meet VALUE('',1,4,'Bar');
INSERT INTO social_net.meet VALUE('',1,3,'Playa');
INSERT INTO social_net.meet VALUE('',2,3,'Centro');

SELECT *
FROM meet;

CREATE TABLE social_net.content
(
   id_foto INT(4) NOT NULL AUTO_INCREMENT,
   place VARCHAR(40) NOT NULL,
   link_url VARCHAR(40) NOT NULL ,
   user_id INT(4),
   UNIQUE (id_foto),
   PRIMARY KEY (id_foto)
)
ENGINE = InnoDB;

INSERT INTO social_net.content VALUE('','Barcelona','https://www.barcelona.cat/sites/default/files/default_images/barcelona_600x315.jpg',3);
INSERT INTO social_net.content VALUE('','Barcelona','https://estaticos.elperiodico.com/resources/jpg/9/1/barcelona-cierra-seis-playas-por-alta-concentracion-personas-1592758658319.jpg',3);
INSERT INTO social_net.content VALUE('','Madrid','https://blogviajero.es/wp-content/uploads/Madrid-Capital-1024x410.jpg',4);

SELECT *
FROM content;

ALTER TABLE content
ADD CONSTRAINT id_user_content_id
FOREIGN KEY (user_id)
REFERENCES usuarios(id_user);

ALTER TABLE meet
ADD CONSTRAINT id_user_id
FOREIGN KEY (user_id)
REFERENCES usuarios(id_user);

ALTER TABLE meet
ADD CONSTRAINT id_user_friend_id
FOREIGN KEY (friend_id)
REFERENCES usuarios(id_user);

