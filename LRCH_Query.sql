-- Table for visualization

-- Authors: Alexzander Saddler, Ramiyan Gangatharan
-- Date: December 5th 2023
-- Desc: This file is used to create tables and insert data into it
---------------------------------------------------------------------------------------
-- Table for room data
DROP TABLE IF EXISTS rooms;
CREATE TABLE rooms
(
	roomID NUMERIC(10) NOT NULL,
	roomLocation VARCHAR(4) NOT NULL,
	roomType VARCHAR(100) NOT NULL
);

INSERT INTO rooms(roomID, roomLocation, roomType)
VALUES
(835, '105E', 'Semi-Private'), (836, '106A',      'Private'), (837, '106B',      'Private'), (838, '107E', 'Semi-Private'), (839, '108C', 'General'), (840, '109D',      'General'),
(841, '110A',      'Private'), (842, '111B', 'Semi-Private'), (843, '112C',      'General'), (844, '113D',      'General'), (845, '114A', 'Private'), (846, '114B', 'Semi-Private'),
(847, '115C',      'General'), (848, '115D',      'Private'), (849, '116E', 'Semi-Private'), (850, '117F',      'General'), (851, '118G', 'Private'), (852, '118H', 'Semi-Private'),
(853, '119I',      'General'), (854, '120J',      'Private'), (855, '121K', 'Semi-Private'), (856, '122L',      'General'), (857, '123M', 'Private'), (858, '123N', 'Semi-Private'),
(859, '124O',      'General'), (860, '125P',      'Private'), (861, '126Q', 'Semi-Private'), (862, '127R',      'General'), (863, '128S', 'Private'), (864, '129T', 'Semi-Private');

-- Table for patient data
DROP TABLE IF EXISTS patient;
CREATE TABLE patient
(
    patientID NUMERIC(10) PRIMARY KEY,
    patientFName VARCHAR(100) NOT  NULL,
    patientLName VARCHAR(100) NOT  NULL,
	roomID NUMERIC(10) NOT NULL,
    streetAddress VARCHAR(150) NOT  NULL,
    city VARCHAR(100) NOT  NULL,
    province VARCHAR(100) NOT NULL,
    postalCode VARCHAR(6) NOT NULL,
    PhoneNumber NUMERIC(10) NOT  NULL,
    sex char(1) NOT  NULL,
    healthCardNumber NUMERIC(9) NOT  NULL,
    extension NUMERIC(5) NOT  NULL,
    AdmissionDate date NOT  NULL,
    financialStatus VARCHAR(10),
    dischargeDate date
);

