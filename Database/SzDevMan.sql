DROP DATABASE IF EXISTS SzDevMan;
CREATE DATABASE SzDevMan;

show databases;
use SzDevMan;

drop table if exists Device; 
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
insert into Device (type, Manufacturer, DeviceName, DeviceVersion, DeviceSerialNumber, YearOfProduction) VALUES ('PC', 'Asus', 'PC1', '1.0', '1234', 2002);

drop table if exists Service; 
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

drop table if exists Software; 
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
insert into Software (type, SoftwareName, SoftwareVersion, SoftwareLicence, HardwareId) VALUES ('SW1', 'Photoshop', '14.1', 'Yes', 1);


show tables;
select * from device;
select * from Service;
select * from Software;




