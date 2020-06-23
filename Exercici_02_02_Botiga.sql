DROP DATABASE IF EXISTS botiga;
CREATE DATABASE botiga;
USE botiga;

CREATE TABLE `botiga`.`compradors`
(
   `id_comprador` INT(4) NOT NULL AUTO_INCREMENT,
   `nom` VARCHAR(50) NOT NULL ,
   `cognome` VARCHAR(50) NOT NULL ,
   `dni` VARCHAR(9) NOT NULL ,
    UNIQUE (`id_comprador`),
    PRIMARY KEY (`id_comprador`)
)
ENGINE = InnoDB;

INSERT INTO `botiga`.`compradors` (`id_comprador`, `nom`,`cognome`,`dni`)
VALUES
('1','AVAILABLE','FOR SALE','XXXXXXXXX'),
('2','Carolina','Altamira','57161274A'),
('3','Rosana','Polo','87461278M'),
('4','Luis','Scatt','47461270G'),
('5','Saul','Ling','97461671B'),
('6','Marta','Mico','37431278A'),
('7','Jorge','Boccini','37461278E');

CREATE TABLE `botiga`.`stock`
(
   `id_quadre` INT(4) NOT NULL AUTO_INCREMENT ,
    `preu` DECIMAL(15,2) NOT NULL , # We use DECIMAL data type to store exact numeric values, where we do not want precision but exact and accurate values.
    `autor` VARCHAR(30) NOT NULL ,
    `nome_quadre` VARCHAR(30) NOT NULL ,
    `any` INT(4),
    `comprador_id` INT(4),
    INDEX (`comprador_id`),
    UNIQUE (`id_quadre`),
    PRIMARY KEY (`id_quadre`)
   )
ENGINE = InnoDB;

INSERT INTO `botiga`.`stock` (`id_quadre`, `preu`, `autor`,`nome_quadre`,`any`,`comprador_id`)
VALUES
('1','250000000.01','Paul Cézanne','Card Players','2011','5'),
('','200000000','','','2011','1'),
('','142000000.23','Francis Bacon','Tres estudios de Lucian Freud','1969','1'),
('4','140000000.08','Jackson Pollock','No.5','1948','4'),
('5','137000000.34','Willem de Kooning','Mujer III','','1'),
('6','135000000.45','Gustav Klimt','Retrato de Adele Bloch-Bauer I','','7'),
('7','120000000.9','Edvard Munch','El grito','1895','1'),
('','106000000.21','Pablo Picasso','Desnudo, hojas verdes y busto','1932','1'),
('9','82500000.47','Vincent van Gogh','Retrato del Dr. Gachet','','3'),
('10','80000000.11','Andy Warhol','Turquesa Marilyn','1964','1'),
('11','100000.62','','','1880','7'),
('12','155000000.05','Pablo Picasso','El Sueño','1932','1');

ALTER TABLE stock
ADD CONSTRAINT `link`
FOREIGN KEY (comprador_id)
REFERENCES compradors(id_comprador)
ON DELETE RESTRICT
ON UPDATE RESTRICT;

SELECT *
FROM stock;

SELECT *
FROM compradors;

SELECT id_quadre, preu, autor, comprador_id, nom
FROM stock
LEFT JOIN compradors
	ON comprador_id=id_comprador
ORDER BY comprador_id;