INSERT INTO patient 
(
	patientID, patientFName, patientLName, roomID, streetAddress, city, province, postalCode, PhoneNumber, sex, healthCardNumber, extension, AdmissionDate, financialStatus, dischargeDate
)
VALUES
(101, 'Howard', 'Gerard', 835, '123 Maple Street', 'Durham', 'Ontario', 'L1R3E9', 4165550101, 'M', 123456789, 123, '2023-05-05', 'Insured', NULL),
(102, 'Emily', 'Smith', 836, '456 Oak Avenue', 'Toronto', 'Ontario', 'M5T1N5', 4165550202, 'F', 987654321, 456, '2023-05-06', 'Insured', NULL),
(103, 'Michael', 'Johnson', 837, '789 Pine Road', 'Mississauga', 'Ontario', 'L4T2Z1', 4165550303, 'M', 234567891, 789, '2023-05-07', 'Insured', NULL),
(104, 'Sarah', 'Davis', 838, '321 Birch Lane', 'Brampton', 'Ontario', 'L6Y4M3', 4165550404, 'F', 345678912, 321, '2023-05-08', 'Uninsured', NULL),
(105, 'Robert', 'Martinez', 839, '654 Cedar Place', 'Markham', 'Ontario', 'L3P0A2', 4165550505, 'M', 456789123, 654, '2023-05-09', 'Insured', NULL),
(106, 'Linda', 'Garcia', 840, '987 Elm Street', 'Vaughan', 'Ontario', 'L6A1S5', 4165550606, 'F', 567891234, 987, '2023-05-10', 'Insured', NULL),
(107, 'Angela', 'Brown', 841, '213 Willow Way', 'Richmond Hill', 'Ontario', 'L4E0K9', 4165550707, 'F', 678912345, 213, '2023-05-11', 'Insured', NULL),
(108, 'David', 'Wilson', 842, '432 Spruce Crescent', 'Ajax', 'Ontario', 'L1S3K2', 4165550808, 'M', 789123456, 432, '2023-05-12', 'Insured', NULL),
(109, 'Patricia', 'Miller', 843, '321 Sycamore Drive', 'Whitby', 'Ontario', 'L1N9Y3', 4165550909, 'F', 891234567, 321, '2023-05-13', 'Uninsured', NULL),
(110, 'Brian', 'Lee', 844, '654 Redwood Blvd', 'Oshawa', 'Ontario', 'L1J8L7', 4165551001, 'M', 912345678, 654, '2023-05-14', 'Insured', NULL),
(111, 'Alice', 'Brown', 845, '100 Green Lane', 'Durham', 'Ontario', 'L1R4E9', 4165551101, 'F', 112233445, 111, '2023-05-15', 'Insured', NULL),
(112, 'Mark', 'Jones', 846, '101 Blue Street', 'Toronto', 'Ontario', 'M5T2N6', 4165551102, 'M', 223344556, 112, '2023-05-16', 'Insured', NULL),
(113, 'Rachel', 'Adams', 847, '102 Yellow Road', 'Mississauga', 'Ontario', 'L4T3Z2', 4165551103, 'F', 334455667, 113, '2023-05-17', 'Uninsured', NULL),
(114, 'Gary', 'White', 848, '103 Orange Lane', 'Brampton', 'Ontario', 'L6Y5M4', 4165551104, 'M', 445566778, 114, '2023-05-18', 'Insured', NULL),
(115, 'Laura', 'Green', 849, '104 Purple Place', 'Markham', 'Ontario', 'L3P1A3', 4165551105, 'F', 556677889, 115, '2023-05-19', 'Insured', NULL),
(116, 'Steven', 'Black', 850, '105 Red Street', 'Vaughan', 'Ontario', 'L6A2S6', 4165551106, 'M', 667788990, 116, '2023-05-20', 'Insured', NULL),
(117, 'Monica', 'Wilson', 851, '106 Grey Way', 'Richmond Hill', 'Ontario', 'L4E1L0', 4165551107, 'F', 778899001, 117, '2023-05-21', 'Insured', NULL),
(118, 'Jeff', 'Taylor', 852, '107 Pink Crescent', 'Ajax', 'Ontario', 'L1S4K3', 4165551108, 'M', 889900112, 118, '2023-05-22', 'Insured', NULL),
(119, 'Zoe', 'Clark', 853, '108 Cyan Drive', 'Whitby', 'Ontario', 'L1N0Y4', 4165551109, 'F', 990011223, 119, '2023-05-23', 'Uninsured', NULL),
(120, 'Chris', 'Martin', 854, '109 Magenta Blvd', 'Oshawa', 'Ontario', 'L1J9L8', 4165551110, 'M', 100122334, 120, '2023-05-24', 'Insured', NULL),
(121, 'Nancy', 'King', 855, '110 Lime Road', 'Durham', 'Ontario', 'L1R5E0', 4165551111, 'F', 211233445, 121, '2023-05-25', 'Insured', NULL),
(122, 'Victor', 'Lee', 856, '111 Coral Street', 'Toronto', 'Ontario', 'M5T3N7', 4165551112, 'M', 322344556, 122, '2023-05-26', 'Insured', NULL),
(123, 'Diana', 'Wright', 857, '112 Amber Lane', 'Mississauga', 'Ontario', 'L4T4Z3', 4165551113, 'F', 433455667, 123, '2023-05-27', 'Uninsured', NULL),
(124, 'Edward', 'Harris', 858, '113 Quartz Place', 'Brampton', 'Ontario', 'L6Y6M5', 4165551114, 'M', 544566778, 124, '2023-05-28', 'Insured', NULL),
(125, 'Grace', 'Moore', 859, '114 Sapphire Blvd', 'Markham', 'Ontario', 'L3P2A4', 4165551115, 'F', 655677889, 125, '2023-05-29', 'Insured', NULL),
(126, 'Henry', 'Walker', 860, '115 Ruby Street', 'Vaughan', 'Ontario', 'L6A3S7', 4165551116, 'M', 766788990, 126, '2023-05-30', 'Insured', NULL),
(127, 'Irene', 'Hall', 861, '116 Topaz Way', 'Richmond Hill', 'Ontario', 'L4E2L1', 4165551117, 'F', 877899001, 127, '2023-05-31', 'Insured', NULL),
(128, 'Kyle', 'Young', 862, '117 Diamond Crescent', 'Ajax', 'Ontario', 'L1S5K4', 4165551118, 'M', 988900112, 128, '2023-06-01', 'Insured', NULL),
(129, 'Lily', 'Scott', 863, '118 Opal Drive', 'Whitby', 'Ontario', 'L1N1Y5', 4165551119, 'F', 099011223, 129, '2023-06-02', 'Uninsured', NULL),
(130, 'Max', 'Wright', 864, '119 Emerald Blvd', 'Oshawa', 'Ontario', 'L1J0L9', 4165551120, 'M', 200122334, 130, '2023-06-03', 'Insured', NULL);


