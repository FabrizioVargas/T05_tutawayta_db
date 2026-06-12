USE tutawayta_db;

INSERT INTO INVENTORY (inventory_id, product_id, available_quantity, updated_at) VALUES
(1, 1, 100, CURDATE()),
(2, 2, 200, CURDATE()),
(3, 3, 150, CURDATE()),
(4, 4, 120, CURDATE()),
(5, 5, 90, CURDATE()),
(6, 6, 180, CURDATE()),
(7, 7, 75, CURDATE()),
(8, 8, 140, CURDATE()),
(9, 9, 60, CURDATE()),
(10, 10, 110, CURDATE());

INSERT INTO PURCHASE (
    purchase_id,
    product_id,
    purchase_date,
    quantity,
    purchase_price,
    partner_id,
    supplier
) VALUES
(1, 1, CURDATE(), 50, 18.00, 1, 'Fundo Tutawayta'),
(2, 2, CURDATE(), 100, 15.00, 1, 'Productores Palora'),
(3, 3, CURDATE(), 80, 14.00, 2, 'Vivero Tesoro Verde'),
(4, 4, CURDATE(), 70, 11.50, 2, 'Asociacion Fruticola Blanca'),
(5, 5, CURDATE(), 60, 16.80, 3, 'Fundo Pitahaya Roja'),
(6, 6, CURDATE(), 120, 19.50, 4, 'Cultivos Golden Dragon'),
(7, 7, CURDATE(), 45, 17.20, 5, 'Productores Purpurea'),
(8, 8, CURDATE(), 90, 13.50, 6, 'Importadora Vietnam Fruit'),
(9, 9, CURDATE(), 35, 20.00, 7, 'Costa Rica Tropical'),
(10, 10, CURDATE(), 80, 16.00, 8, 'Frutas Colombianas SAC');

INSERT INTO SALE (sale_id, sale_date, total_amount, partner_id, client_id) VALUES
(1, CURDATE(), 47.80, 1, 1),
(2, CURDATE(), 39.80, 2, 2),
(3, CURDATE(), 37.00, 3, 3),
(4, CURDATE(), 29.80, 4, 4),
(5, CURDATE(), 43.80, 5, 5),
(6, CURDATE(), 24.90, 6, 6),
(7, CURDATE(), 45.00, 7, 7),
(8, CURDATE(), 17.90, 8, 8),
(9, CURDATE(), 51.80, 9, 9),
(10, CURDATE(), 41.00, 10, 10);

INSERT INTO SALE_DETAIL (
    detail_id,
    sale_id,
    product_id,
    quantity,
    unit_price
) VALUES
(1, 1, 1, 2, 23.90),
(2, 2, 2, 2, 19.90),
(3, 3, 3, 2, 18.50),
(4, 4, 4, 2, 14.90),
(5, 5, 5, 2, 21.90),
(6, 6, 6, 1, 24.90),
(7, 7, 7, 2, 22.50),
(8, 8, 8, 1, 17.90),
(9, 9, 9, 2, 25.90),
(10, 10, 10, 2, 20.50);
