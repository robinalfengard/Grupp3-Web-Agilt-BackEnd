-- Outdoor kategori (category_id = 1)
INSERT INTO product (id, name, description, image, on_sale, price, number_in_stock, category_id)
VALUES
    (1, 'Outdoor Jacket', 'Waterproof, breathable jacket for outdoor activities', '/productImage/outdoor_jacket.avif', 1, 149.99, 50, 1),
    (2, 'Jacket', 'Warm jacket for cold weather', '/productImage/fleece_hoodie.avif', 0, 79.99, 30, 1),
    (3, 'Coat', 'Lightweight coat, perfect for autumn', '/productImage/rain_pants.avif', 1, 59.99, 40, 1),
    (4, 'Windbreaker', 'Light windbreaker jacket for windy conditions', '/productImage/windbreaker.avif', 0, 99.99, 25, 1),
    (5, 'Thermal Shirt', 'Moisture-wicking thermal shirt for outdoor use', '/productImage/thermal_shirt.avif', 0, 49.99, 60, 1),
    (6, 'Pants', 'Comfortable pants with stretch', '/productImage/hiking_pants.avif', 1, 89.99, 20, 1),
    (7, 'Leather jacket', 'Leather jacket for cold weather', '/productImage/base_layer.avif', 0, 69.99, 45, 1),
    (8, 'Puffy Jacket', 'Warm and comfortable jacket', '/productImage/outdoor_socks.avif', 1, 15.99, 100, 1),
    (9, 'Coat', 'Warm coat for cold weather', '/productImage/hat.avif', 0, 24.99, 50, 1),
    (10, 'Insulated Vest', 'Lightweight insulated vest for extra warmth', '/productImage/insulated_vest.avif', 1, 89.99, 20, 1);

-- Accessories kategori (category_id = 2)
INSERT INTO product (id, name, description, image, on_sale, price, number_in_stock, category_id)
VALUES
    (11, 'Leather Belt', 'Classic leather belt with a metal buckle', '/productImage/leather_belt.avif', 0, 39.99, 100, 2),
    (12, 'Wool Scarf', 'Soft wool scarf for cold weather', '/productImage/wool_scarf.avif', 1, 29.99, 50, 2),
    (13, 'Beanie Hat', 'Warm beanie hat with a snug fit', '/productImage/beanie_hat.avif', 0, 19.99, 200, 2),
    (14, 'Leather Gloves', 'Stylish leather gloves for winter', '/productImage/leather_gloves.avif', 0, 49.99, 30, 2),
    (15, 'Sunglasses', 'Polarized sunglasses with UV protection', '/productImage/sunglasses.avif', 1, 89.99, 70, 2),
    (16, 'Watch', 'Elegant wristwatch with leather strap', '/productImage/watch.avif', 0, 159.99, 20, 2),
    (17, 'Backpack', 'Compact city backpack with multiple pockets', '/productImage/backpack.avif', 1, 69.99, 40, 2),
    (18, 'Leather Wallet', 'Bifold leather wallet with card slots', '/productImage/leather_wallet.avif', 0, 49.99, 100, 2),
    (19, 'Silk Tie', 'Formal silk tie available in various colors', '/productImage/silk_tie.avif', 1, 25.99, 150, 2),
    (20, 'Knitted Gloves', 'Soft knitted gloves for everyday use', '/productImage/knitted_gloves.avif', 0, 15.99, 200, 2);

-- Trousers kategori (category_id = 3)
INSERT INTO product (id, name, description, image, on_sale, price, number_in_stock, category_id)
VALUES
    (21, 'Chinos', 'Casual slim-fit chinos for everyday wear', '/productImage/chinos.avif', 1, 59.99, 70, 3),
    (22, 'Dress pants', 'Classic straight-leg dress pants with a comfortable fit', '/productImage/jeans.avif', 0, 79.99, 100, 3),
    (23, 'Cargo Pants', 'Durable cargo pants with multiple pockets', '/productImage/cargo_pants.avif', 1, 69.99, 50, 3),
    (24, 'Suit Trousers', 'Tailored suit trousers for formal occasions', '/productImage/suit_trousers.avif', 0, 99.99, 30, 3),
    (25, 'Comfortable Trousers', 'Relaxed-fit trousers with an elastic waistband', '/productImage/joggers.avif', 1, 49.99, 80, 3),
    (26, 'Casual trousers', 'Casual trousers made from lightweight material', '/productImage/shorts.avif', 0, 39.99, 100, 3),
    (27, 'Corduroy Pants', 'Classic corduroy pants with a vintage style', '/productImage/corduroy_pants.avif', 1, 79.99, 40, 3),
    (28, 'Track Pants', 'Comfortable track pants for sports or lounging', '/productImage/track_pants.avif', 0, 49.99, 90, 3),
    (29, 'Dress Pants', 'Elegant dress pants with a slim fit', '/productImage/dress_pants.avif', 1, 89.99, 30, 3),
    (30, 'Linen Pants', 'Lightweight linen pants for summer wear', '/productImage/linen_pants.avif', 0, 59.99, 60, 3);

