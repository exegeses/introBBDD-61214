# Insertar datos en una tabla

> Para insertar datos en una tabla,
> utizamos el comando "INSERT"   

> Sintáxis versión a

    INSERT INTO nombreTabla   
        ( nCampo1, nCampo2, nCampoX )  
        VALUES    
        ( valor1, valor2, valorX );  

    INSERT INTO billeteras  
        ( nombre, precio, stock )  
        VALUES  
        ( 'Ledger Nano S', 16000, 30 );


> Sintáxis versión b  

    INSERT INTO billeteras  
        VALUES  
        ( valor1, valor2, valorX );  

    INSERT INTO billeteras  
        VALUES  
        ( DEFAULT, 'Trezor T', 78000, 20 );  