ALTER TABLE driver
    ADD COLUMN full_name VARCHAR(255);

UPDATE driver
    SET full_name = CONCAT_WS(' ', name, last_name);

ALTER TABLE driver
    ALTER COLUMN full_name SET NOT NULL,
    DROP COLUMN name,
    DROP COLUMN last_name;



ALTER TABLE spaceship_manufacturer
    ADD COLUMN moex_code VARCHAR(53);
    
UPDATE spaceship_manufacturer
    SET moex_code = nasdaq_code || '_ru';

ALTER TABLE spaceship_manufacturer
    DROP COLUMN nasdaq_code;