CREATE DATABASE Task7;
USE Task7;

CREATE TABLE Doctors (
doctor_id INT PRIMARY KEY,
name VARCHAR(50),
specialization VARCHAR(50));

INSERT INTO Doctors VALUES
(1, 'Dr. Asha Patil', 'Cardiology'),
(2, 'Dr. Ravi Shah', 'Neurology'),
(3, 'Dr. Meera Joshi', 'Pediatrics'),
(4, 'Dr. Amit Kumar', 'Orthopedics'),
(5, 'Dr. Sneha Nair', 'Dermatology');


CREATE TABLE Patients (
patient_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
gender VARCHAR(10));

INSERT INTO Patients VALUES
(101, 'Suresh Gupta', 45, 'Male'),
(102, 'Rina Shah', 30, 'Female'),
(103, 'Ankit Mehta', 5, 'Male'),
(104, 'Pooja Sharma', 60, 'Female'),
(105, 'Karan Patel', 25, 'Male');


CREATE TABLE Appointments (
appointment_id INT PRIMARY KEY,
doctor_id INT,
patient_id INT,
appointment_date DATE,
diagnosis VARCHAR(100),
FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
FOREIGN KEY (patient_id) REFERENCES Patients(patient_id));

INSERT INTO Appointments VALUES
(1001, 1, 101, '2025-07-01', 'High Blood Pressure'),
(1002, 2, 102, '2025-07-02', 'Migraine'),
(1003, 3, 103, '2025-07-03', 'Cold and Fever'),
(1004, 4, 104, '2025-07-03', 'Knee Pain'),
(1005, 5, 105, '2025-07-02', 'Skin Allergy');


CREATE VIEW DoctorPatientView AS
SELECT
a.appointment_id,
    d.name AS doctor_name,
    p.name AS patient_name,
    a.appointment_date,
    a.diagnosis
FROM Appointments a
JOIN Doctors d ON a.doctor_id = d.doctor_id
JOIN Patients p ON a.patient_id = p.patient_id;


CREATE VIEW TodaysAppointments AS
SELECT
	a.appointment_id,
    d.name AS doctor_name,
    p.name AS patient_name,
    a.diagnosis
FROM Appointments a
JOIN Doctors d ON a.doctor_id = d.doctor_id
JOIN Patients p ON a.patient_id = p.patient_id
WHERE a.appointment_date = CURDATE();


CREATE VIEW SeniorPatients AS
SELECT * FROM Patients
WHERE age > 40;


CREATE VIEW DoctorPatientCount AS
SELECT 
    d.name AS doctor_name,
    COUNT(a.patient_id) AS total_patients
FROM Appointments a
JOIN Doctors d ON a.doctor_id = d.doctor_id
GROUP BY d.name;


CREATE VIEW ActiveSpecializations AS
SELECT 
    d.specialization,
    COUNT(a.appointment_id) AS total_appointments
FROM Appointments a
JOIN Doctors d ON a.doctor_id = d.doctor_id
GROUP BY d.specialization;


CREATE VIEW GenderWisePatients AS
SELECT 
    gender,
    COUNT(*) AS total_patients
FROM Patients
GROUP BY gender;


CREATE VIEW DiagnosisSummary AS
SELECT 
    p.name AS patient_name,
    a.diagnosis,
    a.appointment_date
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id;


CREATE VIEW DoctorAppointmentsHistory AS
SELECT 
    d.name AS doctor_name,
    a.appointment_date,
    p.name AS patient_name,
    a.diagnosis
FROM Appointments a
JOIN Doctors d ON a.doctor_id = d.doctor_id
JOIN Patients p ON a.patient_id = p.patient_id
ORDER BY d.name, a.appointment_date;

SELECT * FROM DoctorPatientView;

SELECT * FROM TodaysAppointments;

SELECT * FROM SeniorPatients;

SELECT * FROM DoctorPatientCount;

SELECT * FROM ActiveSpecializations;

SELECT * FROM GenderWisePatients;

SELECT * FROM DiagnosisSummary;

SELECT * FROM DoctorAppointmentsHistory;
