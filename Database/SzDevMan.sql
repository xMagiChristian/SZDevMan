DROP DATABASE IF EXISTS SzDevMan;
CREATE DATABASE SzDevMan;
USE SzDevMan;

DROP TABLE IF EXISTS Device; 
CREATE TABLE Device(
    DeviceId INT AUTO_INCREMENT,
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
    PRIMARY KEY (DeviceId)
);

DROP TABLE IF EXISTS Service; 
CREATE TABLE Service(
    ServiceId INT AUTO_INCREMENT,
    Type VARCHAR(255),
    ServiceName VARCHAR(255),
    ServiceVersion VARCHAR(255),
    ServiceLicence VARCHAR(255),
    ServiceProvider VARCHAR(255),
    ServiceAccess TEXT,
    PRIMARY KEY (ServiceId)
);

DROP TABLE IF EXISTS Software; 
CREATE TABLE Software(
    SoftwareId INT AUTO_INCREMENT,
    Type VARCHAR(255),
    SoftwareName VARCHAR(255),
    SoftwareVersion VARCHAR(255),
    SoftwareLicence VARCHAR(255),
    HardwareId INT,
    PRIMARY KEY (SoftwareId),
    CONSTRAINT fk_SoftwareDevice FOREIGN KEY (HardwareId) REFERENCES Device(DeviceId) ON UPDATE CASCADE ON DELETE CASCADE
);



INSERT INTO Device (type, Manufacturer, DeviceName, DeviceVersion, DeviceSerialNumber, YearOfProduction, FirmwareVersion, Location, DateOfPurchase, Warranty, InventoryId) 
VALUES ('PC', 'Asus', 'PC1', '1.0', '1234', 2002, '1.0', 'Ybbs', CURDATE(), 'Yes', '100');
INSERT INTO Device (type, Manufacturer, DeviceName, DeviceVersion, DeviceSerialNumber, YearOfProduction, FirmwareVersion, Location, DateOfPurchase, Warranty, InventoryId) 
VALUES ('PC', 'Asus', 'PC2', '1.0', '1235', 2002, '1.0', 'Ybbs', CURDATE(), 'Yes', '101');
INSERT INTO Device (type, Manufacturer, DeviceName, DeviceVersion, DeviceSerialNumber, YearOfProduction, FirmwareVersion, Location, DateOfPurchase, Warranty, InventoryId) 
VALUES ('PC', 'Asus', 'PC3', '1.0', '1236', 2002, '1.0', 'Ybbs', CURDATE(), 'Yes', '102');
INSERT INTO Device (type, Manufacturer, DeviceName, DeviceVersion, DeviceSerialNumber, YearOfProduction, FirmwareVersion, Location, DateOfPurchase, Warranty, InventoryId) 
VALUES ('Router', 'Cisco', 'R2', '1.4', '1237', 2000, '1.0', 'Ybbs', CURDATE(), 'Yes', '103');

INSERT INTO Software (type, SoftwareName, SoftwareVersion, SoftwareLicence, HardwareId) VALUES ('SW1', 'Photoshop', '14.1', 'No', 1);
INSERT INTO Software (type, SoftwareName, SoftwareVersion, SoftwareLicence, HardwareId) VALUES ('SW2', 'XAMPP', '7', 'Yes', 2);
INSERT INTO Software (type, SoftwareName, SoftwareVersion, SoftwareLicence, HardwareId) VALUES ('SW3', 'Putty', '5', 'Yes', 3);

INSERT INTO Service (type, ServiceName, ServiceVersion, ServiceLicence, ServiceProvider, ServiceAccess) VALUES('Miete', 'Webserver', '1.0', 'No', 'Amazon', 'No');
INSERT INTO Service (type, ServiceName, ServiceVersion, ServiceLicence, ServiceProvider, ServiceAccess) VALUES('Miete', 'Domain', '1.0', 'No', 'Amazon', 'Yes');
INSERT INTO Service (type, ServiceName, ServiceVersion, ServiceLicence, ServiceProvider, ServiceAccess) VALUES('Miete', 'Internet', '1.0', 'No', 'Amazon', 'Yes');