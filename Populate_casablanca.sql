--
-- SCRIPT TO POPULATE A CASABLANCA RESTARAUNT 
--
insert into Casablanca (StoreID, OWNDER) VALUES (12345, 'Walid Harkous');
insert into Facility (FacilityID, StoreID, BuildingType, Address, City, State, Zip, DateOpened, RenovationCost, RenovationIncome) 
        values (00001, 12345, 'Restaraunt', '123 Huntington Ave.', 'Boston', 'MA', 02119,  TO_DATE('2010-01-01','yyyy/mm/dd'), 35000, 55000);
insert into Couscous (FoodID) VALUES(01);
insert into Pastilla (FoodID) VALUES(02);
insert into Lamb_Tajine (FoodID) VALUES(03);
insert into Kefta_Tajine (FoodID) VALUES(04);
insert into Chicken_Tajine (FoodID) VALUES(05);
insert into Salmon_Tajine (FoodID) VALUES(06);
insert into Hot_Drink (FoodID) VALUES(07);
insert into Cold_Drink (FOODID, Name) VALUES(08, 'Water');
insert into Cold_Drink (FoodID, Name) VALUES(09, 'Coke');
insert into Cold_Drink (FoodID, Name) VALUES(10, 'Sprite');
insert into Cold_Drink (FoodID, Name) VALUES(11, 'Fanta');
insert into Cold_Drink (FoodID, Name) VALUES(12, 'Juice');

-- Populating Walid's store with employees:
insert into Manager (EmployeeID, Name, StartDate, AnnualSalary, StoreID) values (19999, 'Bob Ross', TO_DATE('2010-01-01','yyyy/mm/dd'), 25000, 12345);
insert into Chef (EmployeeID, Name, StartDate, AnnualSalary, ManagerID, StoreID) values (18888, 'Remy', TO_DATE('2017-06-29','yyyy/mm/dd'), 13500, 19999, 12345);
insert into Chef (EmployeeID, Name, StartDate, AnnualSalary, ManagerID, StoreID) values (28888, 'John Stanar', TO_DATE('2017-05-15','yyyy/mm/dd'), 13500, 19999, 12345);
insert into Chef (EmployeeID, Name, StartDate, AnnualSalary, ManagerID, StoreID) values (38888, 'Mother''s Milk', TO_DATE('2017-06-06','yyyy/mm/dd'), 13500, 19999, 12345);
insert into Waiter (EmployeeID, Name, StartDate, HourlyRate, AvgTips, ManagerID, StoreID) values (1777, 'Andy Sun', TO_DATE('2018-04-11','yyyy/mm/dd'), 3.50, 20, 19999,12345);
insert into Waiter (EmployeeID, Name, StartDate, HourlyRate, AvgTips, ManagerID, StoreID) values (2777, 'Ava Tomek', TO_DATE('2020-02-10','yyyy/mm/dd'), 3.50, 18, 19999,12345);
insert into Waiter (EmployeeID, Name, StartDate, HourlyRate, AvgTips, ManagerID, StoreID) values (3777, 'Mohammed Abdul', TO_DATE('2017-05-05','yyyy/mm/dd'), 3.50, 24, 19999,12345);
insert into Waiter (EmployeeID, Name, StartDate, HourlyRate, AvgTips, ManagerID, StoreID) values (4777, 'Casey Nancy', TO_DATE('2019-09-28','yyyy/mm/dd'), 3.50, 22, 19999,12345);