DROP TABLE IF EXISTS physician;
CREATE TABLE physician
(
	physicianID NUMERIC(10) PRIMARY KEY,
	physicianFName VARCHAR(100) NOT NULL,
    physicianLName VARCHAR(100) NOT  NULL,
    physicianPhoneNumber NUMERIC(10) NOT  NULL,
	specialization VARCHAR(100) NOT  NULL
);
INSERT INTO physician (physicianID, physicianFName, physicianLName, physicianPhoneNumber, specialization) VALUES
(2001, 'James', 'Miller', 4165552001, 'Cardiology'), (2002, 'Lisa', 'Wong', 4165552002, 'Neurology'), (2003, 'Mohammed', 'Ali', 4165552003, 'Pediatrics'), (2004, 'Susan', 'Taylor', 4165552004, 'Orthopedics'),
(2005, 'Raj', 'Singh', 4165552005, 'Dermatology'), (2006, 'Anna', 'Kovalenko', 4165552006, 'Radiology'), (2007, 'Carlos', 'Garcia', 4165552007, 'Oncology'), (2008, 'Emma', 'Smith', 4165552008, 'Gastroenterology'), 
(2009, 'John', 'Doe', 4165552009, 'Anesthesiology'), (2010, 'Marie', 'Curie', 4165552010, 'Endocrinology'), (2011, 'Kevin', 'Brown', 4165552011, 'Neurosurgery'), (2012, 'Rachel', 'Green', 4165552012, 'Plastic Surgery'),
(2013, 'Lucas', 'Graham', 4165552013, 'Cardiology'), (2014, 'Sophia', 'Martinez', 4165552014, 'Pediatrics'), (2015, 'Olivia', 'Hernandez', 4165552015, 'Dermatology'), (2016, 'Ethan', 'Moore', 4165552016, 'Radiology'),
(2017, 'Natalie', 'Murphy', 4165552017, 'Oncology'), (2018, 'Dylan', 'Lee', 4165552018, 'Gastroenterology'), (2019, 'Ava', 'Walker', 4165552019, 'Anesthesiology'), (2020, 'Isabella', 'Young', 4165552020, 'Endocrinology'),
(2021, 'Mason', 'King', 4165552021, 'General Surgery'), (2022, 'Chloe', 'Wright', 4165552022, 'Psychiatry'), (2023, 'Jacob', 'Lopez', 4165552023, 'Orthopedics'), (2024, 'Madison', 'Hill', 4165552024, 'Ophthalmology'),
(2025, 'Elijah', 'Scott', 4165552025, 'Urology'), (2026, 'Zoe', 'Torres', 4165552026, 'Neurology'), (2027, 'Liam', 'Nguyen', 4165552027, 'Dentistry'), (2028, 'Charlotte', 'Anderson', 4165552028, 'Pediatric Surgery'),
(2029, 'Benjamin', 'Thomas', 4165552029, 'Dermatology'), (2030, 'Mia', 'Jackson', 4165552030, 'Radiology');

