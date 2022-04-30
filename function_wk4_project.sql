-- SELECT * from dealership;

-- CREATE OR REPLACE FUNCTION add_dealer(
--     name VARCHAR(100),
--     address VARCHAR(200),
--     phone VARCHAR(13),
--     email VARCHAR(50),
--     manager_id INTEGER,
--     mgr_first_name VARCHAR(50),
--     mgr_last_name VARCHAR(50))
-- RETURNS void
-- AS
-- $MAIN$
-- BEGIN
--     INSERT INTO dealership(name, address, phone, email, manager_id, mgr_first_name, mgr_last_name)
--     VALUES(name, address, phone, email, manager_id, mgr_first_name, mgr_last_name);

-- END;
-- $MAIN$
-- LANGUAGE plpgsql;

-- SELECT add_dealer('River North Dealership', '123 Rivernorth ave', '1234567463', 'rivernorthcars@gmail.com', '1234568', 'Guy', 'Carr');

-- SELECT * FROM dealership