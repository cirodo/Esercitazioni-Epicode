/*Creazione data base toys group*/
CREATE DATABASE toysgroup;

USE toysgroup;

/*Creazione tabella categorie ed inserimento dati*/
CREATE TABLE category (
	category_id INT AUTO_INCREMENT PRIMARY KEY
    , category_name VARCHAR (50)
);

INSERT INTO Category (category_name)
	VALUES
('Building Toys'),       -- Categorie per costruzioni come Lego
('Dolls and Playsets'),  -- Barbie e playset vari
('Vehicles and Tracks'), -- Automobili, piste e accessori
('Remote Control Toys'), -- Giochi telecomandati come droni e auto
('Stuffed Animals');     -- Peluche e giocattoli morbidi

/*Creazione tabella product ed inserimento dati*/
CREATE TABLE product (
	product_id INT AUTO_INCREMENT PRIMARY KEY
    , product_name VARCHAR (50)
    , standard_cost DEC (5,2)
    , unit_price DEC (5,2)
    , category_id INT
, FOREIGN KEY (category_id) REFERENCES category (category_id)
);
    

INSERT INTO product (product_name, standard_cost, unit_price, category_id)
	VALUES
('Lego City Set', 29.99, 39.99, 1),
('Lego Technic Set', 49.99, 64.99, 1),
('Lego Duplo Set', 19.99, 29.99, 1),
('Lego Architecture Set', 39.99, 54.99, 1),
('Lego Friends Set', 24.99, 34.99, 1),
('Lego Harry Potter Set', 59.99, 79.99, 1),
('Lego Star Wars Set', 69.99, 89.99, 1),
('Lego Ninjago Set', 34.99, 49.99, 1),
('Lego Minecraft Set', 44.99, 59.99, 1),
('Lego Creator Set', 32.99, 44.99, 1),
('Barbie Dollhouse', 89.99, 119.99, 2),
('Barbie Dream Camper', 99.99, 129.99, 2),
('Barbie Beach Set', 19.99, 24.99, 2),
('Barbie Fashion Closet', 49.99, 64.99, 2),
('Barbie Spa Set', 34.99, 49.99, 2),
('Barbie Pet Rescue', 24.99, 34.99, 2),
('Barbie Dream Plane', 119.99, 149.99, 2),
('Barbie Chef Playset', 29.99, 39.99, 2),
('Barbie Babysitter Playset', 19.99, 24.99, 2),
('Barbie Princess Castle', 79.99, 99.99, 2),
('Hot Wheels Track Set', 34.99, 49.99, 3),
('Hot Wheels Garage', 49.99, 64.99, 3),
('Hot Wheels Monster Truck', 19.99, 29.99, 3),
('Hot Wheels Loop Set', 29.99, 39.99, 3),
('Hot Wheels Mega Pack', 99.99, 129.99, 3),
('Hot Wheels City Set', 39.99, 54.99, 3),
('Hot Wheels Mystery Cars', 9.99, 14.99, 3),
('Hot Wheels Crash Set', 44.99, 59.99, 3),
('Hot Wheels Drag Race', 24.99, 34.99, 3),
('Hot Wheels Stunt Set', 54.99, 74.99, 3),
('RC Helicopter', 69.99, 94.99, 4),
('RC Car', 59.99, 84.99, 4),
('RC Boat', 79.99, 109.99, 4),
('RC Truck', 89.99, 124.99, 4),
('RC Airplane', 99.99, 134.99, 4),
('RC Drone', 109.99, 149.99, 4),
('RC Monster Truck', 119.99, 159.99, 4),
('RC Racing Car', 74.99, 99.99, 4),
('RC Buggy', 49.99, 69.99, 4),
('RC Submarine', 94.99, 129.99, 4),
('Stuffed Teddy Bear', 14.99, 19.99, 5),
('Stuffed Elephant', 24.99, 34.99, 5),
('Stuffed Bunny', 19.99, 24.99, 5),
('Stuffed Unicorn', 29.99, 39.99, 5),
('Stuffed Panda', 24.99, 34.99, 5),
('Stuffed Dinosaur', 34.99, 49.99, 5),
('Stuffed Dog', 24.99, 34.99, 5),
('Stuffed Cat', 19.99, 29.99, 5),
('Stuffed Lion', 29.99, 39.99, 5),
('Stuffed Tiger', 34.99, 49.99, 5),
('Lego Seasonal Set', 25.99, 34.99, 1),
('Lego Disney Set', 59.99, 79.99, 1),
('Lego Train Set', 69.99, 94.99, 1),
('Lego Technic Crane', 99.99, 134.99, 1),
('Lego Super Mario Set', 49.99, 64.99, 1),
('Lego Avengers Set', 64.99, 89.99, 1),
('Lego Creator Car', 89.99, 119.99, 1),
('Lego Modular Building', 129.99, 169.99, 1),
('Lego Ideas Set', 79.99, 109.99, 1),
('Lego Classic Set', 19.99, 24.99, 1),
('Barbie Vet Clinic', 29.99, 39.99, 2),
('Barbie Ice Cream Truck', 34.99, 49.99, 2),
('Barbie Firefighter Doll', 19.99, 24.99, 2),
('Barbie Teacher Set', 24.99, 34.99, 2),
('Barbie Ballerina Doll', 29.99, 39.99, 2),
('Barbie Art Studio', 39.99, 54.99, 2),
('Barbie Rock Star Set', 49.99, 69.99, 2),
('Barbie Soccer Player Doll', 19.99, 24.99, 2),
('Barbie Pilot Playset', 44.99, 59.99, 2),
('Barbie Beach Cruiser', 54.99, 74.99, 2),
('Hot Wheels Rally Set', 39.99, 54.99, 3),
('Hot Wheels Volcano Set', 64.99, 84.99, 3),
('Hot Wheels Racing Pack', 24.99, 34.99, 3),
('Hot Wheels Dino Set', 29.99, 44.99, 3),
('Hot Wheels Car Wash', 34.99, 49.99, 3),
('Hot Wheels Advent Calendar', 19.99, 24.99, 3),
('Hot Wheels Track Builder', 44.99, 59.99, 3),
('Hot Wheels City Garage', 54.99, 74.99, 3),
('Hot Wheels Crash Course', 49.99, 69.99, 3),
('Hot Wheels Battle Set', 69.99, 94.99, 3);

