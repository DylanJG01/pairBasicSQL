-- Your code here

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS parties;

CREATE TABLE employees (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    department VARCHAR(40) NOT NULL,
    role_in_office VARCHAR(40) NOT NULL,
    relationship VARCHAR(80)
);

CREATE TABLE reviews (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    score NUMERIC(3,1)
);

CREATE TABLE parties (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    is_onsite BOOLEAN NOT NULL,
    budget NUMERIC(6,2)
);

INSERT INTO employees (first_name, last_name, department, role_in_office)
VALUES ('Michael', 'Scott', 'Management', 'Regional Manager'),
       ('Dwight', 'Schrute', 'Sales', 'Assistant Regional Manager'),
       ('Jim', 'Halpert', 'Sales', 'Sales Representative'),
       ('Pam', 'Beesly', 'Reception', 'Receptionis'),
        ("Kelly", "Kapoor", "Production Oversight", "Cstomer Service Representative"),
        ("Angela", "Martin", "Accounting", "Head of Accounting"),
        ("Roy", "Anderson", "Warehouse", "Warehouse Staff");

UPDATE employees
SET relationship = 'Roy Anderson'
WHERE first_name = 'Pam' AND last_name = 'Beesly';
UPDATE employees
SET relationship = 'Pam Beesly'
WHERE first_name = 'Roy' AND last_name = 'Anderson';

INSERT INTO employees (first_name, last_name, department, role_in_office)
VALUES ('Ryan', 'Howard', 'Reception', 'Temp');

INSERT INTO parties (is_onsite, budget)
VALUES (1, 100);

INSERT INTO reviews (first_name, last_name, score)
VALUES ('Dwight', 'Schrute', 3.3),
        ('Jim', 'Halpert', 4.2);

UPDATE reviews
SET score = 9
WHERE first_name = 'Dwight' AND last_name = 'Schrute';

UPDATE reviews
SET score = 9.3
WHERE first_name = 'Jim' AND last_name = 'Halpert';

UPDATE employees
SET role_in_office = 'Assistant Regional Manager'
WHERE first_name = 'Jim' AND last_name = 'Halpert';

UPDATE employees
SET department = 'Sales', role_in_office = 'Sales Representative'
WHERE first_name = 'Ryan' AND last_name = 'Howard';

INSERT INTO parties (is_onsite, budget)
VALUES (1, 200);

UPDATE employees
SET relationship = 'Angela Martin'
WHERE first_name = 'Dwight' AND last_name = 'Schrute';
UPDATE employees
SET relationship = 'Dwight Schrute'
WHERE first_name = 'Angela' AND last_name = 'Martin';

INSERT INTO reviews (first_name, last_name, score)
VALUES ('Angela', 'Martin', 6.2);

UPDATE employees
SET relationship = 'Ryan Howard'
WHERE first_name = 'Kelly' AND last_name = 'Kapoor';
UPDATE employees
SET relationship = 'Kelly Kapoor'
WHERE first_name = 'Ryan' AND last_name = 'Howard';

INSERT INTO parties (is_onsite, budget)
VALUES (1, 50);

DELETE FROM reviews WHERE first_name= 'Jim' AND last_name = 'Halpert';

UPDATE employees
SET relationship = ""
WHERE first_name = "Roy" AND last_name = "Anderson";
UPDATE employees
SET relationship = ""
WHERE first_name = "Pam" AND last_name = "Beesly";

INSERT INTO reviews (first_name, last_name, score)
VALUES ("Pam", "Beesly", 7.6);

INSERT INTO reviews (first_name, last_name, score)
VALUES ("Dwight", "Schrute", 8.7);

DELETE FROM employees WHERE first_name = "Ryan" AND last_name = "Howard";
DELETE FROM reviews WHERE first_name = "Ryan" AND last_name = "Howard";

UPDATE employees
SET relationship = ""
WHERE first_name = "Kelly" AND last_name = "Kapoor";

UPDATE employees
SET department = "Sales", role_in_office = 'Sales Representative';

UPDATE employees
SET relationship = "Karen Filippelli"
WHERE first_name = "Jim" AND last_name = "Halpert";
UPDATE employees
SET relationship = "Jim Halpert"
WHERE first_name = "Karen" AND last_name = "Filippelli";

INSERT INTO parties (is_onsite, budget)
VALUES (1, 120);

DELETE FROM parties WHERE id = (SELECT MAX(id) FROM parties);

INSERT INTO parties (is_onsite, budget)
VALUES (0, 300);

UPDATE employees
SET relationship = ""
WHERE first_name IN ("Jim, Karen");

UPDATE employees
SET relationship = "Pam Beesly"
WHERE first_name = "Jim" AND last_name = "Halpert";
UPDATE employees
SET relationship = "Jim Halpert"
WHERE first_name = "Pam" AND last_name = "Beesly";
