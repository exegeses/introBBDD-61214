# Relaciones entre tablas 

> Cuando queremos traer información de más de una tabla
> (dos a más) debemos relacionar ambas tablas  

> La técnica "Table relation" iguala el campo en com´´un a ambas tablas.  
 
    SELECT destNombre, destPrecio, regNombre  
        FROM destinos, regiones  
        WHERE destinos.idRegion = regiones.idRegion;  
        
 