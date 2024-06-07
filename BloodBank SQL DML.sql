-- Select patients treated by doctors with more than 5 patients
SELECT PatientName
FROM Patients
WHERE DoctorID IN (
    SELECT DoctorID
    FROM Patients
    GROUP BY DoctorID
    HAVING COUNT(PatientID) > 5
);

-- Select donors and their respective blood bank names
SELECT Donors.DonorName, BloodBanks.BloodBankName
FROM Donors
JOIN BloodBanks ON Donors.BloodBankID = BloodBanks.BloodBankID;

-- Count of donors by blood group
SELECT DonorBloodGroup, COUNT(DonorID) AS NumberOfDonors
FROM Donors
GROUP BY DonorBloodGroup;

-- Select blood tests conducted in the last 30 days
SELECT *
FROM BloodTests
WHERE TestDate > CURRENT_DATE - INTERVAL '30' DAY;

-- Select donors with their names in uppercase
SELECT UPPER(DonorName) AS DonorNameUpperCase
FROM Donors;

-- Update contact number of a specific donor
UPDATE Donors
SET DonorContactNumber = '1234567890'
WHERE DonorID = 1;

-- Add a new column to the Patients table
ALTER TABLE Patients
ADD PatientAge INT;
