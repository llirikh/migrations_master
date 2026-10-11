COPY spaceship_manufacturer FROM '/resources/init_data/spaceship_manufacturer.csv' WITH (FORMAT csv, HEADER true);

COPY spaceship_model FROM '/resources/init_data/spaceship_model.csv' WITH (FORMAT csv, HEADER true);

COPY spaceship FROM '/resources/init_data/spaceship.csv' WITH (FORMAT csv, HEADER true);

COPY driver FROM '/resources/init_data/driver.csv' WITH (FORMAT csv, HEADER true);

COPY spaceship_rent FROM '/resources/init_data/spaceship_rent.csv' WITH (FORMAT csv, HEADER true);