-- Populating ingredients :
insert into Ingredient (IngredientID, Name, Supplier, Price) values (1, 'Lighter - Bbq', 'Bartoletti Group', '52.15');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (2, 'Plasticspoonblack', 'Conroy LLC', '476.26');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (3, 'Ice Cream Bar - Rolo Cone', 'Bogan-Langworth', '411.94');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (4, 'Flour - Semolina', 'Mante-Rowe', '461.52');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (5, 'Beef Tenderloin Aaa', 'Rau, Stamm and Stanton', '413.85');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (6, 'Chocolate Liqueur - Godet White', 'Huel Group', '149.05');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (7, 'Fondant - Icing', 'Crist, Senger and Wilderman', '469.87');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (8, 'Pie Pecan', 'Mayert Group', '11.33');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (9, 'Mix - Cocktail Ice Cream', 'Kunze-Cassin', '28.92');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (10, 'Bread - Bistro Sour', 'Konopelski Group', '126.55');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (11, 'Veal - Insides, Grains', 'Bogan-Howell', '731.76');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (12, 'Lid Coffeecup 12oz D9542b', 'Zboncak, Beier and Bergstrom', '104.04');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (13, 'Wine - Cousino Macul Antiguas', 'Abshire-Hills', '681.08');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (14, 'Sesame Seed', 'Shields LLC', '144.34');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (15, 'Salt - Seasoned', 'Tremblay and Sons', '507.16');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (16, 'Seaweed Green Sheets', 'Eichmann Group', '464.49');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (17, 'Cheese - Roquefort Pappillon', 'Kunze-Boehm', '317.99');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (18, 'Trout - Hot Smkd, Dbl Fillet', 'Reichert and Sons', '442.96');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (19, 'Turnip - Mini', 'Reichel-Stoltenberg', '499.60');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (20, 'Wine - German Riesling', 'Beatty Group', '577.99');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (21, 'Tea - Herbal I Love Lemon', 'Kreiger LLC', '643.94');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (22, 'Beer - Mill St Organic', 'Littel, Bechtelar and Lemke', '32.29');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (23, 'Vinegar - Red Wine', 'Simonis Inc', '327.45');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (24, 'Wine - Red Oakridge Merlot', 'Hilll, Pfeffer and Spencer', '173.74');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (25, 'Cheese - Sheep Milk', 'Huel, Stiedemann and Bailey', '99.99');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (26, 'Cherries - Maraschino,jar', 'Roob Group', '502.38');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (27, 'C - Plus, Orange', 'Harvey Group', '87.01');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (28, 'Pork - Suckling Pig', 'Bruen and Sons', '289.24');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (29, 'Blueberries - Frozen', 'Jaskolski-Rutherford', '258.85');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (30, 'Cookies - Englishbay Wht', 'Watsica-Luettgen', '327.09');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (31, 'Cake - Night And Day Choclate', 'Sauer, Emard and Becker', '752.89');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (32, 'Soup - Campbells - Tomato', 'Ebert and Sons', '292.89');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (33, 'Wine - Lamancha Do Crianza', 'Heaney Group', '385.45');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (34, 'Cake - Bande Of Fruit', 'Cummerata, Murazik and Haley', '260.12');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (35, 'Evaporated Milk - Skim', 'Klocko Inc', '795.49');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (36, 'Melon - Honey Dew', 'Lindgren-Muller', '220.86');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (37, 'Peas - Pigeon, Dry', 'Smitham-Hilll', '598.83');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (38, 'Lobster - Baby, Boiled', 'Runolfsdottir-Tromp', '165.48');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (39, 'Sauce - Ranch Dressing', 'Bogan Inc', '233.98');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (40, 'Sauce - Vodka Blush', 'Glover and Sons', '130.76');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (41, 'Bread Base - Italian', 'Littel and Sons', '475.30');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (42, 'Shrimp - Black Tiger 26/30', 'Kuvalis-Deckow', '748.82');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (43, 'Dried Figs', 'Jones, Klein and Jones', '164.93');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (44, 'Bread - Triangle White', 'Ferry-Sauer', '31.49');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (45, 'Stock - Veal, White', 'Wilderman-Kemmer', '558.30');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (46, 'Butter - Salted', 'Jacobs-Reynolds', '653.75');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (47, 'Cardamon Seed / Pod', 'Bailey-Muller', '343.01');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (48, 'Sole - Fillet', 'Considine Group', '411.64');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (49, 'Sweet Pea Sprouts', 'Ward, Kshlerin and Schaefer', '30.93');
insert into Ingredient (IngredientID, Name, Supplier, Price) values (50, 'Cake - Cheese Cake 9 Inch', 'Mertz-Bergnaum', '770.58');

