/*Creación de la base de datos*/
CREATE SCHEMA `test_1`;

/*Seleción de la base de datos como predeterminada*/
USE `test_1`;

/*Creación de la tabla*/
 CREATE TABLE `people`(
    `person_id` INT NOT NULL AUTO_INCREMENT ,
    `last_name` VARCHAR(255) NULL ,
    `first_name` VARCHAR(255) DEFAULT NULL,
    `address` VARCHAR(255) DEFAULT NULL,
    `city` VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY(`person_id`));

/*Llenado de la tabla*/
INSERT INTO `people` (`person_id`, `last_name`, `first_name`, `address`, `city`) VALUES 
('1','Smith','John','123 Main St.','Anytown'),
('2','Doe','Jane','456 Maple St.','Mexico'),
('3','White','Jim','789 Elm St.','Colombia'),
('4','Black','Jack','101 Park Ave.','Madrid'),
('5','Green','Jill','202 Forest Rd.','London'),
('6','Blue','Mary','303 Ocean Blvd.','Paris'),
('7','Brown','Bob','404 Country Rd.','Berlin'),
('8','Pink','Bill','505 Hill St.','Rome'),
('9','Yellow','Sue','606 Lake St.','Athens'),
('10','Purple','Joe','707 River St.','Prague');


/*Solución ITEM 1*/
CREATE VIEW `v_madrid_customers` AS
SELECT `person_id`, `last_name`, `first_name`
FROM `people`
WHERE city = "Madrid";
/*Una buena práctica de código es colocar en el nombre de la visa una v_ al principio para que quede eplicito que el elemento creado no es una tabla sino una vista*/
/*tambien se puede agregar a la creación de la vista `OR REPLACE` para que agregue reemplace la vista en caso que ya este creada dicha vista, quedando asi `CREATE OR REPLACE VIEW v_madrid_customers AS...`*/

/*Solución ITEM 2*/
CREATE OR REPLACE VIEW `v_personas` AS
SELECT `person_id` FROM `people`;