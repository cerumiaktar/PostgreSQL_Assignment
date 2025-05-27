CREATE TABLE sightings(
    sighting_id SERIAL PRIMARY KEY,
    species_id INTEGER REFERENCES species(species_id),
    ranger_id INTEGER REFERENCES rangers(ranger_id),
    location VARCHAR(100),
    sighting_time DATE,
    notes VARCHAR(100)
);

INSERT INTO sightings(sighting_id,species_id,ranger_id,location,sighting_time,notes)
VALUES
(1,1,1,'Peak Ridge','2024-05-10 07:45:00','Camera trap image captured'),
(2,2,2,'Bankwood Area','2024-05-12 16:20:00','Juvenile seen'),
(3,3,3,'Bamboo Grove East','2024-05-15 09:10:00','Feeding observed'),
(4,1,2,'Snowfall Pass','2024-05-18 18:30:00','(NULL)');

SELECT * FROM sightings;