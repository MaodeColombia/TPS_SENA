CREATE TABLE IF NOT EXISTS `people` (
`person_id` INT PRIMARY KEY AUTOINCREMENT NOT NULL,
`last_name` VARCHAR(255) NULL,
`first_name` VARCHAR(255) NULL,
`address` VARCHAR(255) NULL,
`city` VARCHAR(255) NULL
);

/*
Para qué sirve esta seccion de código?
    
    IF NOT EXISTS
*/