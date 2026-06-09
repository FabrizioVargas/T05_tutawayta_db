USE tabla_maestra;

INSERT INTO inventario (id_inventario, id_producto, cantidad_disponible, fecha_actualizacion) VALUES
(1, 1, 100, CURDATE()),
(2, 2, 200, CURDATE()),
(3, 3, 150, CURDATE());

INSERT INTO compra (
    id_compra,
    id_producto,
    fecha_compra,
    cantidad,
    precio_compra,
    id_socio,
    proveedor
) VALUES
(1, 1, CURDATE(), 50, 4.00, 1, 'Distribuidora Gloria'),
(2, 2, CURDATE(), 100, 4.80, 1, 'Molinera Norte'),
(3, 3, CURDATE(), 80, 5.50, 2, 'Coca Cola Peru');

INSERT INTO venta (id_venta, fecha, total, id_socio, id_cliente) VALUES
(1, CURDATE(), 14.20, 1, 1),
(2, CURDATE(), 12.00, 2, 2);

INSERT INTO detalle_venta (
    id_detalle,
    id_venta,
    id_producto,
    cantidad,
    precio_unitario
) VALUES
(1, 1, 1, 2, 4.50),
(2, 1, 2, 1, 5.20),
(3, 2, 3, 2, 6.00);
