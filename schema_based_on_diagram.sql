CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    name varchar(100),
    date_of_birth date
);

CREATE TABLE medical_histories (
    id SERIAL PRIMARY KEY,
    admitted_at TIMESTAMP,
    patients_id INT,
    status varchar(255),
    FOREIGN KEY(patients_id) REFERENCES patients(id)
 );
 
CREATE TABLE treatments(
    id serial PRIMARY KEY, 
    type VARCHAR(50),
    name VARCHAR(50)
    );
