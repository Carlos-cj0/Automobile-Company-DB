INSERT INTO Ford_Corp_entity VALUES
('C001', 'Detroit Assembly', 'Dearborn Manufacturing', 'John Smith'),
('C002', 'Chicago Assembly', 'Flat Rock Manufacturing', 'Jane Doe'),
('C003', 'Kansas City Assembly', 'Lima Manufacturing', 'Alice Johnson'),
('C004', 'Louisville Assembly', 'Livonia Manufacturing', 'Bob Brown'),
('C005', 'Oakville Assembly', 'Romeo Manufacturing', 'Carol White'),
('C006', 'Valencia Assembly', 'Cleveland Manufacturing', 'David Green'),
('C007', 'Wayne Assembly', 'Buffalo Manufacturing', 'Eva Blue'),
('C008', 'Cologne Assembly', 'Sterling Heights Manufacturing', 'Frank Black'),
('C009', 'Sanand Assembly', 'Chicago Manufacturing', 'Grace Gray'),
('C010', 'Chongqing Assembly', 'Dearborn Manufacturing', 'Henry Silver'),
('C011', 'Chennai Assembly', 'Kansas City Manufacturing', 'Ivy Orange'),
('C012', 'Pretoria Assembly', 'Louisville Manufacturing', 'Jack Purple'),
('C013', 'Rayong Assembly', 'Oakville Manufacturing', 'Karen Pink'),
('C014', 'Silverton Assembly', 'Valencia Manufacturing', 'Leo Brown'),
('C015', 'Taipei Assembly', 'Wayne Manufacturing', 'Mona White');
SELECT  * FROM Ford_Corp_entity


INSERT INTO Brands VALUES
('B001', 'Ford', '1903-06-16 00:00:00', 10000, 'http://www.ford.com', 'Dearborn, MI'),
('B002', 'Lincoln', '1917-02-04 00:00:00', 500, 'http://www.lincoln.com', 'Dearborn, MI'),
('B003', 'Mercury', '1938-11-04 00:00:00', 150, 'http://www.mercury.com', 'Dearborn, MI'),
('B004', 'Troller', '1995-01-01 00:00:00', 50, 'http://www.troller.com.br', 'Horizon, Brazil'),
('B005', 'FPV', '2002-01-01 00:00:00', 200, 'http://www.fpv.com.au', 'Broadmeadows, Australia'),
('B006', 'Shelby', '1965-01-01 00:00:00', 100, 'http://www.shelby.com', 'Las Vegas, NV'),
('B007', 'Jiangling', '1993-01-01 00:00:00', 300, 'http://www.jmc.com.cn', 'Nanchang, China'),
('B008', 'Equator', '2020-03-01 00:00:00', 20, 'http://www.ford.com.cn/equator', 'Shanghai, China'),
('B009', 'Figo', '2010-03-10 00:00:00', 600, 'http://www.india.ford.com', 'Chennai, India'),
('B010', 'Bronco', '2020-06-15 00:00:00', 500, 'http://www.ford.com/bronco', 'Dearborn, MI'),
('B011', 'Maverick', '2021-06-08 00:00:00', 700, 'http://www.ford.com/maverick', 'Dearborn, MI'),
('B012', 'Territory', '2018-10-10 00:00:00', 400, 'http://www.ford.com/territory', 'Dearborn, MI'),
('B013', 'Ranger', '1983-01-01 00:00:00', 900, 'http://www.ford.com/ranger', 'Dearborn, MI'),
('B014', 'Mustang', '1964-04-17 00:00:00', 800, 'http://www.ford.com/mustang', 'Dearborn, MI'),
('B015', 'Focus', '1998-05-01 00:00:00', 1000, 'http://www.ford.com/focus', 'Dearborn, MI');
SELECT  * FROM Brands


INSERT INTO Brand_Specifics VALUES
('SUV', '30-50', 'Premium', 'B001'),
('Sedan', '25-40', 'Luxury', 'B002'),
('Hatchback', '20-35', 'Sporty', 'B003'),
('Off-Road', '30-50', 'Adventure', 'B004'),
('Performance', '25-45', 'Sport', 'B005'),
('Muscle', '20-40', 'Performance', 'B006'),
('Commercial', '30-60', 'Utility', 'B007'),
('Crossover', '25-45', 'Family', 'B008'),
('Compact', '20-35', 'Budget', 'B009'),
('SUV', '30-50', 'Off-Road', 'B010'),
('Truck', '25-55', 'Utility', 'B011'),
('Crossover', '30-50', 'Urban', 'B012'),
('Truck', '30-50', 'Utility', 'B013'),
('Coupe', '20-40', 'Performance', 'B014'),
('Compact', '20-35', 'Economy', 'B015');
SELECT  * FROM Brand_Specifics


