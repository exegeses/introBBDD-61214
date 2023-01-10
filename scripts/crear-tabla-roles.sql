-- creación de tabla roles
CREATE TABLE roles
(
    idRol tinyint primary key auto_increment not null,
    rol varchar(30) not null
);

-- inserción de registros
INSERT INTO roles
VALUES
    ( DEFAULT, 'Administrador' ),
    ( DEFAULT, 'Supervisor' ),
    ( DEFAULT, 'Usuario' ),
    ( DEFAULT, 'Invitado' );

