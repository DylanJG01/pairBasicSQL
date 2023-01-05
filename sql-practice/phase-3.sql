-- Your code here

INSERT INTO customers (name, phone) VALUES ("Rachel", 1111111111);

UPDATE customers SET points = points + 1 WHERE name = 'Rachel';

INSERT INTO coffee_orders (is_redeemed) VALUES (0);

INSERT INTO customers (name, email, phone)
VALUES
('Monica', 'monica@friends.show', 2222222222),
('Phoebe', 'phoebe@friends.show', 3333333333);

UPDATE customers SET points = points + 1 WHERE name = 'Phoebe';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);
UPDATE customers SET points = points + 1 WHERE name = 'Phoebe';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);
UPDATE customers SET points = points + 1 WHERE name = 'Phoebe';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);

UPDATE customers SET points = points + 1 WHERE name = 'Rachel';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);
UPDATE customers SET points = points + 1 WHERE name = 'Monica';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);

UPDATE customers SET points = points + 1 WHERE name = 'Rachel';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);
UPDATE customers SET points = points + 1 WHERE name = 'Monica';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);

UPDATE customers SET points = points + 1 WHERE name = 'Rachel';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);
UPDATE customers SET points = points + 1 WHERE name = 'Monica';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);

UPDATE customers SET points = points + 1 WHERE name = 'Rachel';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);
UPDATE customers SET points = points + 1 WHERE name = 'Monica';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);

SELECT points FROM customers WHERE name = "Monica";

SELECT points FROM customers WHERE name = "Rachel";
UPDATE customers SET points = points - 10 WHERE name = 'Rachel';
INSERT INTO coffee_orders (is_redeemed) VALUES (1);


INSERT INTO customers (name, email) 
VALUES 
("Joey", "joey@friends.show"),
("Chandler", "chandler@friends.show"),
("Ross", "ross@friends.show");

UPDATE customers SET points = points + 1 WHERE name = 'Ross';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);
UPDATE customers SET points = points + 1 WHERE name = 'Ross';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);
UPDATE customers SET points = points + 1 WHERE name = 'Ross';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);
UPDATE customers SET points = points + 1 WHERE name = 'Ross';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);
UPDATE customers SET points = points + 1 WHERE name = 'Ross';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);
UPDATE customers SET points = points + 1 WHERE name = 'Ross';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);

UPDATE customers SET points = points + 1 WHERE name = 'Monica';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);
UPDATE customers SET points = points + 1 WHERE name = 'Monica';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);
UPDATE customers SET points = points + 1 WHERE name = 'Monica';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);

SELECT points FROM customers WHERE name = "Phoebe";
UPDATE customers SET points = points + 1 WHERE name = 'Phoebe';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);


DELETE FROM coffee_orders WHERE id IN (18, 19);
UPDATE customers SET points = points - 2 WHERE name = 'Ross';

UPDATE customers SET points = points + 1 WHERE name = 'Joey';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);
UPDATE customers SET points = points + 1 WHERE name = 'Joey';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);

SELECT points FROM customers WHERE name = "Monica";
UPDATE customers SET points = points - 10 WHERE name = 'Monica';
INSERT INTO coffee_orders (is_redeemed) VALUES (1);

DELETE FROM customers WHERE name = "Chandler";

SELECT points FROM customers WHERE name = "Ross";
UPDATE customers SET points = points + 1 WHERE name = 'Ross';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);

SELECT points FROM customers WHERE name = "Joey";
UPDATE customers SET points = points + 1 WHERE name = 'Joey';
INSERT INTO coffee_orders (is_redeemed) VALUES (0);

UPDATE customers SET email = "p_as_in_phoebe@friends.show" WHERE name = "Phoebe";