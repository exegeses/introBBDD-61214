# Modificar datos de un tabla 

> Para modificar datos de una tabla utilizamos el comando ***"UPDATE"***. 
> Sintáxis:

    UPDATE nombreTabla  
        SET campo = valor,  
            campo = valor
        WHERE id = valor;

    UPDATE productos  
	  SET prdPrecio = 100,  
		prdNombre = 'Homepod Mini test'  
    WHERE idProducto = 4;