-- Skor kategori (category_id = 4)
INSERT INTO product (id, name, description, image, on_sale, price, number_in_stock, category_id)
VALUES
    (31, 'Sneakers', 'Comfortable sneakers with a modern design', '/productImage/sneakers.avif', 1, 99.99, 50, 4),
    (32, 'Leather Boots', 'Stylish leather boots for cold weather', '/productImage/leather_boots.avif', 0, 129.99, 40, 4),
    (33, 'Running Shoes', 'Lightweight running shoes with good grip', '/productImage/running_shoes.avif', 1, 89.99, 80, 4),
    (34, 'Loafers', 'Elegant loafers for casual or formal wear', '/productImage/loafers.avif', 0, 119.99, 30, 4),
    (35, 'Slippers', 'Cozy slippers with soft inner lining', '/productImage/flip_flops.avif', 1, 19.99, 100, 4),
    (36, 'Ankle Boots', 'Durable ankle boots for everyday use', '/productImage/ankle_boots.avif', 0, 109.99, 60, 4),
    (37, 'Boots', 'Boots with high-quality leather', '/productImage/high_heels.avif', 1, 139.99, 20, 4),
    (38, 'Sandals', 'Casual sandals with adjustable straps', '/productImage/sandals.avif', 0, 59.99, 70, 4),
    (39, 'High Heels', 'Elegant high heels for special occasions', '/productImage/slippers.avif', 1, 29.99, 200, 4),
    (40, 'Uggs', 'Classic ugs made for cold weather', '/productImage/formal_shoes.avif', 0, 149.99, 25, 4);



-- Outdoor Jacket (Product ID: 1)
INSERT INTO product_size (product_id, size_id) VALUES
                                                   (1, 1), (1, 2), (1, 3), (1, 4), (1, 5);

-- Fleece Hoodie (Product ID: 2)
INSERT INTO product_size (product_id, size_id) VALUES
                                                   (2, 1), (2, 2), (2, 3), (2, 4), (2, 5);

-- Rain Pants (Product ID: 3)
INSERT INTO product_size (product_id, size_id) VALUES
                                                   (3, 1), (3, 2), (3, 3), (3, 4), (3, 5);

-- Windbreaker (Product ID: 4)
INSERT INTO product_size (product_id, size_id) VALUES
                                                   (4, 1), (4, 2), (4, 3), (4, 4), (4, 5);

-- Thermal Shirt (Product ID: 5)
INSERT INTO product_size (product_id, size_id) VALUES
                                                   (5, 1), (5, 2), (5, 3), (5, 4), (5, 5);

-- Hiking Pants (Product ID: 6)
INSERT INTO product_size (product_id, size_id) VALUES
                                                   (6, 1), (6, 2), (6, 3), (6, 4), (6, 5);

-- Base Layer Set (Product ID: 7)
INSERT INTO product_size (product_id, size_id) VALUES
                                                   (7, 1), (7, 2), (7, 3), (7, 4), (7, 5);

-- Outdoor Socks (Product ID: 8)
INSERT INTO product_size (product_id, size_id) VALUES
                                                   (8, 1), (8, 2), (8, 3), (8, 4), (8, 5);

-- Waterproof Hat (Product ID: 9)
INSERT INTO product_size (product_id, size_id) VALUES
                                                   (9, 1), (9, 2), (9, 3), (9, 4), (9, 5);

-- Insulated Vest (Product ID: 10)
INSERT INTO product_size (product_id, size_id) VALUES
                                                   (10, 1), (10, 2), (10, 3), (10, 4), (10, 5);

-- Insert sizes XS to XL for Chinos (product_id = 21)
INSERT INTO product_size (product_id, size_id)
VALUES
    (21, 1), -- XS
    (21, 2), -- S
    (21, 3), -- M
    (21, 4), -- L
    (21, 5); -- XL

-- Insert sizes XS to XL for Jeans (product_id = 22)
INSERT INTO product_size (product_id, size_id)
VALUES
    (22, 1), -- XS
    (22, 2), -- S
    (22, 3), -- M
    (22, 4), -- L
    (22, 5); -- XL

-- Insert sizes XS to XL for Cargo Pants (product_id = 23)
INSERT INTO product_size (product_id, size_id)
VALUES
    (23, 1), -- XS
    (23, 2), -- S
    (23, 3), -- M
    (23, 4), -- L
    (23, 5); -- XL

-- Insert sizes XS to XL for Suit Trousers (product_id = 24)
INSERT INTO product_size (product_id, size_id)
VALUES
    (24, 1), -- XS
    (24, 2), -- S
    (24, 3), -- M
    (24, 4), -- L
    (24, 5); -- XL

-- Insert sizes XS to XL for Joggers (product_id = 25)
INSERT INTO product_size (product_id, size_id)
VALUES
    (25, 1), -- XS
    (25, 2), -- S
    (25, 3), -- M
    (25, 4), -- L
    (25, 5); -- XL

-- Insert sizes XS to XL for Shorts (product_id = 26)
INSERT INTO product_size (product_id, size_id)
VALUES
    (26, 1), -- XS
    (26, 2), -- S
    (26, 3), -- M
    (26, 4), -- L
    (26, 5); -- XL

-- Insert sizes XS to XL for Corduroy Pants (product_id = 27)
INSERT INTO product_size (product_id, size_id)
VALUES
    (27, 1), -- XS
    (27, 2), -- S
    (27, 3), -- M
    (27, 4), -- L
    (27, 5); -- XL

-- Insert sizes XS to XL for Track Pants (product_id = 28)
INSERT INTO product_size (product_id, size_id)
VALUES
    (28, 1), -- XS
    (28, 2), -- S
    (28, 3), -- M
    (28, 4), -- L
    (28, 5); -- XL

-- Insert sizes XS to XL for Dress Pants (product_id = 29)
INSERT INTO product_size (product_id, size_id)
VALUES
    (29, 1), -- XS
    (29, 2), -- S
    (29, 3), -- M
    (29, 4), -- L
    (29, 5); -- XL

-- Insert sizes XS to XL for Linen Pants (product_id = 30)
INSERT INTO product_size (product_id, size_id)
VALUES
    (30, 1), -- XS
    (30, 2), -- S
    (30, 3), -- M
    (30, 4), -- L
    (30, 5); -- XL

