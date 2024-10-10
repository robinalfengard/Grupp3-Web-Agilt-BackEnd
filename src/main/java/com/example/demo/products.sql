-- Outdoor kategori (category_id = 1)
INSERT INTO product (id, name, description, image, on_sale, price, number_in_stock, category_id, size_id)
VALUES
    (1, 'Outdoor Jacket', 'Waterproof, breathable jacket for outdoor activities', '/productImage/outdoor_jacket.avif', 1, 149.99, 50, 1, 2),
    (2, 'Fleece Hoodie', 'Warm fleece hoodie for cold weather', '/productImage/fleece_hoodie.avif', 0, 79.99, 30, 1, 2),
    (3, 'Rain Pants', 'Lightweight rain pants, perfect for hiking', '/productImage/rain_pants.avif', 1, 59.99, 40, 1, 3),
    (4, 'Windbreaker', 'Light windbreaker jacket for windy conditions', '/productImage/windbreaker.avif', 0, 99.99, 25, 1, 1),
    (5, 'Thermal Shirt', 'Moisture-wicking thermal shirt for outdoor use', '/productImage/thermal_shirt.avif', 0, 49.99, 60, 1, 2),
    (6, 'Hiking Pants', 'Durable, water-resistant hiking pants', '/productImage/hiking_pants.avif', 1, 89.99, 20, 1, 3),
    (7, 'Base Layer Set', 'Breathable base layer set for cold weather', '/productImage/base_layer.avif', 0, 69.99, 45, 1, 2),
    (8, 'Outdoor Socks', 'Cushioned socks designed for outdoor activities', '/productImage/outdoor_socks.avif', 1, 15.99, 100, 1, 1),
    (9, 'Waterproof Hat', 'Wide-brimmed waterproof hat for sun protection', '/productImage/hat.avif', 0, 24.99, 50, 1, 1),
    (10, 'Insulated Vest', 'Lightweight insulated vest for extra warmth', '/productImage/insulated_vest.avif', 1, 89.99, 20, 1, 1);

-- Accessories kategori (category_id = 2)
INSERT INTO product (id, name, description, image, on_sale, price, number_in_stock, category_id, size_id)
VALUES
    (11, 'Leather Belt', 'Classic leather belt with a metal buckle', '/productImage/leather_belt.avif', 0, 39.99, 100, 2, 1),
    (12, 'Wool Scarf', 'Soft wool scarf for cold weather', '/productImage/wool_scarf.avif', 1, 29.99, 50, 2, 1),
    (13, 'Beanie Hat', 'Warm beanie hat with a snug fit', '/productImage/beanie_hat.avif', 0, 19.99, 200, 2, 1),
    (14, 'Leather Gloves', 'Stylish leather gloves for winter', '/productImage/leather_gloves.avif', 0, 49.99, 30, 2, 1),
    (15, 'Sunglasses', 'Polarized sunglasses with UV protection', '/productImage/sunglasses.avif', 1, 89.99, 70, 2, 1),
    (16, 'Watch', 'Elegant wristwatch with leather strap', '/productImage/watch.avif', 0, 159.99, 20, 2, 1),
    (17, 'Backpack', 'Compact city backpack with multiple pockets', '/productImage/backpack.avif', 1, 69.99, 40, 2, 1),
    (18, 'Leather Wallet', 'Bifold leather wallet with card slots', '/productImage/leather_wallet.avif', 0, 49.99, 100, 2, 1),
    (19, 'Silk Tie', 'Formal silk tie available in various colors', '/productImage/silk_tie.avif', 1, 25.99, 150, 2, 1),
    (20, 'Knitted Gloves', 'Soft knitted gloves for everyday use', '/productImage/knitted_gloves.avif', 0, 15.99, 200, 2, 1);

-- Trousers kategori (category_id = 3)
INSERT INTO product (id, name, description, image, on_sale, price, number_in_stock, category_id, size_id)
VALUES
    (21, 'Chinos', 'Casual slim-fit chinos for everyday wear', '/productImage/chinos.avif', 1, 59.99, 70, 3, 3),
    (22, 'Jeans', 'Classic straight-leg jeans with a comfortable fit', '/productImage/jeans.avif', 0, 79.99, 100, 3, 3),
    (23, 'Cargo Pants', 'Durable cargo pants with multiple pockets', '/productImage/cargo_pants.avif', 1, 69.99, 50, 3, 3),
    (24, 'Suit Trousers', 'Tailored suit trousers for formal occasions', '/productImage/suit_trousers.avif', 0, 99.99, 30, 3, 3),
    (25, 'Joggers', 'Relaxed-fit joggers with an elastic waistband', '/productImage/joggers.avif', 1, 49.99, 80, 3, 3),
    (26, 'Shorts', 'Casual shorts made from lightweight material', '/productImage/shorts.avif', 0, 39.99, 100, 3, 3),
    (27, 'Corduroy Pants', 'Classic corduroy pants with a vintage style', '/productImage/corduroy_pants.avif', 1, 79.99, 40, 3, 3),
    (28, 'Track Pants', 'Comfortable track pants for sports or lounging', '/productImage/track_pants.avif', 0, 49.99, 90, 3, 3),
    (29, 'Dress Pants', 'Elegant dress pants with a slim fit', '/productImage/dress_pants.avif', 1, 89.99, 30, 3, 3),
    (30, 'Linen Pants', 'Lightweight linen pants for summer wear', '/productImage/linen_pants.avif', 0, 59.99, 60, 3, 3);

-- Skor kategori (category_id = 4)
INSERT INTO product (id, name, description, image, on_sale, price, number_in_stock, category_id, size_id)
VALUES
    (31, 'Sneakers', 'Comfortable sneakers with a modern design', '/productImage/sneakers.avif', 1, 99.99, 50, 4, 4),
    (32, 'Leather Boots', 'Stylish leather boots for cold weather', '/productImage/leather_boots.avif', 0, 129.99, 40, 4, 4),
    (33, 'Running Shoes', 'Lightweight running shoes with good grip', '/productImage/running_shoes.avif', 1, 89.99, 80, 4, 4),
    (34, 'Loafers', 'Elegant loafers for casual or formal wear', '/productImage/loafers.avif', 0, 119.99, 30, 4, 4),
    (35, 'Flip-Flops', 'Comfortable flip-flops for summer', '/productImage/flip_flops.avif', 1, 19.99, 100, 4, 4),
    (36, 'Ankle Boots', 'Durable ankle boots for everyday use', '/productImage/ankle_boots.avif', 0, 109.99, 60, 4, 4),
    (37, 'High Heels', 'Elegant high heels for special occasions', '/productImage/high_heels.avif', 1, 139.99, 20, 4, 4),
    (38, 'Sandals', 'Casual sandals with adjustable straps', '/productImage/sandals.avif', 0, 59.99, 70, 4, 4),
    (39, 'Slippers', 'Cozy slippers with soft inner lining', '/productImage/slippers.avif', 1, 29.99, 200, 4, 4),
    (40, 'Formal Shoes', 'Classic formal shoes made from genuine leather', '/productImage/formal_shoes.avif', 0, 149.99, 25, 4, 4);
