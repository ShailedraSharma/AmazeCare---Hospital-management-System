create database Amazecare_db;
use amazecare_db; 

CREATE TABLE doctor (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    speciality VARCHAR(20),
    experience INT,
    qualification VARCHAR(20),
    designation VARCHAR(20)
);

CREATE TABLE patient (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    age INT,
    date_of_birth DATE,
    gender VARCHAR(10),
    contact_number VARCHAR(15),
    address TEXT
);

CREATE TABLE appointment (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    symptoms_description TEXT,
    visit_type VARCHAR(255),
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id)
);

CREATE TABLE medical_record (
    record_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_id INT,
    patient_id INT,
    current_symptoms TEXT,
    physical_examination TEXT,
    treatment_plan TEXT,
    recommended_tests TEXT,
    prescription TEXT,
    FOREIGN KEY (appointment_id) REFERENCES appointment(appointment_id),
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id)
);