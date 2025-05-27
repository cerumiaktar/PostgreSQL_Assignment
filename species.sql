CREATE TABLE species(
    species_id SERIAL PRIMARY KEY,
    common_name VARCHAR (100),
    scientific_name VARCHAR(100),
    discovery_date DATE,
    conservation_status VARCHAR(100)
);

INSERT INTO species(species_id,common_name,scientific_name,discovery_date,conservation_status)
VALUES
(1,'Snow Leopard','Panthera uncia','1775-01-01','Endangered'),
(2,'Bengal Tiger','Panthera tigris tigris','1758-01-01','Endangered'),
(3,'Red Panda','Ailurus fulgens','1825-01-01','Vulnerable'),
(4,'Asiatic Elephant','Elephas maximus indicus','1758-01-01','Endangered');

SELECT * FROM species;