INSERT INTO Models VALUES
('M001', 'F-150', '2022-05-01', 'Red', 'B001','Diesel' ),
('M002', 'Explorer', '2021-03-01', 'Blue', 'B001', 'Petrol'),
('M003', 'Fusion', '2020-07-01', 'White', 'B002', 'Petrol'),
('M004', 'Mondeo', '2019-11-01', 'Black', 'B002', 'Diesel'),
('M005', 'Mustang', '2022-08-01', 'Yellow', 'B006','Petrol'),
('M006', 'Ranger', '2021-09-01', 'Silver', 'B013', 'Diesel'),
('M007', 'Escape', '2022-01-01', 'Green', 'B001', 'Hybrid'),
('M008', 'Bronco', '2023-02-01', 'Orange', 'B010', 'Petrol'),
('M009', 'Maverick', '2023-04-01', 'Purple', 'B011', 'Diesel'),
('M010', 'Territory', '2022-06-01', 'Grey', 'B012', 'Hybrid'),
('M011', 'Edge', '2021-12-01', 'Brown', 'B001', 'Diesel' ),
('M012', 'Focus', '2023-03-01', 'Pink', 'B015', 'Petrol'),
('M013', 'Puma', '2022-10-01', 'Gold', 'B001', 'Hybrid'),
('M014', 'Mustang Mach-E', '2023-01-01', 'Cyan', 'B014', 'Electric' ),
('M015', 'Transit', '2021-11-01', 'Teal', 'B007', 'Diesel');
SELECT  * FROM Models


INSERT INTO Vehicles VALUES
('V001', '2022-05-01 08:00:00', 'Pickup Truck', 'C001', 'B001', 'Diesel' ),
('V002', '2021-03-01 09:00:00', 'SUV', 'C002', 'B001', 'Petrol' ),
('V003', '2020-07-01 10:00:00', 'Sedan', 'C003', 'B002', 'Petrol'),
('V004', '2019-11-01 11:00:00', 'Sedan', 'C004', 'B002', 'Diesel'),
('V005', '2022-08-01 12:00:00', 'Coupe', 'C005', 'B006', 'Petrol'),
('V006', '2021-09-01 13:00:00', 'Truck', 'C006', 'B013', 'Diesel'),
('V007', '2022-01-01 14:00:00', 'SUV', 'C007', 'B001', 'Hybrid'),
('V008', '2023-02-01 15:00:00', 'SUV', 'C008', 'B010', 'Petrol'),
('V009', '2023-04-01 16:00:00', 'Truck', 'C009', 'B011', 'Diesel'),
('V010', '2022-06-01 17:00:00', 'SUV', 'C010', 'B012', 'Hybrid' ),
('V011', '2021-12-01 18:00:00', 'SUV', 'C011', 'B001', 'Diesel'),
('V012', '2023-03-01 19:00:00', 'Compact', 'C012', 'B015', 'Petrol' ),
('V013', '2022-10-01 20:00:00', 'SUV', 'C013', 'B001', 'Hybrid'),
('V014', '2023-01-01 21:00:00', 'Electric SUV', 'C014', 'B014', 'Electric'),
('V015', '2021-11-01 22:00:00', 'Van', 'C015', 'B007', 'Diesel');
SELECT  * FROM Vehicles