/*Creazione tabella regioni ed inserimento dati*/
CREATE TABLE region (
	region_id INT AUTO_INCREMENT PRIMARY KEY
    , region_name VARCHAR (50)
    , city VARCHAR (50)
);

INSERT INTO Region (region_name, city)
	VALUES
('Abruzzo', 'L\'Aquila'),
('Abruzzo', 'Pescara'),
('Abruzzo', 'Chieti'),
('Abruzzo', 'Teramo'),
('Basilicata', 'Potenza'),
('Basilicata', 'Matera'),
('Calabria', 'Catanzaro'),
('Calabria', 'Reggio Calabria'),
('Calabria', 'Cosenza'),
('Calabria', 'Vibo Valentia'),
('Campania', 'Napoli'),
('Campania', 'Salerno'),
('Campania', 'Caserta'),
('Campania', 'Avellino'),
('Campania', 'Benevento'),
('Emilia-Romagna', 'Bologna'),
('Emilia-Romagna', 'Modena'),
('Emilia-Romagna', 'Parma'),
('Emilia-Romagna', 'Reggio Emilia'),
('Emilia-Romagna', 'Ferrara'),
('Friuli Venezia Giulia', 'Trieste'),
('Friuli Venezia Giulia', 'Udine'),
('Friuli Venezia Giulia', 'Gorizia'),
('Friuli Venezia Giulia', 'Pordenone'),
('Lazio', 'Roma'),
('Lazio', 'Viterbo'),
('Lazio', 'Latina'),
('Lazio', 'Frosinone'),
('Lazio', 'Rieti'),
('Liguria', 'Genova'),
('Liguria', 'La Spezia'),
('Liguria', 'Savona'),
('Liguria', 'Imperia'),
('Lombardia', 'Milano'),
('Lombardia', 'Brescia'),
('Lombardia', 'Bergamo'),
('Lombardia', 'Monza'),
('Lombardia', 'Como'),
('Marche', 'Ancona'),
('Marche', 'Pesaro'),
('Marche', 'Urbino'),
('Marche', 'Macerata'),
('Molise', 'Campobasso'),
('Molise', 'Isernia'),
('Piemonte', 'Torino'),
('Piemonte', 'Novara'),
('Piemonte', 'Cuneo'),
('Piemonte', 'Asti'),
('Piemonte', 'Alessandria'),
('Puglia', 'Bari'),
('Puglia', 'Lecce'),
('Puglia', 'Foggia'),
('Puglia', 'Brindisi'),
('Puglia', 'Taranto'),
('Sardegna', 'Cagliari'),
('Sardegna', 'Sassari'),
('Sardegna', 'Nuoro'),
('Sardegna', 'Oristano'),
('Sicilia', 'Palermo'),
('Sicilia', 'Catania'),
('Sicilia', 'Messina'),
('Sicilia', 'Agrigento'),
('Sicilia', 'Trapani'),
('Toscana', 'Firenze'),
('Toscana', 'Pisa'),
('Toscana', 'Siena'),
('Toscana', 'Lucca'),
('Toscana', 'Arezzo'),
('Trentino-Alto Adige', 'Trento'),
('Trentino-Alto Adige', 'Bolzano'),
('Umbria', 'Perugia'),
('Umbria', 'Terni'),
('Valle d\'Aosta', 'Aosta'),
('Veneto', 'Venezia'),
('Veneto', 'Verona'),
('Veneto', 'Padova'),
('Veneto', 'Vicenza'),
('Veneto', 'Treviso');

