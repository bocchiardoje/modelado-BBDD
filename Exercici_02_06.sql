DROP DATABASE IF EXISTS Cul_dAmpolla;
CREATE DATABASE Cul_dAmpolla;
USE Cul_dAmpolla;

CREATE TABLE Cul_dAmpolla.suppliers
(
   id_supplier INT(4) NOT NULL AUTO_INCREMENT,
   full_name VARCHAR(40) NOT NULL,
   street VARCHAR(40) NOT NULL,
   num INT(4) NOT NULL,
   floor VARCHAR(10),
   door VARCHAR(10),
   city VARCHAR(40) NOT NULL,
   post_cod  VARCHAR(5) NOT NULL,
   country VARCHAR(20) NOT NULL,
   telefone  VARCHAR(20) NOT NULL,
   fax  VARCHAR(20),
   NIF VARCHAR(9) NOT NULL,
   UNIQUE (id_supplier),
   PRIMARY KEY (id_supplier)
)
ENGINE = InnoDB;

INSERT INTO Cul_dAmpolla.suppliers VALUE('','Lentes Sl','Calle Regueiro',7,'','B','Barcelona','08037','Spain','+03455768399','','K483745A');
INSERT INTO Cul_dAmpolla.suppliers VALUE('','Opto tk Sl','Calle Marina',13,'2','','Barcelona','08057','Spain','+03455555555','34-9855-1111','K587745B');
INSERT INTO Cul_dAmpolla.suppliers VALUE('','Looky lab','Gran via',192,'1ero','C','Barcelona','08013','Spain','+03466667654','','B883745L');

SELECT *
FROM suppliers;

CREATE TABLE Cul_dAmpolla.products
(
   id_product INT(4) NOT NULL AUTO_INCREMENT,
   brand VARCHAR(40) NOT NULL,            # rayban, 2, 3
   model VARCHAR(40) NOT NULL,
   grad_L VARCHAR(5) NOT NULL,
   grad_R VARCHAR(5) NOT NULL,
   type_mount VARCHAR(10),               #(float, pasta, metall)
   color_mount VARCHAR(10),                   #pallete
   color_glass VARCHAR(40) NOT NULL,
   price DECIMAL(15,2),
   supplier_id INT(4) NOT NULL,
   UNIQUE (id_product),
   PRIMARY KEY (id_product)
)
ENGINE = InnoDB;

INSERT INTO Cul_dAmpolla.products VALUE('','Ray-ban','Style','0.00','0.00','Metallic','Black','Brown',53.60,2);
INSERT INTO Cul_dAmpolla.products VALUE('','Ray-ban','Style','+0.25','+0.25','Metallic','Black','Brown',63.60,2);
INSERT INTO Cul_dAmpolla.products VALUE('','Ray-ban','Style','-0.25','-0.25','Float','Black','Brown',63.60,2);

INSERT INTO Cul_dAmpolla.products VALUE('','Polaroid','Nature','0.00','0.00','Metallic','Black','Brown',53.60,1);
INSERT INTO Cul_dAmpolla.products VALUE('','Polaroid','Nature','+0.25','+0.25','Metallic','Black','Brown',63.60,1);
INSERT INTO Cul_dAmpolla.products VALUE('','Polaroid','Nature','-0.25','-0.25','Metallic','Black','Brown',63.60,1);
INSERT INTO Cul_dAmpolla.products VALUE('','Polaroid','Nature PRO','0.00','0.00','Paste','Black','Yellow',74.10,1);
INSERT INTO Cul_dAmpolla.products VALUE('','Polaroid','Nature PRO','+0.25','+0.25','Metallic','Black','Yellow',85.20,1);

INSERT INTO Cul_dAmpolla.products VALUE('','Police','Atack','0.00','0.00','Metallic','Black','Brown',53.60,1);
INSERT INTO Cul_dAmpolla.products VALUE('','Police','Force','+0.25','+0.25','Paste','Black','Brown',85.20,1);

SELECT *
FROM products;

CREATE TABLE Cul_dAmpolla.clients
(
   id_client INT(4) NOT NULL AUTO_INCREMENT,
   full_name VARCHAR(40) NOT NULL,
   full_adress VARCHAR(100) NOT NULL,
   email VARCHAR(40) NOT NULL,
   telefone VARCHAR(40) NOT NULL,
   create_date DATE,
   friend_id INT(4),
   UNIQUE (id_client),
   PRIMARY KEY (id_client)
)
ENGINE = InnoDB;

INSERT INTO Cul_dAmpolla.clients VALUE('','Ramiro Vazques','C. Fort 345, 1-1A, 08013, Barcelona, España','ramirito1990@hotmail.com','+34055566733','2020-01-04','');
INSERT INTO Cul_dAmpolla.clients VALUE('','Jessi Quertz','C. Wellintomg 51, 08017, Barcelona, España','quert_jes@hotmail.com','+1112333313','2020-03-02','');
INSERT INTO Cul_dAmpolla.clients VALUE('','Jordi DelFont','C. Esquiu 71, 08000, Barcelona, España','ventas_inm@outlook.com','+291135522333','2020-03-06','1');
INSERT INTO Cul_dAmpolla.clients VALUE('','Willy Morgan','Paj. Agbar 96, 08001, Barcelona, España','acer_ultra@ibm.com','+01948576939','2020-4-27','1');

SELECT *
FROM clients;

CREATE TABLE Cul_dAmpolla.sales
(
   id_sale INT(4) NOT NULL AUTO_INCREMENT,
   product_id INT(4) NOT NULL,
   saler_id VARCHAR(40) NOT NULL,
   client_id INT(4) NOT NULL,
   UNIQUE (id_sale),
   PRIMARY KEY (id_sale)
)
ENGINE = InnoDB;

INSERT INTO Cul_dAmpolla.sales VALUE('',1,'Jenny_Pereyra',1);
INSERT INTO Cul_dAmpolla.sales VALUE('',4,'Jenny_Pereyra',2);
INSERT INTO Cul_dAmpolla.sales VALUE('',7,'Jenny_Pereyra',3);
INSERT INTO Cul_dAmpolla.sales VALUE('',10,'Ramiro_del_Sel',1);
INSERT INTO Cul_dAmpolla.sales VALUE('',2,'Ramiro_del_Sel',4);

SELECT *
FROM sales;

ALTER TABLE sales
ADD CONSTRAINT id_product_id
FOREIGN KEY (client_id)
REFERENCES clients(id_client);

ALTER TABLE sales
ADD CONSTRAINT id_client_id
FOREIGN KEY (product_id)
REFERENCES products(id_product);

ALTER TABLE products
ADD CONSTRAINT id_supplier_id
FOREIGN KEY (supplier_id)
REFERENCES suppliers(id_supplier);
