# Hospital Management SQL Views Project

# Description
This project is a part of the SQL Developer Internship Task 7. It demonstrates the creation and usage of SQL Views using a simple Hospital Management System relational database. 
The schema includes doctors, patients, and appointment details. The project focuses on abstracting complex queries and presenting meaningful summaries using `CREATE VIEW`.

# Project Contents

| File Name           | Description                                     |
|---------------------|-------------------------------------------------|
| hospital_schema.sql | SQL script with all CREATE TABLE and INSERTs    |
| Task7_views.sql     | SQL script with all CREATE VIEW statements      |
| Task7_output.sql    | SELECT queries to display view outputs          |
| README.md           | Documentation of the project and objectives     |

# Tables Included

- Doctors  
- Patients  
- Appointments

  All tables are linked using **Primary** and **Foreign Keys** to maintain referential integrity and enable view creation based on joins.

# Views Created

1. `DoctorPatientView` – Shows doctor–patient appointment details with diagnosis  
2. `TodaysAppointments` – Lists all appointments scheduled for today  
3. `SeniorPatients` – Displays patients aged above 40  
4. `DoctorPatientCount` – Number of patients each doctor has treated  
5. `ActiveSpecializations` – Appointment count per specialization  
6. `GenderWisePatients` – Count of male and female patients  
7. `DiagnosisSummary` – Diagnosis history for each patient  
8. `DoctorAppointmentsHistory` – Chronological doctor–patient appointment summary

# Tools Used

**MySQL Workbench** – to create and manage the database and views  
**Snipping Tool** – to capture screenshots of tables and view outputs  
**GitHub** – to store and submit the project repository  


# Highlights
Built 3 normalized tables using DDL (`CREATE TABLE`)  
Inserted 5–6 sample rows using `INSERT INTO`  
Used `CREATE VIEW` to simplify complex SELECT queries  
Designed 8 meaningful views demonstrating filtering, joining, and grouping  
Screenshots show structure and sample output of tables and views  
Promotes abstraction and reusability in SQL query logic  


# Created By

**Mokshada Sanjay Dashpute**  
MSc Statistics | SQL & Data Analytics Enthusiast
