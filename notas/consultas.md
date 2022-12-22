# Consultas a tablas

> Para generar consultas en SQL utilizamos 
> la sentencia ***"SELECT"*** 


     SELECT nCampo, nCampo2, nCampo3
        FROM nTabla;  

> Ejemplo: traer nombre y precio de la tabla destinos

    SELECT destNombre, destPrecio   
	    FROM destinos;

## Ordenando resgistros

> Ejemplo: traer nombre y precio de la tabla destinos  
> Ordenado por precio de mayor a menor  

    SELECT destNombre, destPrecio  
        FROM destinos  
        ORDER BY destPrecio desc;  

## Filtrando resultados  

> Para filtrar resultados utilizamos una condición  
> La condicion se implementa con la palabra reservada  
> *** WHERE ***  


> Traer nombre y precio de los destinos  
> donde el precio no supere 8000  

    SELECT destNombre, destPrecio   
        FROM destinos  
        WHERE destPrecio <= 8000;

> Traer nombre y precio de los destinos  
> donde el precio no supere 8000  
> y además ordenar los resultados por precio  

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE destPrecio <= 8000  
        ORDER BY destPrecio;

> Traer nombre y precio de los destinos  
> donde el precio esté entre los valoes 6600 y 8000  
 
    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE destPrecio <= 8000  
         AND destPrecio >= 6600  
        ORDER BY destPrecio;  

> Misma cuonsulta con la palabra *** BETWEEN *** 

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE destPrecio BETWEEN 6600 AND 8000  
        ORDER BY destPrecio;

> Traer nombre y precio de destinos 
> de la región 5  

    SELECT destNombre, destPrecio  
        FROM destinos
        WHERE idRegion = 5;

> Traer nombre y precio de destinos
> de la región 5 O de la región 8  
 
    SELECT destNombre, destPrecio  
        FROM destinos
        WHERE idRegion = 5
          OR idRegion = 8;

> Traer nombre y precio de destinos
> de la región 5 O de la región 8  
> ordenados por precio  

    SELECT destNombre, destPrecio  
        FROM destinos
        WHERE idRegion = 5
          OR idRegion = 8
		ORDER BY destPrecio;

> Resolviendo paréntesis  

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE ( idRegion = 5 OR idRegion = 8 )  
          AND destPrecio <= 8000  
		ORDER BY destPrecio;
        
> Implementando una subconsulta  

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE destPrecio = ( SELECT min(destPrecio) FROM destinos );  
        