-- 
-- Walid Harkous
--

CREATE TABLE Casablanca (
    StoreID     NUMBER(5,0)     NOT NULL,
    Ownder      VARCHAR2(20)    NOT NULL,
CONSTRAINT Casablanca_PK PRIMARY KEY (StoreID));

CREATE TABLE Couscous (
    FoodID      NUMBER(3,0)     DEFAULT 001     NOT NULL,
    Price       DECIMAL(4,2)    DEFAULT 19.99   NOT NULL,
    Calories    NUMBER(4,0)     DEFAULT 1500    NOT NULL,
    Region      VARCHAR2(20)    DEFAULT 'Morocco',
CONSTRAINT Couscous_PK PRIMARY KEY (FoodID));

CREATE TABLE Pastilla (
    FoodID      NUMBER(3,0)     DEFAULT 002     NOT NULL,
    Price       DECIMAL(4,2)    DEFAULT 2.99    NOT NULL,
    Calories    NUMBER(4,0)     DEFAULT 300     NOT NULL,
    Region      VARCHAR2(20)    DEFAULT 'North Africa',
CONSTRAINT Pastilla_PK PRIMARY KEY (FoodID));

CREATE TABLE Lamb_Tajine (
    FoodID      NUMBER(3,0)     DEFAULT 003     NOT NULL,
    Price       DECIMAL(4,2)    DEFAULT 12.99   NOT NULL,
    Calories    NUMBER(4,0)     DEFAULT 1000    NOT NULL,
    Region      VARCHAR2(20)    DEFAULT 'Morocco',
CONSTRAINT Lamb_Tajine_PK PRIMARY KEY (FoodID));

CREATE TABLE Kefta_Tajine (
    FoodID      NUMBER(3,0)     DEFAULT 004     NOT NULL,
    Price       DECIMAL(4,2)    DEFAULT 11.99   NOT NULL,
    Calories    NUMBER(4,0)     DEFAULT 1200    NOT NULL,
    Region      VARCHAR2(20)    DEFAULT 'Morocco',
CONSTRAINT Kefta_Tajine_PK PRIMARY KEY (FoodID));

CREATE TABLE Chicken_Tajine (
    FoodID      NUMBER(3,0)     DEFAULT 005     NOT NULL,
    Price       DECIMAL(4,2)    DEFAULT 12.99   NOT NULL,
    Calories    NUMBER(4,0)     DEFAULT 1200    NOT NULL,
    Region      VARCHAR2(20)    DEFAULT 'Morocco',
CONSTRAINT Chicken_Tajine_PK PRIMARY KEY (FoodID));

CREATE TABLE Salmon_Tajine (
    FoodID      NUMBER(3,0)     DEFAULT 006     NOT NULL,
    Price       DECIMAL(4,2)    DEFAULT 14.99   NOT NULL,
    Calories    NUMBER(4,0)     DEFAULT 1400    NOT NULL,
    Region      VARCHAR2(20)    DEFAULT 'Morocco',
CONSTRAINT Salmon_Tajine_PK PRIMARY KEY (FoodID));

CREATE TABLE Hot_Drink (
    FoodID     NUMBER(3,0)     DEFAULT 007     NOT NULL,
    Name        VARCHAR2(20)    DEFAULT 'Tea'   NOT NULL,
    Price       DECIMAL(4,2)    DEFAULT 1.99    NOT NULL,
    Calories    NUMBER(4,0)     DEFAULT 50,
    Region      VARCHAR2(20)    DEFAULT 'Morocco',
CONSTRAINT Hot_Drink_PK PRIMARY KEY (FoodID));

CREATE TABLE Cold_Drink (
    FoodID     NUMBER(3,0)     DEFAULT 008     NOT NULL,
    Name        VARCHAR2(20)    NOT NULL,
    Price       DECIMAL(4,2)    DEFAULT 2.99    NOT NULL,
    Calories    NUMBER(4,0),
    Region      VARCHAR2(20),
CONSTRAINT Cold_Drink_PK PRIMARY KEY (FoodID));

