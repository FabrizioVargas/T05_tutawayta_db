CREATE DATABASE IF NOT EXISTS tabla_maestra;
USE tabla_maestra;

-- ==========================================
-- TABLA: ROL
-- ==========================================
CREATE TABLE rol (
    id_rol INT AUTO_INCREMENT PRIMARY KEY,
    nombre_rol VARCHAR(30) NOT NULL
);

INSERT INTO rol (nombre_rol) VALUES
('Administrador'),
('Vendedor');

-- ==========================================
-- TABLA: SOCIO
-- ==========================================
CREATE TABLE socio (
    id_socio INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    direccion_cliente VARCHAR(15),
    phone VARCHAR(20),
    id_rol INT NOT NULL,
    FOREIGN KEY (id_rol) REFERENCES rol(id_rol)
);

INSERT INTO socio (nombre, apellido, direccion_cliente, phone, id_rol) VALUES
('Oscar', 'Sanchez', 'Av. Principal', '987654321', 1),
('Juan', 'Perez', 'Jr. Lima', '912345678', 2);

-- ==========================================
-- TABLA: USUARIO
-- ==========================================
CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    id_socio INT NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    ultimo_ingreso TIMESTAMP NULL,
    FOREIGN KEY (id_socio) REFERENCES socio(id_socio)
);

INSERT INTO usuario (id_socio, username, password) VALUES
(1, 'admin', 'admin123'),
(2, 'vendedor', 'vendedor123');

-- ==========================================
-- TABLA: CLIENTE
-- ==========================================
CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    dni VARCHAR(15) NOT NULL,
    phone VARCHAR(20),
    direccion VARCHAR(100),
    ciudad VARCHAR(50)
);

INSERT INTO cliente (nombre, apellido, dni, phone, direccion, ciudad) VALUES
('Maria', 'Lopez', '12345678', '999888777', 'Av. Los Pinos', 'Lima'),
('Carlos', 'Ramirez', '87654321', '988777666', 'Jr. Comercio', 'Piura');

-- ==========================================
-- TABLA: CATEGORIA
-- ==========================================
CREATE TABLE categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL
);

INSERT INTO categoria (nombre_categoria) VALUES
('Bebidas'),
('Lácteos'),
('Abarrotes');

-- ==========================================
-- TABLA: UNIDAD_MEDIDA
-- ==========================================
CREATE TABLE unidad_medida (
    id_unidad INT AUTO_INCREMENT PRIMARY KEY,
    nombre_unidad VARCHAR(20) NOT NULL
);

INSERT INTO unidad_medida (nombre_unidad) VALUES
('Unidad'),
('Kg'),
('Litro');

-- ==========================================
-- TABLA: PRODUCTO
-- ==========================================
CREATE TABLE producto (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255),
    unidad_medida VARCHAR(20),
    precio DECIMAL(10,2) NOT NULL,
    id_categoria INT NOT NULL,
    id_unidad INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria),
    FOREIGN KEY (id_unidad) REFERENCES unidad_medida(id_unidad)
);

INSERT INTO producto (
    nombre,
    descripcion,
    unidad_medida,
    precio,
    id_categoria,
    id_unidad
) VALUES
('Leche Gloria', 'Leche evaporada', 'Unidad', 4.50, 2, 1),
('Arroz Costeño', 'Arroz extra', 'Kg', 5.20, 3, 2),
('Coca Cola 1L', 'Gaseosa', 'Litro', 6.00, 1, 3);

-- ==========================================
-- TABLA: INVENTARIO
-- ==========================================
CREATE TABLE inventario (
    id_inventario INT AUTO_INCREMENT PRIMARY KEY,
    id_producto INT NOT NULL,
    cantidad_disponible INT NOT NULL,
    fecha_actualizacion DATE,
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

INSERT INTO inventario (
    id_producto,
    cantidad_disponible,
    fecha_actualizacion
) VALUES
(1, 100, CURDATE()),
(2, 200, CURDATE()),
(3, 150, CURDATE());

-- ==========================================
-- TABLA: COMPRA
-- ==========================================
CREATE TABLE compra (
    id_compra INT AUTO_INCREMENT PRIMARY KEY,
    id_producto INT NOT NULL,
    fecha_compra DATE NOT NULL,
    cantidad INT NOT NULL,
    precio_compra DECIMAL(10,2) NOT NULL,
    id_socio INT NOT NULL,
    proveedor VARCHAR(100),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
    FOREIGN KEY (id_socio) REFERENCES socio(id_socio)
);

INSERT INTO compra (
    id_producto,
    fecha_compra,
    cantidad,
    precio_compra,
    id_socio,
    proveedor
) VALUES
(1, CURDATE(), 50, 4.00, 1, 'Distribuidora Gloria'),
(2, CURDATE(), 100, 4.80, 1, 'Molinera Norte'),
(3, CURDATE(), 80, 5.50, 2, 'Coca Cola Perú');

-- ==========================================
-- TABLA: VENTA
-- ==========================================
CREATE TABLE venta (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    id_socio INT NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_socio) REFERENCES socio(id_socio),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

INSERT INTO venta (
    fecha,
    total,
    id_socio,
    id_cliente
) VALUES
(CURDATE(), 14.20, 1, 1),
(CURDATE(), 12.00, 2, 2);

-- ==========================================
-- TABLA: DETALLE_VENTA
-- ==========================================
CREATE TABLE detalle_venta (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_venta INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_venta) REFERENCES venta(id_venta),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

INSERT INTO detalle_venta (
    id_venta,
    id_producto,
    cantidad,
    precio_unitario
) VALUES
(1, 1, 2, 4.50),
(1, 2, 1, 5.20),
(2, 3, 2, 6.00);

-- ==========================================
-- CONSULTAS DE VERIFICACIÓN
-- ==========================================
SELECT * FROM rol;
SELECT * FROM socio;
SELECT * FROM usuario;
SELECT * FROM cliente;
SELECT * FROM categoria;
SELECT * FROM unidad_medida;
SELECT * FROM producto;
SELECT * FROM inventario;
SELECT * FROM compra;
SELECT * FROM venta;
SELECT * FROM detalle_venta;