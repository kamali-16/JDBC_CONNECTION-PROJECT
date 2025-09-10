CREATE DATABASE hospital_management;
USE hospital_management;

-- Patients Table
CREATE TABLE patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    age INT,
    gender VARCHAR(10),
    city VARCHAR(100)
);

-- Doctors Table
CREATE TABLE doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    specialization VARCHAR(100),
    experience_years INT
);

-- Appointments Table
CREATE TABLE appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    problem VARCHAR(255),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id) ON DELETE CASCADE,
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id) ON DELETE CASCADE
);

-- Sample data
INSERT INTO patients (name, age, gender, city) VALUES
('Aarav Sharma', 25, 'Male', 'Delhi'),
('Meera Iyer', 32, 'Female', 'Chennai');

INSERT INTO doctors (name, specialization, experience_years) VALUES
('Dr. Suresh Kumar', 'Cardiologist', 12),
('Dr. Priya Nair', 'Dermatologist', 8);

INSERT INTO appointments (patient_id, doctor_id, appointment_date, problem) VALUES
(1, 1, '2025-09-05', 'Chest pain'),
(2, 2, '2025-09-06', 'Skin rashes');

SHOW DATABASES;
SHOW TABLES;

DESCRIBE patients;
DESCRIBE doctors;
DESCRIBE appointments;

SHOW COLUMNS FROM patients;


