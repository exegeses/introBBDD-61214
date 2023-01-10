-- id, nombre, apellido, rol  (versión table relation)
SELECT idUsuario, nombre, apellido, rol
  FROM usuarios, roles
  WHERE usuarios.idRol = roles.idRol;

-- id, nombre, apellido, rol (versión JOIN)
SELECT idUsuario, nombre, apellido, rol
FROM usuarios
 JOIN roles
  ON usuarios.idRol = roles.idRol;

-- id, nombre, apellido, rol
-- de los empleados de Pied Piper
SELECT idUsuario, nombre, apellido, rol
FROM usuarios
 JOIN roles
  ON usuarios.idRol = roles.idRol
WHERE email LIKE '%piedpiper%';

-- obtener un listado de todos los usuarios
-- ordenados por fecha de nacimiento
SELECT * FROM usuarios
ORDER BY fechaNacimiento;

-- obtener un listado de todos los usuarios
-- nacidos en el mes de agosto
SELECT * FROM usuarios
WHERE fechaNacimiento LIKE '%-08-%';

SELECT * FROM usuarios
WHERE  MONTH( fechaNacimiento ) = 8;

-- obtener un listado de todos los usuarios
-- nacidos año 1998
SELECT * FROM usuarios
WHERE fechaNacimiento LIKE '1998-%';

SELECT * FROM usuarios
WHERE YEAR(fechaNacimiento) = 1998;

SELECT * FROM usuarios
WHERE fechaNacimiento  >= '1998-01-01'
  AND fechaNacimiento <= '1998-12-31';

SELECT * FROM usuarios
WHERE fechaNacimiento
          BETWEEN '1998-01-01'
          AND '1998-12-31';

-- obtener un listado de todos los usuarios
-- nacidos en junio de 1998
SELECT * FROM usuarios
WHERE month(fechaNacimiento) = 6
  AND YEAR( fechaNacimiento ) = 1998;

-- meses transcurridos desde el último login
SELECT nombre, apellido, fechaLogin,
       TIMESTAMPDIFF( month, fechaLogin, CURRENT_DATE() ) 'meses transcurridos'
FROM usuarios;

-- obteniendo edad de los usuarios
SELECT nombre, apellido, fechaNacimiento,
       TIMESTAMPDIFF(year, fechaNacimiento, curdate() ) as edad
FROM usuarios;
