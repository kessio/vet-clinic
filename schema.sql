/* Database schema to keep the structure of entire database. */
CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY,
    name varchar(100),
    date_of_birth date,
    escape_attempts int,
    neutered boolean,
    weight_kg decimal
);
alter table animals add column species varchar;

/*Create a table named owners with the following columns:
id: integer (set it as autoincremented PRIMARY KEY)
full_name: string
age: integer
*/
CREATE TABLE owners(
    id INT GENERATED ALWAYS AS IDENTITY, 
    full_name VARCHAR(50), 
    age INT, 
    PRIMARY KEY(id)
    );

/*
Create a table named species with the following columns:
id: integer (set it as autoincremented PRIMARY KEY)
name: string
*/
CREATE TABLE species(
    id INT GENERATED ALWAYS AS IDENTITY, 
    name VARCHAR(50), 
    PRIMARY KEY(id)
    );