/*Creazione tabella ssales ed inserimento dati*/
CREATE TABLE sales (
	sales_id INT AUTO_INCREMENT PRIMARY KEY
    , product_id INT
    , region_id INT
    , order_quantity INT
    , order_date DATE 
, FOREIGN KEY (product_id) REFERENCES product (product_id)
, FOREIGN KEY (region_id) REFERENCES region (region_id)
);

INSERT INTO Sales (product_id, region_id, order_quantity, order_date)
	VALUES
(1, 1, 5, '2022-01-15'),
(1, 1, 5, '2023-01-15'),
(1, 1, 5, '2024-01-15'),
(2, 2, 8, '2022-02-10'),
(2, 2, 8, '2023-02-10'),
(2, 2, 8, '2024-02-10'),
(3, 3, 10, '2022-03-05'),
(3, 3, 10, '2023-03-05'),
(3, 3, 10, '2024-03-05'),
(4, 4, 7, '2022-04-22'),
(4, 4, 7, '2023-04-22'),
(4, 4, 7, '2024-04-22'),
(5, 5, 4, '2022-05-30'),
(5, 5, 4, '2023-05-30'),
(5, 5, 4, '2024-05-30'),
(6, 6, 6, '2022-06-11'),
(6, 6, 6, '2023-06-11'),
(6, 6, 6, '2024-06-11'),
(7, 7, 12, '2022-07-19'),
(8, 8, 3, '2022-08-04'),
(9, 9, 9, '2022-09-14'),
(11, 10, 11, '2022-10-20'),
(12, 11, 15, '2022-11-11'),
(13, 12, 14, '2022-12-25'),
(14, 13, 7, '2023-01-09'),
(15, 14, 5, '2023-02-13'),
(16, 15, 4, '2023-03-01'),
(17, 16, 6, '2023-04-18'),
(18, 17, 8, '2023-05-07'),
(19, 18, 10, '2023-06-22'),
(21, 19, 12, '2023-07-30'),
(22, 20, 9, '2023-08-15'),
(23, 21, 14, '2023-09-04'),
(24, 22, 11, '2023-10-18'),
(25, 23, 7, '2023-11-01'),
(26, 24, 5, '2023-12-12'),
(27, 25, 3, '2024-01-20'),
(28, 26, 4, '2024-02-14'),
(29, 27, 6, '2024-03-08'),
(31, 28, 8, '2024-04-05'),
(32, 29, 10, '2024-05-12'),
(33, 30, 12, '2024-06-24'),
(34, 31, 9, '2024-07-09'),
(35, 32, 14, '2024-08-22'),
(36, 33, 15, '2024-09-13'),
(37, 34, 5, '2024-10-04'),
(38, 35, 3, '2024-10-31'),
(39, 36, 7, '2024-11-15'),
(41, 37, 9, '2024-11-20'),
(42, 38, 11, '2024-11-25'),
(43, 39, 12, '2024-11-28'),
(44, 40, 14, '2024-11-29'),
(45, 41, 8, '2024-11-30'),
(46, 42, 4, '2024-11-30'),
(47, 43, 10, '2024-11-30'),
(48, 44, 12, '2024-11-30'),
(49, 45, 15, '2024-11-30'),
(51, 46, 5, '2024-11-30'), 
(52, 47, 7, '2024-11-30'),
(53, 48, 11, '2024-11-30'),
(54, 49, 9, '2024-11-30'),
(55, 50, 8, '2024-11-30'),
(56, 51, 6, '2024-11-30'),
(57, 52, 4, '2024-11-30'),
(58, 53, 12, '2024-11-30'),
(59, 54, 3, '2024-11-30'),
(61, 55, 15, '2024-11-30'),
(62, 56, 10, '2024-11-30'),
(63, 57, 8, '2024-11-30'),
(64, 58, 7, '2024-11-30'),
(65, 59, 4, '2024-11-30'),
(66, 60, 5, '2024-11-30'),
(67, 61, 3, '2024-11-30'),
(68, 62, 11, '2024-11-30'),
(69, 63, 9, '2024-11-30'),
(71, 64, 14, '2024-11-30'),
(72, 65, 12, '2024-11-30'),
(73, 66, 15, '2024-11-30'),
(74, 67, 4, '2024-11-30'),
(75, 68, 8, '2024-11-30'),
(76, 69, 10, '2024-11-30'),
(77, 70, 6, '2024-11-30'),
(78, 71, 7, '2024-11-30'),
(79, 72, 9, '2024-11-30');