DROP TABLE IF EXISTS transactions;
CREATE TABLE transactions
(
	transactionID NUMERIC(10) PRIMARY KEY,
	patientID NUMERIC(10) NOT  NULL,
	roomLocation VARCHAR(4) NOT  NULL,
	financial_source VARCHAR(30) NOT  NULL,
	costCentreID NUMERIC(10) NOT  NULL,
	itemID NUMERIC(10) NOT NULL,
	itemDescription VARCHAR(150) NOT NULL,
	chargesIncurred NUMERIC(10) NOT NULL
);
INSERT INTO transactions (transactionID, patientID, roomLocation, financial_source, costCentreID, itemID, itemDescription, chargesIncurred) 
VALUES
(10001, 101, '105E', 'Insurance', 5001, 3001, 'Daily Room Charge', 200), (10002, 102, '106A', 'Private Pay', 5002, 3002, 'X-Ray', 100), (10003, 103, '106B', 'Insurance', 5003, 3003, 'Blood Test', 50),
(10032, 104, '105E', 'Insurance', 5007, 3007, 'MRI', 400), 
(10004, 104, '107E', 'Medicaid', 5004, 3004, 'CT Scan', 350), (10005, 105, '108C', 'Insurance', 5005, 3005, 'Surgery Fee', 1500), (10006, 106, '109D', 'Private Pay', 5006, 3006, 'Physical Therapy Session', 120),
(10007, 107, '110A', 'Medicare', 5007, 3007, 'MRI', 400), (10008, 108, '111B', 'Insurance', 5008, 3008, 'Ultrasound', 300), (10009, 109, '112C', 'Private Pay', 5009, 3009, 'EKG', 150), 
(10010, 110, '113D', 'Insurance', 5010, 3010, 'Medication', 75), (10011, 111, '114A', 'Insurance', 5001, 3011, 'Consultation Fee', 250), (10012, 112, '114B', 'Private Pay', 5002, 3012, 'Radiology Imaging', 200),
(10013, 113, '115C', 'Insurance', 5003, 3013, 'Lab Work', 80), (10014, 114, '115D', 'Medicaid', 5004, 3014, 'Orthopedic Cast', 500), (10015, 115, '116E', 'Insurance', 5005, 3015, 'Heart Monitoring', 1100),
(10016, 116, '117F', 'Private Pay', 5006, 3016, 'Neurological Exam', 300), (10017, 117, '118G', 'Medicare', 5007, 3017, 'Pediatric Checkup', 150), (10018, 118, '118H', 'Insurance', 5008, 3018, 'Chemotherapy Session', 2000),
(10019, 119, '119I', 'Private Pay', 5009, 3019, 'Emergency Surgery', 4000), (10020, 120, '120J', 'Insurance', 5010, 3020, 'ICU Daily Charge', 1000), (10021, 121, '121K', 'Insurance', 5001, 3021, 'Routine Checkup', 100),
(10022, 122, '122L', 'Private Pay', 5002, 3022, 'Dental X-Ray', 90), (10023, 123, '123M', 'Insurance', 5003, 3023, 'Vaccination', 60), (10024, 124, '123N', 'Medicaid', 5004, 3024, 'Knee Surgery', 4500),
(10025, 125, '124O', 'Insurance', 5005, 3025, 'Cardiac Stress Test', 600), (10026, 126, '125P', 'Private Pay', 5006, 3026, 'Brain MRI', 700), (10027, 127, '126Q', 'Medicare', 5007, 3027, 'Allergy Testing', 200),
(10028, 128, '127R', 'Insurance', 5008, 3028, 'Oncology Consultation', 350), (10029, 129, '128S', 'Private Pay', 5009, 3029, 'Ambulance Fee', 500), (10030, 130, '129T', 'Insurance', 5010, 3030, 'Pain Medication', 40);


