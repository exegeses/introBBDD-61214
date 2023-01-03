# Modificar estructura de una tabla  

## Cambiar nombre de una columna  

    ALTER TABLE  nombreTabla  
        CHANGE nombreViejo nombreNuevo tipoDato;  

    ALTER TABLE destinos   
        CHANGE destAsientos modificado TINYINT NOT NULL;  

## Cambiar tipo de dato de una columna 

    ALTER TABLE nombreTabla  
        MODIFY nombreCampo tipoDato modificador  

    ALTER TABLE destinos  
        MODIFY destNombre  varchar(60) NOT NULL;  

    ALTER TABLE destinos   
        MODIFY destPrecio float(9,2) NOT NULL;  

## Agregar una nueva columna  

    ALTER TABLE nombreTabla  
        ADD nombreCampo tipoDato modificador;  

    ALTER TABLE destinos  
        ADD prueba VARCHAR(30) NOT NULL;

    ALTER TABLE destinos  
        ADD fecha DATE NOT NULL DEFAULT '2023-01-01';

    ALTER TABLE destinos  
        ADD prueba2 varchar(30) not null AFTER destActivo;  

## Eliminar una columna de una tabla  

    ALTER TABLE nombreTabla  
        DROP nombreCampo;  

    ALTER TABLE destinos 
        DROP prueba;