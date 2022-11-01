/* Database schema to keep the structure of entire database. */
-- Database: vet_clinic
	CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
	escape_attempts int,
	neutered boolean,
	weight_kg decimal
);