INSERT INTO VIN VALUES
('Dearborn, MI', '2022-05-01', 'SEC001', 'SN001', 'Detroit Assembly', 'Ford', 12000, 'V001'),
('Chicago, IL', '2021-03-01', 'SEC002', 'SN002', 'Chicago Assembly', 'Ford', 9000, 'V002'),
('Flat Rock, MI', '2020-07-01', 'SEC003', 'SN003', 'Kansas City Assembly', 'Lincoln', 10000, 'V003'),
('Lima, OH', '2019-11-01', 'SEC004', 'SN004', 'Louisville Assembly', 'Lincoln', 8500, 'V004'),
('Romeo, MI', '2022-08-01', 'SEC005', 'SN005', 'Oakville Assembly', 'Shelby', 13000, 'V005'),
('Cleveland, OH', '2021-09-01', 'SEC006', 'SN006', 'Valencia Assembly', 'Ford', 14000, 'V006'),
('Buffalo, NY', '2022-01-01', 'SEC007', 'SN007', 'Wayne Assembly', 'Ford', 9500, 'V007'),
('Sterling Heights, MI', '2023-02-01', 'SEC008', 'SN008', 'Cologne Assembly', 'Ford', 9000, 'V008'),
('Chicago, IL', '2023-04-01', 'SEC009', 'SN009', 'Sanand Assembly', 'Ford', 15000, 'V009'),
('Dearborn, MI', '2022-06-01', 'SEC010', 'SN010', 'Chongqing Assembly', 'Ford', 16000, 'V010'),
('Kansas City, MO', '2021-12-01', 'SEC011', 'SN011', 'Chennai Assembly', 'Ford', 8500, 'V011'),
('Louisville, KY', '2023-03-01', 'SEC012', 'SN012', 'Pretoria Assembly', 'Ford', 10000, 'V012'),
('Oakville, ON', '2022-10-01', 'SEC013', 'SN013', 'Rayong Assembly', 'Ford', 9500, 'V013'),
('Valencia, CA', '2023-01-01', 'SEC014', 'SN014', 'Silverton Assembly', 'Ford', 14000, 'V014'),
('Wayne, MI', '2021-11-01', 'SEC015', 'SN015', 'Taipei Assembly', 'Ford', 12000, 'V015');
SELECT  * FROM VIN


INSERT INTO Body_Styles VALUES
('BS001', 'Pickup', 'M001', '4'),
('BS002', 'SUV', 'M002', '4'),
('BS003', 'Sedan', 'M003', '4'),
('BS004', 'Sedan', 'M004', '4'),
('BS005', 'Coupe', 'M005', '2'),
('BS006', 'Truck', 'M006', '2'),
('BS007', 'SUV', 'M007','4'),
('BS008', 'SUV', 'M008','4'),
('BS009', 'Truck', 'M009', '2'),
('BS010', 'SUV', 'M010', '4'),
('BS011', 'SUV', 'M011', '4'),
('BS012', 'Compact', 'M012', '4'),
('BS013', 'SUV', 'M013', '4'),
('BS014', 'Electric SUV', 'M014', '4'),
('BS015', 'Van', 'M015', '4');
SELECT  * FROM Body_Styles


INSERT INTO Model_Options VALUES
('O001', 'V6', '300hp', 'Leather Seats', 'Alloy Wheels', 'Touchscreen', 'M001'),
('O002', 'V6', '350hp', 'Heated Seats', 'Sunroof', 'Navigation System', 'M002'),
('O003', 'I4', '250hp', 'Cloth Seats', 'Steel Wheels', 'Bluetooth', 'M003'),
('O004', 'V6', '280hp', 'Leather Seats', 'Alloy Wheels', 'Touchscreen', 'M004'),
('O005', 'V8', '450hp', 'Sports Seats', 'Performance Tires', 'Premium Audio', 'M005'),
('O006', 'V6', '400hp', 'Leather Seats', 'Off-Road Tires', 'Navigation System', 'M006'),
('O007', 'I4', '200hp', 'Cloth Seats', 'Steel Wheels', 'Touchscreen', 'M007'),
('O008', 'V6', '320hp', 'Leather Seats', 'Alloy Wheels', 'Touchscreen', 'M008'),
('O009', 'V6', '350hp', 'Heated Seats', 'Sunroof', 'Navigation System', 'M009'),
('O010', 'I4', '250hp', 'Cloth Seats', 'Steel Wheels', 'Bluetooth', 'M010'),
('O011', 'V6', '300hp', 'Leather Seats', 'Alloy Wheels', 'Touchscreen', 'M011'),
('O012', 'I4', '200hp', 'Cloth Seats', 'Steel Wheels', 'Touchscreen', 'M012'),
('O013', 'V6', '320hp', 'Leather Seats', 'Alloy Wheels', 'Touchscreen', 'M013'),
('O014', 'Electric', '300hp', 'Leather Seats', 'Alloy Wheels', 'Premium Audio', 'M014'),
('O015', 'V6', '280hp', 'Leather Seats', 'Alloy Wheels', 'Touchscreen', 'M015');
 SELECT  * FROM Model_Options