CREATE TABLE Ingredient (
    IngredientID    NUMBER(3,0)     NOT NULL,
    Name            VARCHAR2(50)    NOT NULL,
    Supplier        VARCHAR2(50)    NOT NULL,
    Price           DECIMAL(5,2)    NOT NULL,
CONSTRAINT Ingredient_PK PRIMARY KEY (IngredientID));

CREATE TABLE Ingredients_List (
    FoodID          NUMBER(3,0)     NOT NULL,
    IngredientID    NUMBER(3,0)     NOT NULL,
CONSTRAINT Ingredients_List_PK PRIMARY KEY (FoodID, IngredientID),
CONSTRAINT Ingredients_List_FK1 FOREIGN KEY (FoodID) REFERENCES Couscous(FoodID),
CONSTRAINT Ingredients_List_FK2 FOREIGN KEY (FoodID) REFERENCES Pastilla(FoodID),
CONSTRAINT Ingredients_List_FK3 FOREIGN KEY (FoodID) REFERENCES Lamb_Tajine(FoodID),
CONSTRAINT Ingredients_List_FK4 FOREIGN KEY (FoodID) REFERENCES Kefta_Tajine(FoodID),
CONSTRAINT Ingredients_List_FK5 FOREIGN KEY (FoodID) REFERENCES Chicken_Tajine(FoodID),
CONSTRAINT Ingredients_List_FK6 FOREIGN KEY (FoodID) REFERENCES Salmon_Tajine(FoodID),
CONSTRAINT Ingredients_List_FK7 FOREIGN KEY (IngredientID) REFERENCES Ingredient(IngredientID));

CREATE TABLE Manager (
    EmployeeID      NUMBER(5,0)     NOT NULL,
    Name            VARCHAR2(20)    NOT NULL,
    StartDate       DATE            NOT NULL,
    AnnualSalary    DECIMAL(7,2)    NOT NULL,
    StoreID         NUMBER(5,0)     NOT NULL,
CONSTRAINT Manager_PK PRIMARY KEY (EmployeeID),
CONSTRAINT Chef_FK FOREIGN KEY (StoreID) REFERENCES Casablanca(StoreID));

CREATE TABLE Waiter (
    EmployeeID      NUMBER(5,0)     NOT NULL,
    Name            VARCHAR2(20)    NOT NULL,
    StartDate       DATE            NOT NULL,
    HourlyRate      DECIMAL(4,2)    NOT NULL,
    AvgTips         DECIMAL(5,2),
    ManagerID       NUMBER(5,0)     NOT NULL,
    StoreID         NUMBER(5,0)     NOT NULL,
  CONSTRAINT Waiter_PK PRIMARY KEY (EmployeeID),
CONSTRAINT Waiter_FK1 FOREIGN KEY (ManagerID) REFERENCES Manager(EmployeeID),
CONSTRAINT Waiter_FK2 FOREIGN KEY (StoreID) REFERENCES Casablanca(StoreID));

CREATE TABLE Chef (
    EmployeeID      NUMBER(5,0)     NOT NULL,
    Name            VARCHAR2(20)    NOT NULL,
    StartDate       DATE            NOT NULL,
    AnnualSalary    DECIMAL(7,2)    NOT NULL,
    ManagerID       NUMBER(5,0)     NOT NULL,
    StoreID         NUMBER(5,0)     NOT NULL,
CONSTRAINT Chef_PK PRIMARY KEY (EmployeeID),
CONSTRAINT Chef_FK1 FOREIGN KEY (ManagerID) REFERENCES Manager(EmployeeID),
CONSTRAINT Chef_FK2 FOREIGN KEY (StoreID) REFERENCES Casablanca(StoreID));

