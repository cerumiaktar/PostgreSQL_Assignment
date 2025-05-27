--Problem 1
INSERT INTO rangers(ranger_id,name,region) VALUES(4,'Derek Fox','Coastal Plains');

SELECT * FROM rangers;

--Problem 2
SELECT count(DISTINCT species_id) AS unique_species_count
 FROM sightings;

 --Problem 3
SELECT * FROM sightings 
WHERE LOCATION ILIKE '%Pass%';

--Problem 4
SELECT  rangers.name, count(sightings.sighting_id) AS total_sightings
FROM rangers
LEFT JOIN sightings ON rangers.ranger_id = sightings.ranger_id 
GROUP BY rangers.name;

--Problem 5
SELECT species.common_name FROM species
LEFT JOIN sightings ON species.species_id = sightings.species_id
WHERE sightings.species_id IS NULL;

--Problem 6
SELECT species.common_name,sightings.sighting_time,rangers.name FROM sightings
JOIN species ON sightings.species_id = species.species_id
JOIN rangers ON sightings.ranger_id = rangers.ranger_id
ORDER BY sightings.sighting_time DESC LIMIT 2;


--Problem 7
UPDATE species SET conservation_status = 'Historic'
WHERE discovery_date < '1775-01-01';

SELECT * FROM species;

---Problem 9
DELETE FROM rangers
WHERE ranger_id NOT IN (
    SELECT DISTINCT ranger_id FROM sightings
);