-- populating customer table with hypothetical customers:
insert into Customer (CustomerID, Name, PartySize) values (1, 'Alain Mungin', 5);
insert into Customer (CustomerID, Name, PartySize) values (2, 'Gwyneth Blackly', 11);
insert into Customer (CustomerID, Name, PartySize) values (3, 'Dennison Beadon', 7);
insert into Customer (CustomerID, Name, PartySize) values (4, 'Giulio Camel', 7);
insert into Customer (CustomerID, Name, PartySize) values (5, 'Lauri Standrin', 2);
insert into Customer (CustomerID, Name, PartySize) values (6, 'Nessy Minghella', 4);
insert into Customer (CustomerID, Name, PartySize) values (7, 'Sidonia Rittmeyer', 6);
insert into Customer (CustomerID, Name, PartySize) values (8, 'Lane Cornell', 3);
insert into Customer (CustomerID, Name, PartySize) values (9, 'Judi Veracruysse', 1);
insert into Customer (CustomerID, Name, PartySize) values (10, 'Raven Briton', 8);
insert into Customer (CustomerID, Name, PartySize) values (11, 'Georges Stinchcombe', 6);
insert into Customer (CustomerID, Name, PartySize) values (12, 'Jeanna Radloff', 9);
insert into Customer (CustomerID, Name, PartySize) values (13, 'Yurik Gobbett', 8);
insert into Customer (CustomerID, Name, PartySize) values (14, 'Leslie Corbyn', 2);
insert into Customer (CustomerID, Name, PartySize) values (15, 'Hestia St. Hill', 8);
insert into Customer (CustomerID, Name, PartySize) values (16, 'Jilli Menci', 9);
insert into Customer (CustomerID, Name, PartySize) values (17, 'Kurtis Cubberley', 7);
insert into Customer (CustomerID, Name, PartySize) values (18, 'Phoebe Carrane', 5);
insert into Customer (CustomerID, Name, PartySize) values (19, 'Kalindi Marcq', 5);
insert into Customer (CustomerID, Name, PartySize) values (20, 'Tonye Fowles', 11);
insert into Customer (CustomerID, Name, PartySize) values (21, 'Ricky Duignan', 5);
insert into Customer (CustomerID, Name, PartySize) values (22, 'Scarlett Furtado', 11);
insert into Customer (CustomerID, Name, PartySize) values (23, 'Cosme Gemelli', 2);
insert into Customer (CustomerID, Name, PartySize) values (24, 'Guthrey Cannavan', 3);
insert into Customer (CustomerID, Name, PartySize) values (25, 'Trevar Wonfor', 8);
insert into Customer (CustomerID, Name, PartySize) values (26, 'Korrie Sopper', 12);
insert into Customer (CustomerID, Name, PartySize) values (27, 'Joanne Clee', 3);
insert into Customer (CustomerID, Name, PartySize) values (28, 'Sissy Tierny', 11);
insert into Customer (CustomerID, Name, PartySize) values (29, 'Olvan Perutto', 5);
insert into Customer (CustomerID, Name, PartySize) values (30, 'Patton Valentin', 6);
insert into Customer (CustomerID, Name, PartySize) values (31, 'Josie Enderle', 4);
insert into Customer (CustomerID, Name, PartySize) values (32, 'Derby Daily', 4);
insert into Customer (CustomerID, Name, PartySize) values (33, 'Candy Yuill', 5);
insert into Customer (CustomerID, Name, PartySize) values (34, 'Spenser Ledstone', 12);
insert into Customer (CustomerID, Name, PartySize) values (35, 'Radcliffe Klimas', 5);
insert into Customer (CustomerID, Name, PartySize) values (36, 'Shermie McIlenna', 12);
insert into Customer (CustomerID, Name, PartySize) values (37, 'Nanette Rentoul', 11);
insert into Customer (CustomerID, Name, PartySize) values (38, 'Terri Messiter', 6);
insert into Customer (CustomerID, Name, PartySize) values (39, 'Maddy Trudgian', 8);
insert into Customer (CustomerID, Name, PartySize) values (40, 'Arther Buckle', 6);
insert into Customer (CustomerID, Name, PartySize) values (41, 'Elvin Gerrelts', 3);
insert into Customer (CustomerID, Name, PartySize) values (42, 'Wanda Senyard', 10);
insert into Customer (CustomerID, Name, PartySize) values (43, 'Ardis Landells', 6);
insert into Customer (CustomerID, Name, PartySize) values (44, 'Dmitri MacCard', 9);
insert into Customer (CustomerID, Name, PartySize) values (45, 'Udell Pimley', 7);
insert into Customer (CustomerID, Name, PartySize) values (46, 'Rahal Ruske', 7);
insert into Customer (CustomerID, Name, PartySize) values (47, 'Paten Nichol', 4);
insert into Customer (CustomerID, Name, PartySize) values (48, 'Corby Brunner', 7);
insert into Customer (CustomerID, Name, PartySize) values (49, 'Wolfie Deetlefs', 5);
insert into Customer (CustomerID, Name, PartySize) values (50, 'Rudy Dominico', 3);

