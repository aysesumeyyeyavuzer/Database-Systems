-- Create Patients table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(100),
    PatientBloodGroup VARCHAR(3),
    PatientDisease VARCHAR(255),
    DoctorID INT,
    HospitalID INT,
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
    FOREIGN KEY (HospitalID) REFERENCES Hospitals(HospitalID)
);

-- Create Donors table
CREATE TABLE Donors (
    DonorID INT PRIMARY KEY,
    DonorName VARCHAR(100),
    DonorBloodGroup VARCHAR(3),
    DonorMedicalReport TEXT,
    DonorAddress VARCHAR(255),
    DonorContactNumber VARCHAR(15),
    BloodBankID INT,
    FOREIGN KEY (BloodBankID) REFERENCES BloodBanks(BloodBankID)
);

-- Create BloodBanks table
CREATE TABLE BloodBanks (
    BloodBankID INT PRIMARY KEY,
    BloodBankName VARCHAR(100),
    BloodBankAddress VARCHAR(255),
    BloodBankContactNumber VARCHAR(15)
);

-- Create BloodInventory table
CREATE TABLE BloodInventory (
    InventoryID INT PRIMARY KEY,
    BloodBankID INT,
    BloodGroup VARCHAR(3),
    UnitsAvailable INT,
    FOREIGN KEY (BloodBankID) REFERENCES BloodBanks(BloodBankID)
);

-- Create BloodTests table
CREATE TABLE BloodTests (
    TestID INT PRIMARY KEY,
    DonorID INT,
    TestDate DATE,
    TestResult VARCHAR(255),
    FOREIGN KEY (DonorID) REFERENCES Donors(DonorID)
);

-- Create Doctors table
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    DoctorName VARCHAR(100),
    DoctorSpecialization VARCHAR(100),
    DoctorContactNumber VARCHAR(15)
);

-- Create Hospitals table
CREATE TABLE Hospitals (
    HospitalID INT PRIMARY KEY,
    HospitalName VARCHAR(100),
    HospitalAddress VARCHAR(255),
    HospitalContactNumber VARCHAR(15)
);
