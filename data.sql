INSERT into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES ('Agumon', '2020-03-02', 0, true, 10.23);

INSERT into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES ('Pikachu', '2021-01-07', 1, false, 15.04);

INSERT into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES ('Gabumon', '2018-11-15', 2, true, 8);

INSERT into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES ('Devimon', '2017-05-12', 5, true, 11);

INSERT into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES ('Plantmon', '2021-11-15', 2, true, -5.7);

INSERT into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES ('Squirtle', '1993-04-02', 3, false, -12.13);

INSERT into animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
 VALUES ('Blossom', '1998-10-13', 3, true, 17);

INSERT into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES ('Angemon', '2005-06-12', 1, true, -45);

INSERT into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES ('Boarmon', '2005-06-07', 7, true, 24.5);

INSERT into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES ('Ditto', '2022-05-14', 4, true, 22);

INSERT into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES ('Charmander', '2020-02-08', 0, false, 11);

INSERT INTO owners (full_name, age) VALUES
   ('Sam Smith', 34),
   ('Jennifer Orwell', 19),
   ('Bob', 45),
   ('Melody Pond', 77),
   ('Dean Winchester', 14),
   ('Jodie Whittaker', 38);

   INSERT INTO species (name) VALUES
   ('Pokemon'),
   ('Digimon');

UPDATE animals
SET species_id = 2
WHERE name LIKE '%mon';

UPDATE animals
SET species_id= 1
WHERE species_id IS NULL;

/*
Modify your inserted animals to include owner information (owner_id):
Sam Smith owns Agumon.
Jennifer Orwell owns Gabumon and Pikachu.
Bob owns Devimon and Plantmon.
Melody Pond owns Charmander, Squirtle, and Blossom.
Dean Winchester owns Angemon and Boarmon.
*/
UPDATE animals
SET owner_id=1
WHERE name='Agumon';

UPDATE animals
SET owner_id=2
WHERE name IN ('Gabumon', 'Pikachu');

UPDATE animals
SET owner_id=3
WHERE name IN ('Devimon', 'Plantmon');

UPDATE animals
SET owner_id=4
WHERE name IN ('Charmander', 'Squirtle', 'Blossom');

UPDATE animals
SET owner_id=5
WHERE name IN ('Angemon', 'Boarmon');



INSERT INTO vets(name, age, date_of_graduation) VALUES
('William Tatcher', 45, '2000-04-23'),
('Maisy Smith', 26, '2019-01-17'),
('Stephanie Mendez', 64, '1981-05-04'),
('Jack Harkness', 38, '2008-06-08');


/*
Vet William Tatcher is specialized in Pokemon.
Vet Stephanie Mendez is specialized in Digimon and Pokemon.
Vet Jack Harkness is specialized in Digimon.
*/
INSERT INTO specializations(vets_id, species_id) VALUES 
((SELECT id from vets where name = 'William Tatcher'),(SELECT id from species where name = 'Pokemon')),
((SELECT id from vets where name = 'Stephanie Mendez'),(SELECT id from species where name = 'Digimon')),
((SELECT id from vets where name = 'Stephanie Mendez'),(SELECT id from species where name = 'Pokemon')),
((SELECT id from vets where name = 'Jack Harkness'),(SELECT id from species where name = 'Digimon'));


INSERT INTO visits (animal_id, vets_id, visit_date ) VALUES (1, 1, '2020-05-24');

INSERT INTO visits (animal_id, vets_id, visit_date ) VALUES (1, 3, '2020-06-22');

INSERT INTO visits (animal_id, vets_id, visit_date ) VALUES (3, 4, '2020-05-24');

INSERT INTO visits (animal_id, vets_id, visit_date ) VALUES (2, 2, '2020-01-05');

INSERT INTO visits (animal_id, vets_id, visit_date ) VALUES (2, 2, '2020-05-14');
INSERT INTO visits (animal_id, vets_id, visit_date ) VALUES (2, 2, '2020-03-08');
INSERT INTO visits (animal_id, vets_id, visit_date ) VALUES (4, 3, '2021-05-04');


INSERT INTO visits (animal_id, vets_id, visit_date ) VALUES (11, 4, '2021-02-24');
INSERT INTO visits (animal_id, vets_id, visit_date ) VALUES (5, 2, '2019-12-21');
INSERT INTO visits (animal_id, vets_id, visit_date ) VALUES (5, 1, '2020-09-10');
INSERT INTO visits (animal_id, vets_id, visit_date ) VALUES (5, 2, '2021-04-07');

INSERT INTO visits (animal_id, vets_id, visit_date ) VALUES (6, 4, '2019-09-29');
INSERT INTO visits (animal_id, vets_id, visit_date ) VALUES (8, 2, '2020-10-03');
INSERT INTO visits (animal_id, vets_id, visit_date ) VALUES (8, 1, '2020-11-04');

INSERT INTO visits (animal_id, vets_id, visit_date ) VALUES (9, 2, '2019-01-24');
INSERT INTO visits (animal_id, vets_id, visit_date ) VALUES (9, 4, '2019-05-15');
INSERT INTO visits (animal_id, vets_id, visit_date ) VALUES (9, 2, '2020-02-27');
INSERT INTO visits (animal_id, vets_id, visit_date ) VALUES (9, 1, '2020-08-03');

INSERT INTO visits (animal_id, vets_id, visit_date ) VALUES (7, 2, '2020-05-24');
INSERT INTO visits (animal_id, vets_id, visit_date ) VALUES (7, 2, '2021-01-11');
