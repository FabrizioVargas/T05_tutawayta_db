USE tabla_maestra;

INSERT INTO rol (id_rol, nombre_rol) VALUES
(1, 'Administrador'),
(2, 'Vendedor');

INSERT INTO socio (id_socio, nombre, apellido, direccion_cliente, phone, id_rol) VALUES
(1, 'Oscar', 'Sanchez', 'Av. Principal', '987654321', 1),
(2, 'Juan', 'Perez', 'Jr. Lima', '912345678', 2);

INSERT INTO usuario (id_usuario, id_socio, username, password) VALUES
(1, 1, 'admin', 'admin123'),
(2, 2, 'vendedor', 'vendedor123');

INSERT INTO cliente (id_cliente, nombre, apellido, dni, phone, direccion, ciudad) VALUES
(1, 'Maria', 'Lopez', '12345678', '999888777', 'Av. Los Pinos', 'Lima'),
(2, 'Carlos', 'Ramirez', '87654321', '988777666', 'Jr. Comercio', 'Piura');

INSERT INTO categoria (id_categoria, nombre_categoria) VALUES
(1, 'Bebidas'),
(2, 'Lacteos'),
(3, 'Abarrotes');

INSERT INTO unidad_medida (id_unidad, nombre_unidad) VALUES
(1, 'Unidad'),
(2, 'Kg'),
(3, 'Litro');

INSERT INTO producto (
    id_producto,
    nombre,
    descripcion,
    unidad_medida,
    precio,
    id_categoria,
    id_unidad
) VALUES
(1, 'Leche Gloria', 'Leche evaporada', 'Unidad', 4.50, 2, 1),
(2, 'Arroz Costeno', 'Arroz extra', 'Kg', 5.20, 3, 2),
(3, 'Coca Cola 1L', 'Gaseosa', 'Litro', 6.00, 1, 3);
