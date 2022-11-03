/*Queries that provide answers to the questions from all projects.*/


SELECT * FROM animals where name LIKE '%mon';

SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31'

SELECT name FROM animals WHERE neutered=true AND escape_attempts < 3

SELECT date_of_birth FROM animals WHERE name='Agumon' OR name='Pikachu'

SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5

SELECT * FROM animals WHERE neutered = true;

SELECT * FROM animals WHERE name != 'Gabumon';

SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

/*
Inside a transaction:
Update the animals table by setting the species column to unspecified. Verify that change was made.
Then roll back the change and verify that the species columns went back to the state before the transaction.
*/

BEGIN TRANSACTION;
UPDATE animals SET species = 'unspecified';
SELECT * FROM animals;

ROLLBACK;
SELECT * FROM animals;

/*
Inside a transaction:
Update the animals table by setting the species column to digimon for all animals that have a name ending in mon.
Update the animals table by setting the species column to pokemon for all animals that don't have species already set.
Commit the transaction.
Verify that change was made and persists after commit.
*/

BEGIN TRANSACTION;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
SELECT * FROM animals;

UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
SELECT * FROM animals;
COMMIT;
SELECT * FROM animals;