INSERT INTO Suppliers VALUES
('S001', 'BorgWarner', 'Auburn Hills', '123 Main St', 'Michael Johnson', '2020-01-15', 'Turbochargers', 'M001', 'C001'),
('S002', 'Bosch', 'Stuttgart', '456 Elm St', 'Sophia Martinez', '2019-02-20', 'Braking Systems', 'M002', 'C002'),
('S003', 'Denso', 'Kariya', '789 Oak St', 'David Wilson', '2018-03-25', 'Fuel Systems', 'M003', 'C003'),
('S004', 'Continental', 'Hanover', '101 Pine St', 'Emma Brown', '2021-04-30', 'Tires', 'M004', 'C004'),
('S005', 'Delphi', 'Troy', '202 Maple St', 'James Taylor', '2022-05-10', 'Electronic Systems', 'M005', 'C005'),
('S006', 'ZF Friedrichshafen', 'Friedrichshafen', '303 Cedar St', 'Olivia Moore', '2020-06-15', 'Transmissions', 'M006', 'C006'),
('S007', 'Magna', 'Aurora', '404 Birch St', 'John Jackson', '2021-07-20', 'Mirrors', 'M007', 'C007'),
('S008', 'Valeo', 'Paris', '505 Willow St', 'Lucas Harris', '2019-08-25', 'Lighting Systems', 'M008', 'C008'),
('S009', 'Aisin Seiki', 'Kariya', '606 Spruce St', 'Amelia Clark', '2020-09-30', 'Navigation Systems', 'M009', 'C009'),
('S010', 'Lear', 'Southfield', '707 Fir St', 'Henry Lee', '2021-10-05', 'Seating', 'M010', 'C010'),
('S011', 'Faurecia', 'Nanterre', '808 Palm St', 'Aiden Walker', '2022-11-10', 'Interior Systems', 'M011', 'C011'),
('S012', 'Hitachi', 'Tokyo', '909 Chestnut St', 'Mia Hall', '2019-12-15', 'Powertrain Systems', 'M012', 'C012'),
('S013', 'Johnson Controls', 'Milwaukee', '1010 Cypress St', 'Liam Allen', '2020-01-20', 'Batteries', 'M013', 'C013'),
('S014', 'Panasonic', 'Osaka', '1111 Redwood St', 'Ella Young', '2021-02-25', 'Infotainment Systems', 'M014', 'C014'),
('S015', 'Sumitomo', 'Tokyo', '1212 Dogwood St', 'Ethan King', '2022-03-30', 'Wiring', 'M015', 'C015');
 SELECT  * FROM Suppliers

INSERT INTO Sales VALUES
('SA001', '2022-05-05', 'Red', 'M001', 'CU001', 'D001', ' 30000.00'),         
('SA002', '2021-03-10', 'Blue', 'M002', 'CU002', 'D002', '32000.00'),
('SA003', '2020-07-15', 'White', 'M003', 'CU003', 'D003', ' 28000.00' ),
('SA004', '2019-11-20', 'Black', 'M004', 'CU004', 'D004', '35000.00'),
('SA005', '2022-08-25', 'Yellow', 'M005', 'CU005', 'D005', ' 34000.00'),
('SA006', '2021-09-30', 'Silver', 'M006', 'CU006', 'D006', '33000.00'),
('SA007', '2022-01-05', 'Green', 'M007', 'CU007', 'D007','31000.00'),
('SA008', '2023-02-10', 'Orange', 'M008', 'CU008', 'D008', '29000.00'),
('SA009', '2023-04-15', 'Purple', 'M009', 'CU009', 'D009','36000.00'),
('SA010', '2022-06-20', 'Grey', 'M010', 'CU010', 'D010', '34000.00'),
('SA011', '2021-12-25', 'Brown', 'M011', 'CU011', 'D011','35000.00'),
('SA012', '2023-03-30', 'Pink', 'M012', 'CU012', 'D012','37000.00'),
('SA013', '2022-10-05', 'Gold', 'M013', 'CU013', 'D013', ' 31000.00'),
('SA014', '2023-01-10', 'Cyan', 'M014', 'CU014', 'D014','32000.00'),
('SA015', '2021-11-15', 'Teal', 'M015', 'CU015', 'D015', '30000.00');
 SELECT  * FROM Sales


