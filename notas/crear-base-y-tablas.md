# Crear bases y tablas

## Bases
> sintáxis

    CREATE DATABASE introDB; 

> Si queremos empezar a interactuar con un base de datos,  
> primero debemos activarla.
> Para activar una base de datos, usamos el comando "use".  

    USE introDB;  

## Tablas

> Para crear una tabla, tenemos el comando "create table"  
> sintáxis  

    CREATE TABLE nombreTabla 
        ( 
            campo1 tipoDato características,
            campo2 tipoDato características,
            campo3 tipoDato características,
            campo4 tipoDato características
        );  

    CREATE TABLE billeteras
        (
            id int primary key auto_increment not null,  
            nombre varchar(30) not null,  
            precio float(9,2) not null,
            stock int not null
        );

> Ver qué tablas tenemos
    SHOW TABLES;  

> Ver la info de una tabla  
    DESCRIBE nombreTabla;  