--populating reciept
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11100, 1, 194.07);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11101, 2, 109.06);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11102, 3, 192.25);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11103, 4, 62.0);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11104, 5, 175.06);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11105, 6, 65.41);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11106, 7, 131.49);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11107, 8, 189.78);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11108, 9, 80.89);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11109, 10, 57.06);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11110, 11, 164.25);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11111, 12, 174.19);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11112, 13, 157.75);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11113, 14, 56.74);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11114, 15, 22.51);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11115, 16, 187.49);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11116, 17, 9.68);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11117, 18, 177.12);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11118, 19, 19.96);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11119, 20, 94.38);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11120, 21, 44.77);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11121, 22, 160.77);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11122, 23, 7.51);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11123, 24, 104.03);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11124, 25, 5.47);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11125, 26, 26.41);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11126, 27, 130.97);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11127, 28, 158.26);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11128, 29, 112.35);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11129, 30, 7.06);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11130, 31, 84.06);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11131, 32, 59.49);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11132, 33, 125.92);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11133, 34, 141.41);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11134, 35, 134.67);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11135, 36, 148.6);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11136, 37, 70.17);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11137, 38, 188.71);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11138, 39, 130.54);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11139, 40, 60.01);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11140, 41, 53.61);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11141, 42, 14.37);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11142, 43, 158.19);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11143, 44, 138.42);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11144, 45, 189.26);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11145, 46, 144.89);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11146, 47, 153.55);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11147, 48, 133.31);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11148, 49, 63.05);
insert into Reciept (RecieptID, CustomerID, TotalPaid) values (11149, 50, 45.49);

