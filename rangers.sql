-- Active: 1748319197541@@127.0.0.1@5432@conservation_db
CREATE Table rangers (
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR (50),
    region VARCHAR (50)
);

INSERT INTO rangers(ranger_id,name,region)
VALUES
(1,'Alice Green','Northern Hills'),
(2,'Bob White',' River Delta'),
(3,'Carol King','Mountain Range');

SELECT * FROM rangers;