DROP TABLE IF EXISTS revenue;
CREATE TABLE revenue
(
	revenueID NUMERIC(10) PRIMARY KEY,
	costCentreID NUMERIC(10) NOT  NULL,
    costCentreName VARCHAR(255) NOT  NULL,
    numberOfTransactions int NOT  NULL,
	totalCharge NUMERIC(9, 2) NOT  NULL,
	assure NUMERIC(9, 2) NOT  NULL,
	ESI NUMERIC(9, 2) NOT NULL,
	selfPay NUMERIC(9, 2) NOT NULL,
    otherPay NUMERIC(9, 2) NOT NULL
);
INSERT INTO revenue (revenueID, costCentreID, costCentreName, numberOfTransactions, totalCharge, assure, ESI, selfPay, otherPay) 
VALUES
(5001, 5001, 'General Medicine', 15, 10000.00, 6000.00, 2000.00, 1500.00, 500.00), (5002, 5002, 'Radiology', 10, 5000.00, 3000.00, 1000.00, 800.00, 200.00),
(5003, 5003, 'Laboratory', 20, 3000.00, 1800.00, 700.00, 400.00, 100.00), (5004, 5004, 'Orthopedics', 8, 12000.00, 7000.00, 3000.00, 1500.00, 500.00),
(5005, 5005, 'Cardiology', 12, 8000.00, 5000.00, 2000.00, 800.00, 200.00), (5006, 5006, 'Neurology', 9, 9000.00, 5500.00, 2500.00, 800.00, 200.00),
(5007, 5007, 'Pediatrics', 14, 7000.00, 4000.00, 1500.00, 1200.00, 300.00), (5008, 5008, 'Oncology', 6, 15000.00, 10000.00, 3000.00, 1500.00, 500.00),
(5009, 5009, 'Emergency Room', 25, 11000.00, 7000.00, 2000.00, 1500.00, 500.00), (5010, 5010, 'Intensive Care Unit', 7, 13000.00, 8000.00, 3000.00, 1500.00, 500.00),
(5011, 5011, 'Gastroenterology', 10, 6000.00, 4000.00, 1000.00, 800.00, 200.00), (5012, 5012, 'Dermatology', 12, 4000.00, 2500.00, 1000.00, 400.00, 100.00),
(5013, 5013, 'Psychiatry', 14, 5500.00, 3500.00, 1500.00, 400.00, 100.00), (5014, 5014, 'Nephrology', 9, 7000.00, 4500.00, 1500.00, 800.00, 200.00),
(5015, 5015, 'Neurosurgery', 8, 12000.00, 7000.00, 3000.00, 1000.00, 1000.00), (5016, 5016, 'Urology', 15, 5000.00, 3000.00, 1500.00, 400.00, 100.00),
(5017, 5017, 'Endocrinology', 11, 4500.00, 2500.00, 1500.00, 500.00, 0.00), (5018, 5018, 'Ophthalmology', 13, 5300.00, 3300.00, 1300.00, 500.00, 200.00),
(5019, 5019, 'Obstetrics and Gynecology', 17, 8000.00, 5000.00, 2000.00, 800.00, 200.00), (5020, 5020, 'Pulmonology', 6, 6200.00, 4200.00, 1500.00, 400.00, 100.00),
(5021, 5021, 'Rheumatology', 5, 3100.00, 2100.00, 700.00, 200.00, 100.00), (5022, 5022, 'Hematology', 4, 2000.00, 1000.00, 500.00, 400.00, 100.00),
(5023, 5023, 'Geriatrics', 9, 4600.00, 2600.00, 1500.00, 400.00, 100.00), (5024, 5024, 'Allergy and Immunology', 13, 5100.00, 3100.00, 1200.00, 600.00, 200.00),
(5025, 5025, 'Plastic Surgery', 7, 13000.00, 8300.00, 3500.00, 1000.00, 200.00), (5026, 5026, 'Pediatric Surgery', 16, 9000.00, 6000.00, 2000.00, 800.00, 200.00),
(5027, 5027, 'Infectious Disease', 8, 4800.00, 2800.00, 1200.00, 600.00, 200.00), (5028, 5028, 'Sports Medicine', 10, 5500.00, 3500.00, 1000.00, 800.00, 200.00),
(5029, 5029, 'Bariatric Surgery', 12, 11000.00, 7000.00, 3000.00, 800.00, 200.00), (5030, 5030, 'Rehabilitation', 18, 7000.00, 4000.00, 2000.00, 900.00, 100.00);

