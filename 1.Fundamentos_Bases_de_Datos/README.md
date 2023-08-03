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

    <br>

  - ### Playground: CREATE TABLE
    
    El ejercio propuesto para aplicar los queries vistos es:
    
    <br>

    **Ejercicio CREATE TABLE**

    Debes crear una tabla de datos que permita almacenar información sobre personas, llamada `people`. La tabla tendrá cinco campos: `person_id`, `last_name`, `first_name`, `address`, y `city`.

    - La columna `person_id` debe ser de tipo entero, debe ser la llave primaria de la tabla, debe ser autoincremental y recuerde no permitir valores NULOS.

    - La columna `last_name` debe ser de tipo texto, debe tener un tamaño máximo de 100 caracteres y debe permitir valores NULOS.

    - La columna `first_name` debe ser de tipo texto, debe tener un tamaño máximo de 100 caracteres y debe permitir valores NULOS.

    - La columna `address` debe ser de tipo texto, debe tener un tamaño máximo de 30 caracteres y debe permitir valores NULOS.

    - La columna `city` debe ser de tipo texto, debe tener un tamaño máximo de 50 caracteres y debe permitir valores NULOS.

    <br>

    El desarrollo se encuentra en la carpeta [1.Fundamentos_Bases_de_Datos](/1.Fundamentos_Bases_de_Datos/exercise21_R.sql).

    <br>

  - ### CREATE VIEW y DDL ALTER

    ```MySQL
    ALTER TABLE people 
    ADD date_of_birth date;
    ```

    En su forma más básica agregar un campo se hace con la sentencia `ALTER TABLE + ADD`, en el query anterior hora se modificará la tabla `people`, agregando el campo `date_of_birth` con el constraint `date`.

    <br>

    ```MySQL
    ALTER TABLE `platziblog`.`people` 
    ADD `correo` VARCHAR(45) NULL AFTER `address`;
    ```
    
    El query anterior está escrito más completo varios cambios:
    - Se está haciendo una referencia explicita a la base de datos donde se harán los cambio `platziblog` y a la tabla dónde se agregará el nuevo campo `people`
    - Se tiene el acento grave (alt+96) en los componentes de la tabla como `platziblog`, `people`, `correo` y `address`
    - Constraint `VARCHAR(45)`, valor predeterminado `NULL`
    - Por último la sentencia `AFTER` para indicar dónde se va a ubicar el nuevo campo, o sea que `correo` irá seguido de `address`

    <br>

    ```MySQL
    ALTER TABLE `platziblog`.`people`
    CHANGE COLUMN `date_of_birth` `year` DATE NULL DEFAULT NULL;
    ```

    El query anterior hace el cambio del nombre del campo `date_of_birth` por `year`, con el contraint `DATE` y que de manera predeterminada se llene con NULL

    <br>

     ```MySQL
    ALTER TABLE `people`
    DROP COLUMN `year`;
    ```

    El query que precede elimina el campo `year`; originalmente cuando se inició la actividad se agregó el campo `date_of_birth`.

    <br>

    ```MySQL
    ALTER TABLE `platziblog`.`people` 
    ADD COLUMN `date_of_birth` DATETIME NULL AFTER `city`;
    ```

    con el anterior query se agregó el campo `date_of_birth` en la tabla `people` de la base de datos `platziblog`, de tipo DATETIME, NULL como predeterminada, dicho campo va despues del campo `city`

    <br>

    ```MySQL
    ALTER TABLE `platziblog`.`people` 
    CHANGE COLUMN `date_of_birth` `date_of_birth` VARCHAR(30) NULL DEFAULT NULL ;
    ```

    con el anterior query se cambio el tipo de dato del campo `date_of_birth`

    <br>

    ```MySQL
    ALTER TABLE `platziblog`.`people` 
    DROP COLUMN `date_of_birth`;
    ```

    con el anterior query se eliminó el campo `date_of_birth`

    <br>

    ```MySQL
    INSERT INTO `platziblog`.`people` (`person_id`, `last_name`, `first_name`, `address`, `city`) VALUES ('1', 'Vásquez', 'Israel', 'Calle Famosa Num 1','México'), ('2', 'Hernández', 'Mónica', 'Reforma 222', 'México'), ('3', 'Alanis', 'Edgar', 'Central 1', 'Monterrey');
    ```

    con el anterior query se llenan los datos de la tabla.

    <br>

  - ### DDL drop

    <br>
    
    ```MySQL
    DROP TABLE `platziblog`,`people`;
    ```
    Este query borra la tabla `people` de la base de datos `platziblog`.

    <br>

      ```MySQL
    DROP DATABASE `platziblog`;
    ```
    El query borra la base de datos `platziblog`

    <br>

    >[Lectura recomendada: ¿Qué es DDL? Qué significa DML, DCL y TCL + Integridad Referencial](https://platzi.com/blog/que-es-ddl-dml-dcl-y-tcl-integridad-referencial/)

  - ### Playground: VIEW, ALTER y DROP en SQL
    
    Debes imprimir los siguientes 4 bloques de información:

    La tabla `people` ya tiene información cargada. No debes agregar nueva información, solo imprimirla.

    1. Crear una vista en SQL basado en la tabla de people con los campos `person_id`, `last_name`, `first_name`:

       Crea una vista llamada `v_madrid_customers` que muestre únicamente el `person_id`, `last_name` y `first_name` de todas las personas que vivan en la ciudad de "Madrid".

       Para crear esta vista, puedes seguir los siguientes pasos:

       ```MySQL
       CREATE VIEW vista_personas AS
       SELECT person_id
       FROM personas
       ```
      <br>

    2. Este comando creará una vista llamada vista_personas que selecciona solamente el `person_id` tabla personas.

        Una vez que hayas creado la vista, puedes utilizar el siguiente comando para seleccionar los datos de la vista:

        ```MySQL
        SELECT * FROM vista_personas;      
        ```

      <br>

      Aquí te propongo 2 retos adicionales, vamos a poner a prueba nuestra habilidad en la manipulación de tablas en SQL.

      <br>

    3. El reto es agregar un nuevo campo llamado `date_of_birth` con el tipo de campo `DATE` a la tabla `people`.

        ```MySQL
        ALTER TABLE table_name
        ADD COLUMN column_definition;
        ```

    4. El reto es eliminar el campo `address` de la tabla people.

        ```MySQL
        ALTER TABLE table_name
        DROP COLUMN ;
        ```

    El desarrollo se encuentra en la carpeta [1.Fundamentos_Bases_de_Datos como "exercise24_R.sql"](/1.Fundamentos_Bases_de_Datos/exercise24_R.sql).

  - ### DML
    El grupo de comandos(sentencias) DML relacionados a continuación permiten realizar diferentes acciones a los datos que se encuentran en una base de datos.

    - SELECT: Inserta o agrega nuevos registros a la tabla.
    - INSERT: Actualiza o modifica los datos que ya existen.
    - UPDATE: Esta sentencia es riesgosa porque puede borrar el contenido de una tabla.
    - DELETE: Trae información de la base de datos.

    <br>

    ```MySQL
    CREATE SCHEMA `platzi_test`;  

    USE `platzi_test`;

    CREATE TABLE `platzi_test`.`new_table` (
    `person_id` INT NOT NULL,
    `last_name` VARCHAR(45) NULL,
    `first_name` VARCHAR(45) NULL,
    `address` VARCHAR(45) NULL,
    `city` VARCHAR(45) NULL,
    PRIMARY KEY (`person_id`));

    INSERT INTO `platzi_test`.`people` (`last_name`,`first_name`,`address`,`city`) VALUES
    ('Vázquez', 'Israel','Reforma 222','México'),
    ('Alanis','Edgar','Avenida siempreviva', 'Morelia'),
    ('Hernández','Mónica','Pensilvania 1600','Aguascalientes');
    ```
    El script anterior es para generar la base de datos con la respectiva tabla con la que se está trabajando.

    <br>

    Ahora se va trabajar con el comando `INSERT`
    ```MySQL
    INSERT INTO `people` (`last_name`,`first_name`,`address`,`city`)
    VALUES ('Hernández', 'Laura', 'Calle 21', 'Monterrey');
    ```
    Este query se usa para insertar un registro a la base de datos y es importante resaltar que el orden en el que se escriben los datos a ingresar es estricto, así

    ![INSERT_INTO](/1.Fundamentos_Bases_de_Datos/imagenes/INSERT_INTO.png)
    
    El primer campo `last_name` debe corresponder con el primer valor en la seccion `VALUES` o sea 'Hernández'

    >Como ha podido observar en el último query se usó, se manejó el acento grave `` (Alt + 96) y las comillas sencillas '' (alt + 39). El acento grave se usa para delimitar elementos de la base de datos como el nombre de la base de datos, el nombre de los **campos**, nombre de los **registros**, mientras que las comillas sencillas se usan para los **datos** de la tabla.
    <br>
    <br>
    ![INSERT_INTO](/1.Fundamentos_Bases_de_Datos/imagenes/CAMPO_REGISTRO_DATOS.png)
    [origen de la imagen](https://www.iesandresbojollo.es/tiyc/base/3-Tablas.html)

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
  