INSERT INTO Dealers VALUES
('D001', 'AutoNation', '2015-01-01', 25000, 150, 145, 5, 'C001', 'V001', 'M001', 'B001', 'O001', 'BS001'),
('D002', 'CarMax', '2016-02-01', 23000, 140, 135, 5, 'C002', 'V002', 'M002', 'B001', 'O002', 'BS002'),
('D003', 'Penske', '2017-03-01', 22000, 130, 125, 5, 'C003', 'V003', 'M003', 'B002', 'O003', 'BS003'),
('D004', 'Lithia', '2018-04-01', 24000, 145, 140, 5, 'C004', 'V004', 'M004', 'B002', 'O004', 'BS004'),
('D005', 'Group 1', '2019-05-01', 26000, 155, 150, 5, 'C005', 'V005', 'M005', 'B006', 'O005', 'BS005'),
('D006', 'Sonic', '2020-06-01', 27000, 160, 155, 5, 'C006', 'V006', 'M006', 'B013', 'O006', 'BS006'),
('D007', 'Hendrick', '2021-07-01', 22500, 135, 130, 5, 'C007', 'V007', 'M007', 'B001', 'O007', 'BS007'),
('D008', 'Asbury', '2022-08-01', 23500, 140, 135, 5, 'C008', 'V008', 'M008', 'B010', 'O008', 'BS008'),
('D009', 'Staluppi', '2023-09-01', 24500, 145, 140, 5, 'C009', 'V009', 'M009', 'B011', 'O009', 'BS009'),
('D010', 'Larry H. Miller', '2015-10-01', 25500, 150, 145, 5, 'C010', 'V010', 'M010', 'B012', 'O010', 'BS010'),
('D011', 'Van Tuyl', '2016-11-01', 26500, 155, 150, 5, 'C011', 'V011', 'M011', 'B001', 'O011', 'BS011'),
('D012', 'Herb Chambers', '2017-12-01', 27500, 160, 155, 5, 'C012', 'V012', 'M012', 'B015', 'O012', 'BS012'),
('D013', 'Suburban', '2018-01-01', 28500, 165, 160, 5, 'C013', 'V013', 'M013', 'B001', 'O013', 'BS013'),
('D014', 'Ganley', '2019-02-01', 29500, 170, 165, 5, 'C014', 'V014', 'M014', 'B014', 'O014', 'BS014'),
('D015', 'Sewell', '2020-03-01', 30500, 175, 170, 5, 'C015', 'V015', 'M015', 'B007', 'O015', 'BS015');
 SELECT  * FROM Dealers

INSERT INTO Customer VALUES
('CU001', 'John Doe', 'Male', 'New York', '123 Park Ave', '10001' , '80000.00'),
('CU002', 'Jane Smith', 'Female', 'Los Angeles', '456 Main St', '90001', '75000.00'),
('CU003', 'Robert Brown', 'Male', 'Chicago', '789 Oak St', '60601', '60000.00'),
('CU004', 'Emily Davis', 'Female', 'Houston', '101 Pine St', '77001', '65000.00 '),
('CU005', 'Michael Wilson', 'Male', 'Phoenix', '202 Maple St', '85001', '55000.00'),
('CU006', 'Sarah Johnson', 'Female', 'Philadelphia', '303 Cedar St', '19101', '60000.00'),
('CU007', 'David Miller', 'Male', 'San Antonio', '404 Birch St', '78201', '55000.00'),
('CU008', 'Laura Moore', 'Female', 'San Diego', '505 Willow St', '92101', '70000.00'),
('CU009', 'James Taylor', 'Male', 'Dallas', '606 Spruce St', '75201', '60000.00'),
('CU010', 'Emma White', 'Female', 'San Jose', '707 Fir St', '95101', '70000.00'),
('CU011', 'Matthew Lee', 'Male', 'Austin', '808 Palm St', '73301', '60000.00'),
('CU012', 'Olivia Martin', 'Female', 'Jacksonville', '909 Chestnut St', '32099', '55000.00'),
('CU013', 'Joshua Anderson', 'Male', 'San Francisco', '1010 Cypress St', '94101', '90000.00'),
('CU014', 'Sophia Thomas', 'Female', 'Columbus', '1111 Redwood St', '43085', '60000.00'),
('CU015', 'Daniel Jackson', 'Male', 'Fort Worth', '1212 Dogwood St', '76101', '60000.00');
 SELECT  * FROM Customer
