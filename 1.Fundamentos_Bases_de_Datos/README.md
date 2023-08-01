# [Curso de Fundamentos de Bases de Datos](https://platzi.com/cursos/bd/)

- ## Bienvenida conceptos básicos y contexto histórico de las Bases de Datos

  - ### Bienvenida conceptos básicos y contexto histórico de las Bases de Datos
  
  - ### Playground: tu primera consulta en bases de datos

- ## Introducción a las bases de datos relacionales

  - ### Historia de las bases de datos relacionales

  - ### Qué son entidades y atributos

  - ### Entidades de Platzi Blog

  - ### Relaciones

  - ### Múltiples muchos

  - ### Diagrama ER

  - ### Diagrama Físico: tipos de datos y constraints

  - ### Diagrama Físico: normalización

  - ### Formas normales en Bases de Datos relacionales

  - ### Diagrama Físico: normalizando Platziblog

- ## RDBMS (MySQL) o cómo hacer lo anterior de manera práctica

  - ### Instalación local de un RDBMS (Windows)

  - ### ¿Qué es RDB y RDBMS?

  - ### Instalación local de un RDBMS (Mac)

  - ### Instalación local de un RDBMS (Ubuntu)

  - ### Clientes gráficos

  - ### Servicios administrados

- ## SQL hasta en la sopa

  - ### Historia de SQL

  - ### DDL create

    El grupo de comandos(sentencias) relacionadas con el grupo DDL son:

    - CREATE
    - ALTER
    - DROP
    - TRUNCATE
    - COMMENT
    - RENAME

    <br>
    <br>

    ```MySQL
    CREATE SCHEMA `platziblog` DEFAULT CHARACTER SET utf8mb4;
    ```
    con el anterior query se crea la Base de Datos `CREATE SCHEMA platziblog` y se incluye el grupo de caracteres utf8 `DEFAULT CHARACTER SET utf8mb4`.

    <br>

    ```MySQL
    USE `platziblog`
    ```

    con el query anterior se define la base de datos `platziblog` como la predeterminada para que todos los queries que se ejecuten sean aplicados sobre la base de datos `platziblog`.

    <br>

    ```MySQL
    CREATE TABLE `platziblog`.`people` (
    `person_id` INT NOT NULL AUTO_INCREMENT,
    `last_name` VARCHAR(255) NULL,
    `first_name` VARCHAR(255) NULL,
    `address` VARCHAR(255) NULL,
    `city` VARCHAR(255) NULL,
    PRIMARY KEY (`person_id`));
    ```

    Una vez creada la base de datos y seleccionada, se crea la tabla `people`con los campos `person_id`, `last_name`, `first_name`, `address` y `city`, cada un de estos campos tiene sus propios constaints, para el caso `person_id` es de tipo entereo `INT`, no puede ser nulo el campo `NOT NULL` y es de tipo autoincremental `AUTO_INCREMENT`, así sucesivamente los demás campos con sus respectivos contrainsts.

  - ### Playground: CREATE TABLE

  - ### CREATE VIEW y DDL ALTER

  - ### DDL drop

  - ### Playground: VIEW, ALTER y DROP en SQL

  - ### DML

  - ### Playground: CRUD con SQL

  - ### ¿Qué tan standard es SQL?

  - ### Creando Platziblog: tablas independientes

  - ### Creando Platziblog: tablas dependientes

  - ### Creando Platziblog: tablas transitivas

- ## Consultas a una base de datos

  - ### ¿Por qué las consultas son tan importantes?

  - ### Estructura básica de un Query

  - ### SELECT

  - ### Playground: SELECT en SQL

  - ### FROM y SQL JOINs

  - ### Utilizando la sentencia FROM

  - ### Playground: FROM y LEFT JOIN en SQL

  - ### WHERE

  - ### Utilizando la sentencia WHERE nulo y no nulo

  - ### Playground: Filtrando Datos con WHERE

  - ### GROUP BY

  - ### ORDER BY y HAVING

  - ### Playground: Agrupamiento y Ordenamiento de Datos

  - ### El interminable agujero de conejo (Nested queries)

  - ### ¿Cómo convertir una pregunta en un query SQL?

  - ### Preguntándole a la base de datos

  - ### Consultando PlatziBlog

  - ### Playground: Prueba Final con PlatziBlog

- ## Introducción a la bases de datos NO relacionales

  - ### ¿Qué son y cuáles son los tipos de bases de datos no relacionales?

  - ### Servicios administrados y jerarquía de datos

- ## Manejo de modelos de datos en bases de datos no relacionales

  - ### Top level collection con Firebase

  - ### Creando y borrando documentos en Firestore

  - ### Colecciones vs subcolecciones

  - ### Recreando Platziblog

  - ### Construyendo Platziblog en Firestore

  - ### Proyecto final: transformando tu proyecto en una db no relacional

- ## Bases de datos en la vida real

  - ### Bases de datos en la vida real

  - ### Big Data

  - ### Data warehouse

  - ### Data mining

  - ### ETL

  - ### Business intelligence

  - ### Machine Learning

  - ### Data Science
  
  - ### ¿Por qué aprender bases de datos hoy?

- ## Bonus

  - ### Bases de datos relacionales vs no relacionales

  - ### Elegir una base de datos
  