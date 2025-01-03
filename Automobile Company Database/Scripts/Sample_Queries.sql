

--Sample Queries

-- 1 Retrieve all vehicles manufactured by Ford in 2022

SELECT v.Vehicles_ID, v.Manufacture_Date_and_time, v.Chassis_types, v.Company_ID, v.Brand_ID
FROM Vehicles v
JOIN Ford_Corp_entity f ON v.Company_ID = f.Company_ID
WHERE YEAR(v.Manufacture_Date_and_time) = 2022;

-- 2 List all models along with their brand names and release dates
SELECT m.Model_ID, m.Model_name, m.Release_Date, b.Brand_name
FROM Models m
JOIN Brands b ON m.Brand_ID = b.Brand_ID;

-- 3 Find all suppliers that provide electronic systems 
SELECT s.Suppliers_ID, s.Supplier_name, s.Head_office_city, s.Parts_provided
FROM Suppliers s
WHERE s.Parts_provided = 'Electronic Systems';

-- 4 Get the sales details for vehicles sold in 2023
SELECT sa.Sales_ID, sa.Sale_Date, sa.Color, sa.Model_ID, sa.Customer_ID, sa.Dealer_ID
FROM Sales sa
WHERE YEAR(sa.Sale_Date) = 2023;


-- 5 List all vehicles along with their VIN details
SELECT v.Vehicles_ID, v.Manufacture_Date_and_time, v.Chassis_types, vin.Manufacturing_location,
vin.Manufacture_Date, vin.Security_Code, vin.Serial_number, vin.Assembly_Plant, vin.Manufacturer, vin.Towing_capacity
FROM Vehicles v
JOIN VIN vin ON v.Vehicles_ID = vin.Vehicles_ID;



-- 6 Find the number of vehicles manufactured by each assembly plant
SELECT vin.Assembly_Plant, COUNT(vin.Vehicles_ID) AS NumberOfVehicles
FROM VIN vin
GROUP BY vin.Assembly_Plant;



-- 7 Retrieve the names and contact details of all customers who bought vehicles from AutoNation

SELECT cu.Customer_name, cu.City, cu.Street_Address, cu.Zip
FROM Sales sa
JOIN Customer cu ON sa.Customer_ID = cu.Customer_ID
JOIN Dealers d ON sa.Dealer_ID = d.Dealer_ID
WHERE d.Dealer_name = 'AutoNation';

-- 8 List all brands with their specific categories and target age groups 
SELECT b.Brand_name, bs.Category, bs.Target_age_group
FROM Brands b
JOIN Brand_Specifics bs ON b.Brand_ID = bs.Brand_ID;


-- 9 Find the top 3 dealers with the highest number of vehicles purchased from the factory
SELECT d.Dealer_name, d.Number_of_vehicles_purchased_from_factory
FROM Dealers d
ORDER BY d.Number_of_vehicles_purchased_from_factory DESC
LIMIT 3;

-- 10 Retrieve all models along with their body styles and model options 
SELECT m.Model_name, b.Body_name, mo.Powertrain, mo.Performance, mo.Interior_Features, mo.Exterior_Features, mo.Infotainment
FROM Models m
JOIN Body_Styles b ON m.Model_ID = b.Model_ID
JOIN Model_Options mo ON m.Model_ID = mo.Model_ID;


-- Trigger to ensure that a new entry in VIN does not have a Vehicles_ID that already exists

DELIMITER //

CREATE TRIGGER before_vin_insert
BEFORE INSERT ON VIN
FOR EACH ROW
BEGIN
    DECLARE vehicle_count INT;
    SELECT COUNT(*) INTO vehicle_count FROM VIN WHERE Vehicles_ID = NEW.Vehicles_ID;
    IF vehicle_count > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Vehicles_ID already exists in VIN table.';
    END IF;
END //

DELIMITER ;


-- Trigger to update dealer's unsold vehicle count after a sale

DELIMITER //

CREATE TRIGGER after_sales_insert
AFTER INSERT ON Sales
FOR EACH ROW
BEGIN
    UPDATE Dealers
    SET Number_of_unsold_vehicles = Number_of_unsold_vehicles - 1
    WHERE Dealer_ID = NEW.Dealer_ID;
END //

DELIMITER ;


-- Function to calculate average price of sales for a model

DELIMITER //

CREATE FUNCTION average_model_price(model_id VARCHAR(30))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE avg_price DECIMAL(10,2);
    SELECT AVG(Price) INTO avg_price FROM Sales WHERE Model_ID = model_id;
    RETURN avg_price;
END //

DELIMITER ;

SELECT average_model_price(M001) AS 'test'


-- Function to get number of dealerships for a brand

DELIMITER //

CREATE FUNCTION count_dealerships(brand_id VARCHAR(30))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE dealership_count INT;
    SELECT COUNT(*) INTO dealership_count FROM Dealers WHERE Brand_ID = brand_id;
    RETURN dealership_count;
END //

DELIMITER ;

SELECT * FROM Dealers 


SELECT count_dealerships('B001') AS 'Dealerships for B001';