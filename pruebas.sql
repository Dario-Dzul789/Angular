-- Crear la base de datos
CREATE DATABASE db_usuarios;

-- Seleccionar la base de datos para trabajar con ella
USE db_usuarios;

-- Crear la tabla con los campos id, nombre y email
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    contrasena VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    fecha_nacimiento DateTime NOT NULL,
    signo VARCHAR(50) NOT NULL
);
CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(50) NOT NULL,
    precio float,
    existencia DOUBLE
);

CREATE TABLE ventas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_venta varchar(50) NOT NULL,
    productos text NOT NULL,
    total_venta DOUBLE NOT NULL,
    fecha_venta DateTime NOT NULL
);

CREATE TABLE ventasdetalles(
    id INT AUTO_INCREMENT PRIMARY KEY,
    idventa INT NOT NULL,
    idproducto INT NOT NULL,
    cantidad DOUBLE NOT NULL,
    precio_producto DOUBLE NOT NULL,
    total_producto DOUBLE NOT NULL
);

CREATE TABLE chats(
    id INT AUTO_INCREMENT PRIMARY KEY,
    idemisor INT NOT NULL,
    mensaje TEXT NOT NULL,
    idreceptor INT NOT NULL
);