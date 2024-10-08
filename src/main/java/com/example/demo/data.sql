INSERT INTO user (id, first_name, last_name, email, password, city, address)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com', 'password123', 'New York', '123 Main St'),
    (2, 'Jane', 'Smith', 'jane.smith@example.com', 'password456', 'Los Angeles', '456 Elm St');
INSERT INTO category (id, name , image)
VALUES
    (1, 'Outdoor','/categoryImage/outdoor.avif'),
    (2, 'Accessories', '/categoryImage/Accessories.avif'),
    (3,'Trousers', '/categoryImage/trousers.avif'),
    (4,'Skor', '/categoryImage/skor.avif');
INSERT INTO size (id, name)
VALUES
    (1, 'M'),
    (2, 'L'),
    (3, 'XL'),
    (4, 'S'),
    (5,'XS');
INSERT INTO product (id, name, description, image, on_sale, price, number_in_stock, category_id, size_id)
VALUES
    (1, 'T-shirt', 'A comfortable cotton t-shirt.', 'tshirt.jpg', true, 19.99, 50, 1, 1),
    (2, 'Jeans', 'Stylish denim jeans.', 'jeans.jpg', false, 49.99, 100, 1, 2);
INSERT INTO sold_product (id, user_id, product_id, date_when_sold)
VALUES
    (1, 1, 1, '2024-10-01'),
    (2, 2, 2, '2024-10-02');
INSERT INTO favorite_item (id, user_id, product_id)
VALUES
    (1, 1, 2),
    (2, 2, 1);