CREATE TABLE Weekly_Order (
    OrderID         NUMBER(5,0)     NOT NULL,
    OrderDate       DATE            NOT NULL,
    OrderTotal      DECIMAL(6,2)    NOT NULL,
    ManagerID       NUMBER(5,0)     NOT NULL,
    StoreID         NUMBER(5,0)     NOT NULL,
CONSTRAINT Weekly_Order_PK PRIMARY KEY (OrderID),
CONSTRAINT Weekly_Order_FK1 FOREIGN KEY (ManagerID) REFERENCES Manager(EmployeeID),
CONSTRAINT Weekly_Order_FK2 FOREIGN KEY (StoreID) REFERENCES Casablanca(StoreID));

CREATE TABLE Weekly_Order_List (
    OrderID         NUMBER(5,0)     NOT NULL,
    IngredientID    NUMBER(3,0)     NOT NULL,
CONSTRAINT Weekly_Order_List_PK PRIMARY KEY (OrderID, IngredientID),
CONSTRAINT Weekly_Order_List_FK1 FOREIGN KEY (OrderID) REFERENCES Weekly_Order(OrderID),
CONSTRAINT Weekly_Order_List_FK2 FOREIGN KEY (IngredientID) REFERENCES Ingredient(IngredientID));

CREATE TABLE Facility (
    FacilityID      NUMBER(5,0)     NOT NULL,
    StoreID         NUMBER(5,0),
    BuildingType    VARCHAR2(15),
    Address         VARCHAR2(20)    NOT NULL,
    City            VARCHAR2(20)    NOT NULL,
    State           CHAR(2)         NOT NULL,
    Zip             NUMBER(5,0)     NOT NULL,
    DateOpened      DATE            NOT NULL,
    RenovationCost  DECIMAL(8,2),
    RenovationIncome DECIMAL(8,2),
   
CONSTRAINT Facility_PK PRIMARY KEY (FacilityID),
CONSTRAINT Facility_FK FOREIGN KEY (StoreID) REFERENCES Casablanca(StoreID));

CREATE TABLE Equipment (
    EquipmentID     NUMBER(5,0)     NOT NULL,
    DatePurchased   DATE            NOT NULL,
    FacilityID      NUMBER(5,0),
CONSTRAINT Equipment_PK PRIMARY KEY (EquipmentID),
CONSTRAINT Equipment_FK FOREIGN KEY (FacilityID) REFERENCES Facility(FacilityID));

CREATE TABLE Promo (
    PromoID         NUMBER(4,0)     NOT NULL,
    StartDate       DATE            NOT NULL,
    EndDate         DATE,
    PromoCosts      DECIMAL(8,2)    NOT NULL,
    PromoIncome     DECIMAL(8,2)    NOT NULL,
CONSTRAINT Promo_PK PRIMARY KEY (PromoID));

CREATE TABLE Advertisement (
    AdvertisementID     NUMBER(4,0)     NOT NULL,
    Location            VARCHAR2(15)    NOT NULL,
    PromoID             NUMBER(4,0)     NOT NULL,
CONSTRAINT Advertisement_PK PRIMARY KEY (AdvertisementID),
CONSTRAINT Advertisement_FK FOREIGN KEY (PromoID) REFERENCES Promo(PromoID));

CREATE TABLE Customer (
    CustomerID      INTEGER         NOT NULL,
    Name            VARCHAR2(20)    NOT NULL,
    PartySize       INTEGER         NOT NULL,
CONSTRAINT Customer_PK PRIMARY KEY (CustomerID));

CREATE TABLE Reciept (
    RecieptID       Number(5,0)     NOT NULL,
    CustomerID      INTEGER         NOT NULL,
    TotalPaid       DECIMAL(5,2)    NOT NULL,
CONSTRAINT Reciept_PK PRIMARY KEY (RecieptID),
CONSTRAINT Reciept_FK FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID));

CREATE TABLE Reciept_List (
    RecieptID       NUMBER(5,0)     NOT NULL,
    FoodID          NUMBER(3,0)     NOT NULL,
    Qty             INTEGER         NOT NULL,
CONSTRAINT Reciept_List_PK PRIMARY KEY (RecieptID, FoodID),
CONSTRAINT Reciept_List_FK FOREIGN KEY (RecieptID) REFERENCES Reciept(RecieptID)
);