--populating reciept_list with orders:
insert into Reciept_List (RecieptID, FoodID, Qty) values (11139, 6, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11138, 10, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11128, 11, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11105, 12, 2);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11103, 12, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11104, 10, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11135, 5, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11110, 2, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11119, 6, 2);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11135, 2, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11129, 10, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11130, 12, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11116, 2, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11115, 9, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11149, 6, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11108, 7, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11146, 2, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11112, 12, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11109, 3, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11108, 12, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11114, 7, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11107, 10, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11107, 9, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11142, 1, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11101, 3, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11106, 11, 2);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11129, 11, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11112, 11, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11103, 9, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11132, 2, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11100, 4, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11100, 12, 2);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11142, 12, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11107, 8, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11110, 9, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11125, 11, 2);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11121, 10, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11125, 12, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11146, 12, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11126, 7, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11131, 2, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11126, 12, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11130, 2, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11103, 6, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11136, 2, 2);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11102, 10, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11137, 8, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11112, 8, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11119, 9, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11124, 2, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11121, 7, 2);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11121, 2, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11139, 4, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11141, 5, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11110, 7, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11124, 7, 2);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11101, 12, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11101, 7, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11149, 9, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11111, 12, 2);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11104, 12, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11139, 12, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11108, 5, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11141, 6, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11132, 3, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11118, 3, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11100, 8, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11140, 8, 2);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11118, 10, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11122, 5, 2);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11133, 2, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11137, 12, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11120, 2, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11144, 2, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11111, 6, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11120, 8, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11135, 11, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11117, 1, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11135, 4, 2);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11116, 3, 2);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11110, 12, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11106, 2, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11113, 8, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11127, 7, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11121, 3, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11125, 10, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11130, 4, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11102, 3, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11105, 6, 2);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11108, 10, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11142, 10, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11124, 3, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11132, 12, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11124, 6, 2);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11108, 4, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11138, 7, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11146, 6, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11131, 6, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11138, 8, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11128, 8, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11111, 2, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11140, 3, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11141, 9, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11134, 7, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11138, 2, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11126, 9, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11114, 11, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11122, 12, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11113, 12, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11137, 4, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11132, 9, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11145, 10, 2);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11138, 3, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11143, 10, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11140, 6, 2);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11134, 1, 2);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11104, 4, 2);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11133, 5, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11120, 5, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11128, 3, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11132, 11, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11133, 11, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11119, 1, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11133, 10, 3);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11125, 8, 5);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11105, 11, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11117, 12, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11120, 9, 4);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11122, 11, 1);
insert into Reciept_List (RecieptID, FoodID, Qty) values (11113, 1, 2);

-- We need to add some weekly orders to display a typical month of ordering products from suppliers:
insert into Weekly_Order (OrderID, OrderDate, OrderTotal, ManagerID, StoreID) 
    values (00001,  TO_DATE('2020-01-07','yyyy/mm/dd'), 1202.56, 19999, 12345);   -- week 1
insert into Weekly_Order (OrderID, OrderDate, OrderTotal, ManagerID, StoreID) 
    values (00002,  TO_DATE('2020-01-14','yyyy/mm/dd'), 1115.23, 19999, 12345);   -- week 2
insert into Weekly_Order (OrderID, OrderDate, OrderTotal, ManagerID, StoreID)  
    values (00003,  TO_DATE('2020-01-21','yyyy/mm/dd'), 1223.34, 19999, 12345);   -- week 3
insert into Weekly_Order (OrderID, OrderDate, OrderTotal, ManagerID, StoreID) 
    values (00004,  TO_DATE('2020-01-28','yyyy/mm/dd'), 1159.22, 19999, 12345);   -- week 4

-- To increase business competition, we introduce promotions:
insert into Promo (PromoID, StartDate, EndDate, PromoCosts, PromoIncome)
    values (0001, TO_DATE('2019-12-25','yyyy/mm/dd'), TO_DATE('2020-01-08','yyyy/mm/dd'), 575.25, 1125.75);
insert into Promo (PromoID, StartDate, EndDate, PromoCosts, PromoIncome)
    values (0002, TO_DATE('2020-07-12','yyyy/mm/dd'), TO_DATE('2020-07-31','yyyy/mm/dd'), 2000.00, 5200.00);
insert into Promo (PromoID, StartDate, EndDate, PromoCosts, PromoIncome)
    values (0003, TO_DATE('2020-09-09','yyyy/mm/dd'), TO_DATE('2020-11-11','yyyy/mm/dd'), 1324.53, 5322.73);