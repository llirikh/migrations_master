CREATE TABLE IF NOT EXISTS spaceship_manufacturer (
    id SERIAL NOT NULL,
    company_name VARCHAR(50) NOT NULL,
    country VARCHAR(50),
    nasdaq_code VARCHAR(50),

    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS spaceship_model (
    id SERIAL NOT NULL,
    manufacturer_id INTEGER NOT NULL REFERENCES spaceship_manufacturer(id),
    model_name VARCHAR(50),
    horsepower FLOAT8 NOT NULL CHECK(horsepower BETWEEN 170000000 AND 240000000),

    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS spaceship (
    id SERIAL NOT NULL,
    ship_number VARCHAR(50) NOT NULL,
    model_id INTEGER NOT NULL REFERENCES spaceship_model(id),

    PRIMARY KEY (id)
);


CREATE TABLE IF NOT EXISTS driver (
    id SERIAL NOT NULL,
    name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    login VARCHAR(50) NOT NULL UNIQUE,
    city VARCHAR(30),

    PRIMARY KEY (id)
);


CREATE TABLE IF NOT EXISTS spaceship_rent (
    driver_id INTEGER NOT NULL REFERENCES driver(id),
    spaceship_id INTEGER NOT NULL REFERENCES spaceship(id),
    rent_start TIMESTAMP NOT NULL,
    rent_end TIMESTAMP NOT NULL
);