DROP VIEW IF EXISTS [Utility];
GO

CREATE VIEW [Utility] AS
	SELECT 
		p.patientID, 
		p.patientFName, 
		p.patientLName, 
		p.streetAddress, 
		p.city, 
		p.province, 
		p.postalCode, 
		p.PhoneNumber, 
		p.sex, 
		p.healthCardNumber, 
		p.extension, 
		p.AdmissionDate, 
		p.financialStatus, 
		p.dischargeDate,
		phy.physicianID, 
		phy.physicianFName, 
		phy.physicianLName, 
		phy.physicianPhoneNumber, 
		phy.specialization,
		pr.patientRoomLocation
	FROM 
		patient p
	INNER JOIN 
		patientReports pr ON p.patientID = pr.patientID
	INNER JOIN 
		physician phy ON pr.physicianID = phy.physicianID;



DROP VIEW IF EXISTS [daily_revenue];
GO


CREATE VIEW [daily_revenue] AS
SELECT 
	  trans.patientID
	, rooms.roomLocation
	, patient.patientLName + ', ' + patient.patientFName AS patient_name 
	, trans.financial_source
	, cost.CentreID
	, trans.itemID
	, trans.itemDescription
	, trans.chargesIncurred
	, [ViewID].total_patient_cost

FROM transactions as trans
INNER JOIN patient
ON trans.patientID = patient.patientID

INNER JOIN rooms
ON rooms.roomID = patient.roomID

INNER JOIN costCentre AS cost
ON cost.CentreID = trans.costCentreID

INNER JOIN [ViewID]
ON [ViewID].patientID = trans.patientID

GROUP BY trans.patientID
	, rooms.roomLocation
	, patient.patientFName
	, patient.patientLName
	, trans.financial_source
	, trans.costCentreID
	, cost.CentreID
	, trans.itemID
	, trans.itemDescription
	, trans.chargesIncurred
GO

SELECT * FROM [daily_revenue];

SELECT 
    patientID,
    patient_name, 
    SUM(chargesIncurred) AS total_patient_cost
FROM 
    [daily_revenue]
GROUP BY 
    patientID, 
    patient_name;
GO

SELECT * , SUM(chargesIncurred) AS total_patient_cost FROM [daily_revenue] GROUP BY [daily_revenue].patientID
	, [daily_revenue].roomLocation
	, [daily_revenue].patient_name
	, [daily_revenue].financial_source
	, [daily_revenue].CentreID
	, [daily_revenue].itemID
	, [daily_revenue].itemDescription
	, [daily_revenue].chargesIncurred;




DROP VIEW IF EXISTS ViewID;
GO
CREATE VIEW [ViewID] AS
	SELECT transactions.patientID 
	, patient.patientLName + ', ' + patient.patientFName AS patient_name 
	,SUM(chargesIncurred) AS total_patient_cost 
	FROM transactions
	INNER JOIN patient
	ON transactions.patientID = patient.patientID
	GROUP BY 
    transactions.patientID
	, patient.patientLName
	, patient.patientFName;
GO

SELECT * FROM [ViewID];
----------------------------------------------------------------------------------
	SELECT * FROM [Utility];
	SELECT * FROM rooms;
	SELECT * FROM patient;
	SELECT * FROM physician;
	SELECT * FROM transactions ORDER BY transactionID DESC;
	SELECT * FROM revenue;
	SELECT * FROM patientReports;
	SELECT * FROM costCentre;
	SELECT * FROM treatment;