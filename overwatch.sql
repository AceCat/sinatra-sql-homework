--psql -a -f overwatch.sql

CREATE DATABASE overwatch;

\c overwatch;

CREATE TABLE characters (id SERIAL PRIMARY KEY, name VARCHAR(255), role VARCHAR(255), image_url VARCHAR(255), health INT);

INSERT INTO characters (name, role, image_url, health) VALUES ('Reaper', 'Offense', 'image_url', 250);


