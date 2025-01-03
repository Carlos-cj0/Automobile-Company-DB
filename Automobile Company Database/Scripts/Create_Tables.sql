CREATE TABLE Ford_Corp_entity (
Company_ID VARCHAR (30) NOT NULL,
Assembly_Plants VARCHAR (40) NOT NULL,
Manufacturing_Plants VARCHAR (40) NOT NULL,
Share_Holders VARCHAR (30) NOT NULL,
PRIMARY KEY (Company_ID)
)

CREATE TABLE Vehicles (
Vehicles_ID VARCHAR (30) NOT NULL,
 Manufacture_Date_and_time DATETIME NOT NULL,
Chassis_types VARCHAR (50),
Energy_Type VARCHAR(20),
Company_ID VARCHAR (30) NOT NULL,
Brand_ID VARCHAR (30) NOT NULL,
FOREIGN KEY (Company_ID) REFERENCES Ford_Corp_entity  (Company_ID),
FOREIGN KEY (Brand_ID) REFERENCES Brands (Brand_ID),
PRIMARY KEY (Vehicles_ID)
)


CREATE TABLE VIN (
 Manufacturing_location VARCHAR (50) NOT NULL,
 Manufacture_Date DATE NOT NULL,
 Security_Code VARCHAR (30) NOT NULL,
 Serial_number VARCHAR (30) NOT NULL,
 Assembly_Plant VARCHAR (50) NOT NULL, 
 Manufacturer VARCHAR (30) NOT NULL,
 Towing_capacity INT NOT NULL,
 Vehicles_ID VARCHAR (30) NOT NULL,
 FOREIGN KEY (Vehicles_ID) REFERENCES Vehicles (Vehicles_ID),
 PRIMARY KEY (Manufacturing_location,Manufacture_Date,Security_Code,Serial_number,Assembly_Plant,Manufacturer,Towing_capacity,Vehicles_ID)
);

CREATE TABLE Brands (
Brand_ID VARCHAR (30),
Brand_name  VARCHAR (30),
Date_founded DATETIME,
Number_of_dealerships INT,
Brand_website_URL VARCHAR (50),
Brand_office_locations VARCHAR (50),
PRIMARY KEY (Brand_ID)
)

CREATE TABLE Brand_Specifics (
Category VARCHAR (50) NOT NULL,
Target_age_group VARCHAR(50) NOT NULL,
Target_market_positioning  VARCHAR(50) NOT NULL,
Brand_ID VARCHAR (30),
FOREIGN KEY (Brand_ID) REFERENCES Brands (Brand_ID),
PRIMARY KEY (Category,Target_age_group,Target_market_positioning,Brand_ID)
)


CREATE TABLE Suppliers (
Suppliers_ID VARCHAR (30),
Supplier_name VARCHAR(30),
Head_office_city VARCHAR (20),
Head_office_address VARCHAR (30),
Supplier_rep_name VARCHAR (30),
Date_of_joining DATE,
Parts_provided VARCHAR (30),
Model_ID VARCHAR (30),
Company_ID VARCHAR (30),
FOREIGN KEY (Company_ID) REFERENCES Ford_Corp_entity  (Company_ID),
FOREIGN KEY (Model_ID) REFERENCES Models (Model_ID),
PRIMARY KEY (Suppliers_ID)
)

CREATE TABLE Models (
Model_ID VARCHAR (30),
Model_name VARCHAR (30),
Release_Date DATE,
Model_color VARCHAR(20),
Model_Energy_Type VARCHAR(20),
Brand_ID VARCHAR (30),
FOREIGN KEY (Brand_ID) REFERENCES Brands (Brand_ID),
PRIMARY KEY (Model_ID)
)

CREATE TABLE Body_Styles (
Body_ID VARCHAR (30),
Body_name VARCHAR (20),
Number_of_doors INT,
Model_ID VARCHAR (30),
FOREIGN KEY (Model_ID) REFERENCES Models (Model_ID),
PRIMARY KEY (Body_ID)
)

CREATE TABLE Model_Options (
Option_ID VARCHAR (30),
Powertrain VARCHAR (20),
Performance VARCHAR (20),
Interior_Features VARCHAR (50),
Exterior_Features VARCHAR (50),
Infotainment VARCHAR (50),
Model_ID VARCHAR (30),
FOREIGN KEY (Model_ID) REFERENCES Models (Model_ID),
PRIMARY KEY (Option_ID)
)

CREATE TABLE Sales (
Sales_ID VARCHAR(30) NOT NULL,
Sale_Date DATE NOT NULL,
Color VARCHAR (20) NOT NULL,
Price DECIMAL (10.2) NOT NULL DEFAULT 0.00,
Model_ID VARCHAR (30) NOT NULL,
Customer_ID VARCHAR (30) NOT NULL,
Dealer_ID VARCHAR(30) NOT NULL,
FOREIGN KEY (Model_ID) REFERENCES Models (Model_ID),
FOREIGN KEY (Customer_ID) REFERENCES Customer (Customer_ID),
FOREIGN KEY (Dealer_ID ) REFERENCES Dealers (Dealer_ID ),
Primary key (Sales_ID) 
)

CREATE TABLE Dealers (
Dealer_ID VARCHAR(30),
Dealer_name VARCHAR (20),
Date_of_joining DATE,
Factory_Purchase_Price INT,
Number_of_vehicles_purchased_from_factory INT,
Number_of_sold_vehicles INT,
Number_of_unsold_vehicles INT,
Company_ID VARCHAR (30),
Vehicles_ID VARCHAR (30),
Model_ID VARCHAR (30),
Brand_ID VARCHAR (30),
Option_ID VARCHAR (30),
Body_ID VARCHAR (30),
FOREIGN KEY (Company_ID) REFERENCES Ford_Corp_entity  (Company_ID),
FOREIGN KEY (Vehicles_ID) REFERENCES Vehicles (Vehicles_ID),
FOREIGN KEY (Model_ID) REFERENCES Models (Model_ID),
FOREIGN KEY (Brand_ID) REFERENCES Brands (Brand_ID),
FOREIGN KEY (Option_ID) REFERENCES Model_Options (Option_ID),
FOREIGN KEY (Body_ID ) REFERENCES Body_Styles (Body_ID ),
PRIMARY KEY (Dealer_ID )
)


CREATE TABLE Customer (
Customer_ID VARCHAR (30),
Customer_name VARCHAR (20),
Gender VARCHAR(20),
City VARCHAR (20),
Street_Address VARCHAR(30),
Zip VARCHAR (20),
Customer_Income DECIMAL(10, 2),
PRIMARY KEY (Customer_ID)
)

