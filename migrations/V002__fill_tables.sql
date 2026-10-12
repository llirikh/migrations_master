COPY spaceship_manufacturer FROM '/resources/init_data/spaceship_manufacturer.csv' WITH (FORMAT csv, HEADER true);
SELECT setval(pg_get_serial_sequence('spaceship_manufacturer', 'id'), COALESCE(MAX(id), 1), MAX(id) IS NOT NULL) FROM spaceship_manufacturer;


COPY spaceship_model FROM '/resources/init_data/spaceship_model.csv' WITH (FORMAT csv, HEADER true);
SELECT setval(pg_get_serial_sequence('spaceship_model', 'id'), COALESCE(MAX(id), 1), MAX(id) IS NOT NULL) FROM spaceship_model;


COPY spaceship FROM '/resources/init_data/spaceship.csv' WITH (FORMAT csv, HEADER true);
SELECT setval(pg_get_serial_sequence('spaceship', 'id'), COALESCE(MAX(id), 1), MAX(id) IS NOT NULL) FROM spaceship;


COPY driver FROM '/resources/init_data/driver.csv' WITH (FORMAT csv, HEADER true);
SELECT setval(pg_get_serial_sequence('driver', 'id'), COALESCE(MAX(id), 1), MAX(id) IS NOT NULL) FROM driver;

COPY spaceship_rent FROM '/resources/init_data/spaceship_rent.csv' WITH (FORMAT csv, HEADER true);