-- THIS IS A VIEW, DELETE LATER
DROP TABLE IF EXISTS patientReports;
CREATE TABLE patientReports
(
    reportID NUMERIC(10) NOT  NULL,
    reportDate INT NOT  NULL,
    physicianID NUMERIC(10) NOT  NULL,
    physicianFname VARCHAR(100) NOT  NULL,
    physicianLname VARCHAR(100) NOT  NULL,
    patientID NUMERIC(10) NOT  NULL,
    patientFname VARCHAR(100) NOT  NULL,
    patientLname VARCHAR(100) NOT  NULL,
    patientRoomLocation VARCHAR(4) NOT  NULL,
    patientAdmissionDate DATE
);
INSERT INTO patientReports (reportID, reportDate, physicianID, physicianFname, physicianLname, patientID, patientFname, patientLname, patientRoomLocation, patientAdmissionDate) 
VALUES
(9001, '20230505', 2001, 'James', 'Miller', 101, 'Howard', 'Gerard', '105E', '2023-05-05'), (9002, '20230506', 2002, 'Lisa', 'Wong', 102, 'Emily', 'Smith', '106A', '2023-05-06'),
(9003, '20230507', 2003, 'Mohammed', 'Ali', 103, 'Michael', 'Johnson', '106B', '2023-05-07'), (9004, '20230508', 2004, 'Susan', 'Taylor', 104, 'Sarah', 'Davis', '107E', '2023-05-08'),
(9005, '20230509', 2005, 'Raj', 'Singh', 105, 'Robert', 'Martinez', '108C', '2023-05-09'), (9006, '20230510', 2006, 'Anna', 'Kovalenko', 106, 'Linda', 'Garcia', '109D', '2023-05-10'),
(9007, '20230511', 2007, 'Carlos', 'Garcia', 107, 'Angela', 'Brown', '110A', '2023-05-11'), (9008, '20230512', 2008, 'Emma', 'Smith', 108, 'David', 'Wilson', '111B', '2023-05-12'),
(9009, '20230513', 2009, 'John', 'Doe', 109, 'Patricia', 'Miller', '112C', '2023-05-13'), (9010, '20230514', 2010, 'Marie', 'Curie', 110, 'Brian', 'Lee', '113D', '2023-05-14'),
(9011, '20230515', 2011, 'Kevin', 'Brown', 111, 'Alice', 'Brown', '114A', '2023-05-15'), (9012, '20230516', 2012, 'Rachel', 'Green', 112, 'Mark', 'Jones', '114B', '2023-05-16'),
(9013, '20230517', 2013, 'Lucas', 'Graham', 113, 'Rachel', 'Adams', '115C', '2023-05-17'), (9014, '20230518', 2014, 'Sophia', 'Martinez', 114, 'Gary', 'White', '115D', '2023-05-18'),
(9015, '20230519', 2015, 'Olivia', 'Hernandez', 115, 'Laura', 'Green', '116E', '2023-05-19'), (9016, '20230520', 2016, 'Ethan', 'Moore', 116, 'Steven', 'Black', '117F', '2023-05-20'),
(9017, '20230521', 2017, 'Natalie', 'Murphy', 117, 'Monica', 'Wilson', '118G', '2023-05-21'), (9018, '20230522', 2018, 'Dylan', 'Lee', 118, 'Jeff', 'Taylor', '118H', '2023-05-22'),
(9019, '20230523', 2019, 'Ava', 'Walker', 119, 'Zoe', 'Clark', '119I', '2023-05-23'), (9020, '20230524', 2020, 'Isabella', 'Young', 120, 'Chris', 'Martin', '120J', '2023-05-24'),
(9021, '20230525', 2021, 'Mason', 'King', 121, 'Nancy', 'King', '121K', '2023-05-25'), (9022, '20230526', 2022, 'Chloe', 'Wright', 122, 'Victor', 'Lee', '122L', '2023-05-26'),
(9023, '20230527', 2023, 'Jacob', 'Lopez', 123, 'Diana', 'Wright', '123M', '2023-05-27'), (9024, '20230528', 2024, 'Madison', 'Hill', 124, 'Edward', 'Harris', '123N', '2023-05-28'),
(9025, '20230529', 2025, 'Elijah', 'Scott', 125, 'Grace', 'Moore', '124O', '2023-05-29'), (9026, '20230530', 2026, 'Zoe', 'Torres', 126, 'Henry', 'Walker', '125P', '2023-05-30'),
(9027, '20230531', 2027, 'Liam', 'Nguyen', 127, 'Irene', 'Hall', '126Q', '2023-05-31'), (9028, '20230601', 2028, 'Charlotte', 'Anderson', 128, 'Kyle', 'Young', '127R', '2023-06-01'),
(9029, '20230602', 2029, 'Benjamin', 'Thomas', 129, 'Lily', 'Scott', '128S', '2023-06-02'), (9030, '20230603', 2030, 'Mia', 'Jackson', 130, 'Max', 'Wright', '129T', '2023-06-03');


