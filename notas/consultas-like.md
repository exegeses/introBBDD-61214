# Consultas para buscar concidencias 

> Para buscar coincidencias de texto se utiliza 
> la palabra ***LIKE***

> Buscar que en el nombre contenga Marshall

    SELECT prdNombre, prdPrecio  
		FROM productos  
        WHERE prdNombre LIKE '%Marshall%'  

> ***Nota:*** el símbolo ***%*** indica que puede haber uno, varios o ningún caracter en ese lugar. 

> Buscar que en la descripción comience con Altavoz 

    SELECT prdNombre, prdPrecio, prdDescripcion   
		FROM productos  
		WHERE prdDescripcion LIKE 'Altavoz%';  

> Buscar nombre, marca, precio, descripcion 
> dónde en la descripcioón contenga "Smart"  

    SELECT prdNombre, mkNombre, prdPrecio, prdDescripcion  
        FROM productos, marcas  
        WHERE productos.idMarca = marcas.idMarca  
        AND prdDescripcion LIKE '%Smart%';  


> Buscar nombre, precio, marca, categoría, descripcion
> dónde en la descripcioón comience con "Altavoz"

    SELECT prdNombre, prdPrecio, mkNombre, catNombre, prdDescripcion  
        FROM productos, marcas, categorias  
        WHERE productos.idMarca = marcas.idMarca  
        AND productos.idCategoria = categorias.idCategoria  
        AND prdDescripcion LIKE 'Altavoz%';
 
