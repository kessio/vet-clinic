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
    
CREATE INDEX treatment_histories ON medical_histories(id);

 CREATE TABLE invoices(
    id serial PRIMARY KEY, 
    total_amount decimal,
    generated_at TIMESTAMP,
	payed_at TIMESTAMP,
	medical_history_id INT,
	FOREIGN KEY(medical_history_id) REFERENCES medical_histories(id)
	
    );