DROP TABLE IF EXISTS costCentre;
CREATE TABLE costCentre
(
	CentreID NUMERIC(10),
	ItemID NUMERIC(10),
	CentreName VARCHAR(255)
);
INSERT INTO costCentre (CentreID, ItemID, CentreName) VALUES
(5001, 10001, 'General Medicine'), (5002, 10002, 'Radiology'), (5003, 10003, 'Laboratory'), (5004, 10004, 'Orthopedics'), (5005, 10005, 'Cardiology'), (5006, 10006, 'Neurology'), (5007, 10007, 'Pediatrics'),
(5008, 10008, 'Oncology'), (5009, 10009, 'Emergency Room'), (5010, 10010, 'Intensive Care Unit'), (5011, 10011, 'Gastroenterology'), (5012, 10012, 'Dermatology'), (5013, 10013, 'Psychiatry'), (5014, 10014, 'Nephrology'),
(5015, 10015, 'Neurosurgery'), (5016, 10016, 'Urology'), (5017, 10017, 'Endocrinology'), (5018, 10018, 'Ophthalmology'), (5019, 10019, 'Obstetrics and Gynecology'), (5020, 10020, 'Pulmonology'), (5021, 10021, 'Rheumatology'),
(5022, 10022, 'Hematology'), (5023, 10023, 'Geriatrics'), (5024, 10024, 'Allergy and Immunology'), (5025, 10025, 'Plastic Surgery'), (5026, 10026, 'Pediatric Surgery'), (5027, 10027, 'Infectious Disease'),
(5028, 10028, 'Sports Medicine'), (5029, 10029, 'Bariatric Surgery'), (5030, 10030, 'Rehabilitation');

/*
TABLE NAME: TREATMENT -- POTENTIAL VIEW
 FOR NOW
ATTRIBUTES:
	- ItemID
	- CostCentreID
	- patientID
*/

DROP TABLE IF EXISTS treatment;
CREATE TABLE treatment 
(
	itemID NUMERIC(10),
	centreID NUMERIC(10),
	patientID NUMERIC(10)
);

INSERT INTO treatment (itemID, centreID, patientID) VALUES
(10001, 5001, 101), -- General Medicine treatment for patient 101
(10002, 5002, 102), -- Radiology service for patient 102
(10003, 5003, 103), -- Laboratory test for patient 103
(10004, 5004, 104), -- Orthopedics treatment for patient 104
(10005, 5005, 105), -- Cardiology service for patient 105
(10006, 5006, 106), -- Neurology treatment for patient 106
(10007, 5007, 107), -- Pediatrics service for patient 107
(10008, 5008, 108), -- Oncology treatment for patient 108
(10009, 5009, 109), -- Emergency Room service for patient 109
(10010, 5010, 110), -- Intensive Care treatment for patient 110
(10011, 5011, 111), -- Gastroenterology treatment for patient 111
(10012, 5012, 112), -- Dermatology service for patient 112
(10013, 5013, 113), -- Psychiatry service for patient 113
(10014, 5014, 114), -- Nephrology treatment for patient 114
(10015, 5015, 115), -- Neurosurgery service for patient 115
(10016, 5016, 116), -- Urology treatment for patient 116
(10017, 5017, 117), -- Endocrinology service for patient 117
(10018, 5018, 118), -- Ophthalmology treatment for patient 118
(10019, 5019, 119), -- Obstetrics and Gynecology service for patient 119
(10020, 5020, 120), -- Pulmonology treatment for patient 120
(10021, 5021, 121), -- Rheumatology treatment for patient 121
(10022, 5022, 122), -- Hematology service for patient 122
(10023, 5023, 123), -- Geriatrics treatment for patient 123
(10024, 5024, 124), -- Allergy and Immunology service for patient 124
(10025, 5025, 125), -- Plastic Surgery treatment for patient 125
(10026, 5026, 126), -- Pediatric Surgery service for patient 126
(10027, 5027, 127), -- Infectious Disease treatment for patient 127
(10028, 5028, 128), -- Sports Medicine service for patient 128
(10029, 5029, 129), -- Bariatric Surgery treatment for patient 129
(10030, 5030, 130); -- Rehabilitation service for patient 130

-- CREATE TABLE FOR ITEMS
-- COMBINE [] AND [] TABLES TO CREATE A TEMPORARY TABLE 