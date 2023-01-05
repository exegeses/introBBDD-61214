# Relaciones entre tablas 

> Cuando queremos traer información de más de una tabla
> (dos a más) debemos relacionar ambas tablas  

> La técnica "Table relation" iguala el campo en común a ambas tablas.  
 
    SELECT destNombre, destPrecio, regNombre  
        FROM destinos, regiones  
        WHERE destinos.idRegion = regiones.idRegion;  


> La técnica "JOIN" tambien puede traer datos de otras tablas 

    SELECT prdNombre, prdPrecio, mkNombre  
	FROM productos  
    JOIN marcas  
      ON productos.idMarca = marcas.idMarca;    


    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
        FROM productos  
        JOIN marcas  
          ON productos.idMarca = marcas.idMarca  
        JOIN categorias  
          ON productos.idCategoria = categorias.idCategoria;  


   
 