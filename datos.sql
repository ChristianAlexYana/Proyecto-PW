
-- Crear base de datos 'datos' si no existe
CREATE DATABASE IF NOT EXISTS datos;
USE datos;

-- Crear tabla 'productos'
CREATE TABLE IF NOT EXISTS productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    precio DECIMAL(10, 2),
    tipo VARCHAR(30),
    url VARCHAR(255)
);

-- Insertar algunos productos en la tabla 'productos'
INSERT INTO productos (nombre, precio, tipo, url) VALUES
    ('redmi note 9', 500.00, 'Electronico', 'https://i.ibb.co/x2Nmg4h/remi.png'),
    ('laptop HP', 800.00, 'Electronico', 'https://i.ibb.co/sK69r2g/hplaptop.png'),
    ('sofá de dos plazas', 300.00, 'Mobiliario', 'https://i.ibb.co/sFK1L1k/sofa.png'),
    ('televisor 55" Samsung', 1000.00, 'Electronico', 'https://i.ibb.co/J2RtGdy/televisor.png');

-- Crear tabla 'usuarios'
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    email VARCHAR(100),
    contrasena VARCHAR(50)
);

-- Insertar algunos usuarios principales en la tabla 'usuarios'
INSERT INTO usuarios (nombre, email, contrasena) VALUES
    ('Juan Perez', 'juan.perez@example.com', 'contrasena123'),
    ('Limber', 'sarmientolimver86@gmail.com', '1234'),
    ('Pepito', 'sarmientolissssmver87@gmail.com', 'olhvida'),
    ('test', 'test@test.com', '1234');

-- Crear tabla 'compras'
CREATE TABLE IF NOT EXISTS compras (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100),
    producto_id INT,
    FOREIGN KEY (producto_id) REFERENCES productos(id)
);

-- Insertar algunas compras en la tabla 'compras'
INSERT INTO compras (email, producto_id) VALUES
    ('test@test.com', 1),
    ('juan.perez@example.com', 2),
    ('sarmientolimver86@gmail.com', 3);
