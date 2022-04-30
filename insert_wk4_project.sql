-- INSERT INTO dealership ("name", address, phone, email, manager_id, mgr_first_name, mgr_last_name) VALUES
-- ('Sabrina''s Dealership', '15 Key St. Chicago, IL 60647', '9999999999', 'sabzcarz@hotwheels.com', 1234567, 'Sabrina', 'Spellman'),
-- ('Sleezy Bob''s Dealership', '4567 Elm St. Chicago, IL 60775', '0987654321', 'bob@cars.com', 6785432, 'Bob', 'Smith'),
-- ('When Life Gives You Lemons', '1234 Lemon St. Chicago, IL 60611', '1234567890', 'lemonsqueeze@gmail.com', 4567820, 'Tony', 'Romano'),
-- ('Chicago Cars', '3000 Chicago Ave. Chicago, IL 60654', '1002993847', 'chicagocars@cars.com', 1920384, 'Mary', 'Daley'),
-- ('City Motors', '1 City St. Chicago, IL 60234', '8762549539', 'citymotors@cars.com', 7620175, 'Fred', 'Jones');

-- INSERT INTO customer(first_name, last_name, email, phone, license_no, dob, address) VALUES
-- ('Sally', 'Mae', 'sallymae@gmail.com', '7008009000', '780679568', '10/20/1975', '188 Main St. Chicago IL, 60123'),
-- ('Freddie', 'Mac', 'fredsfunds@yahoo.com', '6005004000', '123756349', '3/15/1950', '1 North Ave. Chicago IL, 60543'),
-- ('Sister', 'Suzy', 'sellsseashells@seashore.com', '1002003000', '019283746', '7/4/2000', '4000 Beach St. Chicago IL, 60148'),
-- ('Clementine', 'Stefani', 'clementinestefani@gmail.com', '7465839402', '104738495', '4/5/2002', '198 California Ave. Chicago, IL 46374'),
-- ('Edgar', 'Hernandez', 'edgarhernandez@gmailz.com', '7653849800', '765432109', '2/14/1989', '7653 Birch St. Chicago, IL 87654');

-- INSERT INTO mechanic(first_name, last_name, specialty, phone, email, years_experience) VALUES
-- ('Charlie', 'Chap', 'classic trucks', '9727774657', 'charlie@lovestrucks.com', 17),
-- ('Juan', 'Carlos', 'speed demons', '9870652435', 'juan@drivesfast.com', 10),
-- ('George', 'Soros', 'collectors cars', '1807805800', 'george@soros.com', 35),
-- ('Melody', 'Lane', 'electric vehicles', '7658364758', 'melody@lovesmusicandcars.com', 7),
-- ('Roman', 'Vincenzo', 'he does it all', '8769082534', 'romanvincenzo@carguy.com', 5);

-- INSERT INTO "service"("description", hourly_cost, parts_needed_YN) VALUES
-- ('Full detail with wax tire shine and leather protectant', 130.00, 'N'),
-- ('Tire replacement', 50.00, 'Y'),
-- ('Axle alignment', 100.00, 'Y'),
-- ('Oil Change', 40.00, 'N'),
-- ('Engine Replacement', 100.00, 'Y');

INSERT INTO car(VIN, dealer_id, condition, color, make, model, year, mileage) VALUES
('9876HUIY7654TGYU78', 1, 'new', 'black', 'audi', 'e-tron', 2022, 0),
('IJUY78906543RDFT2', 2, 'used', 'silver', 'jeep', 'grand cherokee', 2018, 40000),
('UNIY789066547324H', 3, 'used', 'navy', 'infiniti', 'QX80', 2020, 15000),
('8765YHUJ8790J6547', 3, 'new', 'white', 'jeep', 'wrangler', 2022, 150),
('ASDF6754329906578', 2, 'new', 'army green', 'ford', 'f250', 2022, 35),
('ASD34567899007788', 1, 'customer owned', 'red', 'dodge', 'minivan', 1998, 120000),
('1233333322278HJI9', 2, 'customer owned', 'black', 'ford', 'escape', 2014, 80000);

INSERT INTO salesperson(dealer_id, first_name, last_name, phone, email) VALUES
(2, 'Joe', 'Shmoe', '1804562890', 'joeshmoe@gmail.com'),
(3, 'Big', 'Bertha', '8002347654', 'bertha@bigbertha.com'),
(1, 'Alice', 'Wonder', '1234568765', 'alice@tookthewrongpill.com'),
(1, 'Michael', 'Jordan', '5467382910', 'noimnothim@gmail.com'),
(2, 'Morris', 'Freeman', '47392018475', 'momomambo@gmail.com');

INSERT INTO sales_invoice(VIN, customer_id, salesperson_id, invoice_date, amount, pmt_due_date) VALUES
('9876HUIY7654TGYU78', 4, 11, '2/3/2022', 80000.00, '2/3/2022'),
('IJUY78906543RDFT2', 3, 12, '3/5/2022', 20000.00, '3/5/2027'),
('UNIY789066547324H', 2, 13, '1/2/2022', 28000.00, '1/2/2027'),
('8765YHUJ8790J6547', 1, 14, '1/1/2022', 60000.00, '1/1/2022'),
('ASDF6754329906578', 5, 11, '4/1/2022', 70000.00, '4/1/2025');


INSERT INTO service_invoice(VIN, customer_id, desc_of_services, date_of_service, amount) VALUES
('ASD34567899007788', 5, 'full detail with wax and tire shine', '3/4/2022', 130.00),
('1233333322278HJI9', 2, 'Axle alignment', '3/5/2022', 1000.00),
('9876HUIY7654TGYU78', 4, 'Oil Change', '3/3/2022', 40.00),
('IJUY78906543RDFT2', 3, 'Full detail with wax and tire shine', '4/15/2022', 130.00),
('8765YHUJ8790J6547', 1, 'Engine Replacement', '4/27/2022', 8000.00);

INSERT INTO service_job(service_id, invoice_no, mechanic_id) VALUES
(1, 2, 3),
(3, 2, 4),
(4, 5, 1),
(5, 4, 3),
(4, 4, 4);

INSERT INTO part(service_id, "description", "weight", price) VALUES
(1, 'new axle', '80 lbs', 800.00),
(2, 'tire', '40 lbs', 100.00),
(3, 'engine', '400 lbs', 7000.00),
(4, 'steering wheel', '10 lbs', 200.00),
(5, 'exhaust fan', '5 lbs', 300.00);