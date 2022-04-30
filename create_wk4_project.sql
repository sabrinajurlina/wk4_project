-- DROP TABLE IF EXISTS dealership CASCADE;
-- CREATE TABLE dealership(
--     dealer_id SERIAL PRIMARY KEY,
--     name VARCHAR(100),
--     address VARCHAR(200),
--     phone VARCHAR(13),
--     email VARCHAR(50),
--     manager_id INTEGER,
--     mgr_first_name VARCHAR(50),
--     mgr_last_name VARCHAR(50)
-- );

-- DROP TABLE IF EXISTS customer CASCADE;
-- CREATE TABLE customer(
--     customer_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     email VARCHAR(50),
--     phone VARCHAR(13),
--     license_no VARCHAR(25),
--     dob VARCHAR(10),
--     address VARCHAR(200)
-- );


-- DROP TABLE IF EXISTS mechanic CASCADE;
-- CREATE TABLE mechanic(
--     mechanic_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     specialty VARCHAR(100),
--     phone VARCHAR(13),
--     email VARCHAR(50),
--     years_experience INTEGER
-- );


-- DROP TABLE IF EXISTS "service" CASCADE;
-- CREATE TABLE "service"(
--     service_id SERIAL PRIMARY KEY,
--     description TEXT,
--     hourly_cost decimal(5,2),
--     parts_needed_YN VARCHAR(3)
-- );


-- DROP TABLE IF EXISTS car CASCADE;
-- CREATE TABLE car(
--     VIN VARCHAR PRIMARY KEY,
--     condition VARCHAR(50),
--     color VARCHAR(50),
--     make VARCHAR(50),
--     model VARCHAR(50),
--     "year" INTEGER,
--     mileage INTEGER,
--     dealer_id INTEGER NOT NULL,
--     FOREIGN KEY (dealer_id) REFERENCES dealership(dealer_id)
-- );


-- DROP TABLE IF EXISTS salesperson CASCADE;
-- CREATE TABLE salesperson(
--     salesperson_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     address VARCHAR(200),
--     phone VARCHAR(13),
--     email VARCHAR(50),
--     dealer_id INTEGER,
--     FOREIGN KEY (dealer_id) REFERENCES dealership(dealer_id)
-- );


-- DROP TABLE IF EXISTS sales_invoice CASCADE;
-- CREATE TABLE sales_invoice(
--     invoice_no SERIAL PRIMARY KEY,
--     invoice_date VARCHAR(10),
--     amount INTEGER,
--     pmt_due_date VARCHAR(10),
--     VIN VARCHAR,
--     customer_id INTEGER,
--     salesperson_id INTEGER,
--     FOREIGN KEY (VIN) REFERENCES car(VIN),
--     FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
--     FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id)
-- );



-- DROP TABLE IF EXISTS service_invoice CASCADE;
-- CREATE TABLE service_invoice(
--     invoice_no SERIAL PRIMARY KEY,
--     desc_of_services TEXT,
--     date_of_service VARCHAR(10),
--     amount DECIMAL(10,2),
--     VIN VARCHAR,
--     customer_id INTEGER,
--     FOREIGN KEY (VIN) REFERENCES car(VIN),
--     FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
-- );


-- DROP TABLE IF EXISTS service_job CASCADE;
-- CREATE TABLE service_job(
--     job_id SERIAL PRIMARY KEY,
--     service_id INTEGER,
--     invoice_no INTEGER,
--     mechanic_id INTEGER,
--     FOREIGN KEY (service_id) REFERENCES "service"(service_id),
--     FOREIGN KEY (invoice_no) REFERENCES service_invoice(invoice_no),
--     FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id)
-- );


-- DROP TABLE IF EXISTS part CASCADE;
-- CREATE TABLE part(
--     item_id SERIAL PRIMARY KEY,
--     "description" TEXT,
--     "weight" VARCHAR(50),
--     price DECIMAL(6,2),
--     service_id INTEGER NOT NULL,
--     FOREIGN KEY (service_id) REFERENCES "service"(service_id)
-- );