/*Interrogazione tabelle*/
/*Verificare che i campi definiti come PK siano univoci.
Il conteggio dei valori distinti impostati come primary key corrispondono al totale dei valori, confermando l'univocità del dato*/

SELECT
	COUNT(DISTINCT product_id)
    , COUNT(product_id)
FROM
	product;

SELECT
	COUNT(DISTINCT category_id)
    , COUNT(category_id)
FROM
	category;

SELECT
	COUNT(DISTINCT region_id)
    , COUNT(*)
FROM
	region;

SELECT
	COUNT(DISTINCT sales_id)
    , COUNT(sales_id)
FROM
	sales;

/*Esporre l’elenco dei soli prodotti venduti e per ognuno di questi il fatturato totale per anno.*/

SELECT
	p.product_id
    , p.product_name
    , SUM(s.order_quantity * p.unit_price) AS sales_amount
    , SUM((s.order_quantity * p.unit_price) - p.standard_cost) AS profit
    , YEAR(s.order_date)
FROM
	product AS p
	JOIN
    sales AS s
    ON
    s.product_id = p.product_id
GROUP BY
	product_id, YEAR(s.order_date);

/*Esporre il fatturato totale per stato per anno. Ordina il risultato per data e per fatturato decrescente.*/

SELECT
	r.region_id
    , r.region_name
    , SUM(s.order_quantity * p.unit_price) AS sales_amount
    , SUM((s.order_quantity * p.unit_price) - p.standard_cost) AS profit
    , YEAR(s.order_date)
FROM 
	region As r
    JOIN
    sales AS s
    ON
    s.region_id = r.region_id
    JOIN
    product AS p
    ON
    s.product_id = p.product_id
GROUP BY
	r.region_id, YEAR(s.order_date) 
ORDER BY
	YEAR(s.order_date) DESC, SUM(s.order_quantity * p.unit_price) DESC;

/*Rispondere alla seguente domanda: qual è la categoria di articoli maggiormente richiesta dal mercato?*/

SELECT
	c.category_id
    , category_name
    , SUM(s.order_quantity) AS ordini_totali
FROM
	category AS c
    JOIN
    product AS p
    ON
    p.category_id = c.category_id
    JOIN
	sales AS s
    ON
    s.product_id = p.product_id
GROUP BY
	c.category_id
ORDER BY
	SUM(s.order_quantity) DESC
LIMIT 1;

/*Rispondere alla seguente domanda: quali sono, se ci sono, i prodotti invenduti? Proponi due approcci risolutivi differenti.*/
/*Metodo 1: trovare i valori nulli con una left join*/
SELECT
	p.product_id
    , p.product_name
FROM
	product AS p
	LEFT JOIN
    sales AS s
    ON
    s.product_id = p.product_id
WHERE
	s.sales_id IS NULL;

/*Metodo 2: trova i prodotti non venduti con una subquery*/
SELECT
	p.product_id
    , p.product_name
FROM
	product AS p
WHERE
	p.product_id NOT IN (SELECT
							s.product_id
						 FROM
							sales AS s);

/*Metodo 3:  trova i prodotti non venduti con having*/	
SELECT
	p.product_id
    , p.product_name
FROM
	product AS p
	LEFT JOIN
	sales AS s
    ON
    s.product_id = p.product_id
GROUP BY
	p.product_id
HAVING
	COUNT(s.product_id) = 0;

/*Metodo 4: trova i prodotti non venduti con una IF*/
SELECT
	p.product_id
    , p.product_name
	,IF(COUNT(s.product_id) = 0, 'invenduto', 'venduto') AS status
FROM
	product AS p
	LEFT JOIN
	sales AS s
    ON
    s.product_id = p.product_id
GROUP BY
	p.product_id
HAVING
	status = 'invenduto';

/*Uso di CASE WHEN per creare una tabella che identifica prodotti venduti ed invenduti*/
SELECT
	p.product_id
    , p.product_name
    , (CASE
		WHEN COUNT(s.product_id) = 0
        THEN 'invenduto'
        ELSE 'venduto'
        END) AS status
FROM
	product AS p
	LEFT JOIN
	sales AS s
    ON
    s.product_id = p.product_id
GROUP BY
	p.product_id;

/*Esporre l’elenco dei prodotti con la rispettiva ultima data di vendita (la data di vendita più recente).*/

SELECT
	p.product_id
    , p.product_name
    , MAX(s.order_date) AS ultimo_ordine
FROM
	product AS p
	JOIN
	sales AS s
    ON
    p.product_id = s.product_id
GROUP BY
	p.product_id;