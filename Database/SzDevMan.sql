CREATE TABLE Device(
    Id INT AUTO_INCREMENT,
    Type VARCHAR(255),
    Manufacturer VARCHAR(255),
    DeviceName VARCHAR(255),
    DeviceVersion VARCHAR(255),
    DeviceSerialNumber VARCHAR(255),
    YearOfProduction YEAR,
    FirmwareVersion VARCHAR(255),
    Location VARCHAR(255),
    DateOfPurchase DATE,
    Warranty VARCHAR(255),
    InventoryId VARCHAR(255),
    PRIMARY KEY (Id)
);

CREATE TABLE Service(
    Id INT AUTO_INCREMENT,
    Type VARCHAR(255),
    ServiceName VARCHAR(255),
    ServiceVersion VARCHAR(255),
    ServiceLicence VARCHAR(255),
    ServiceProvider VARCHAR(255),
    ServiceAccess TEXT,
    PRIMARY KEY (Id)
);

CREATE TABLE Software(
    Id INT AUTO_INCREMENT,
    Type VARCHAR(255),
    SoftwareName VARCHAR(255),
    SoftwareVersion VARCHAR(255),
    SoftwareLicence VARCHAR(255),
    Hardware VARCHAR(255),
    PRIMARY KEY (Id)
);