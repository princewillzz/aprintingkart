INSERT INTO customer
VALUES(1, true, "8918930270", 0, "princewillz2013@gmail.com", "harsh", "abc");

INSERT INTO admin
VALUES(1, "princewillz2013@gmail.com", "harsh", "abc", "89189", null);


INSERT INTO category
VALUES(1, "one category", "Category 1", null, null);
INSERT INTO category
VALUES(2, "one Sub-category", "Sub-Category 1", null, 1);
INSERT INTO category
VALUES(3, "two category", "Category 2", null, null);
INSERT INTO category
VALUES(4, "3-1 Sub-category", "Sub Category 1 of two", null, 3);
INSERT INTO category
VALUES(5, "3-2 category", "Sub-Category 2of two", null, 3);

INSERT INTO product
    (id, name, price, quantity, category_id)
VALUES(1, "product 1-1", 100, 10, 2);
INSERT INTO product
    (id, name, price, quantity, category_id)
VALUES(2, "product 1-2", 120, 10, 2);
INSERT INTO product
    (id, name, price, quantity, category_id)
VALUES(3, "product 3-1", 110, 10, 4);
INSERT INTO product
    (id, name, price, quantity, category_id)
VALUES(4, "product 3-2", 190, 10, 4);
INSERT INTO product
    (id, name, price, quantity, category_id)
VALUES(5, "product 3-3", 90, 10, 5);
