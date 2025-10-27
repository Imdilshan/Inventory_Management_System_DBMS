CREATE TABLE Inv_User (
  User_ID     VARCHAR2(50) PRIMARY KEY,
  Name        VARCHAR2(100),
  Password    VARCHAR2(50),
  User_Type   VARCHAR2(20)
);

CREATE TABLE Brands (
  Brand_ID    NUMBER PRIMARY KEY,
  Brand_Name  VARCHAR2(100)
);

CREATE TABLE Categories (
  Category_ID   NUMBER PRIMARY KEY,
  Category_Name VARCHAR2(100)
);

CREATE TABLE Stores (
  Store_ID   NUMBER PRIMARY KEY,
  Store_Name VARCHAR2(100),
  Address    VARCHAR2(200),
  Phone_No   VARCHAR2(15)
);

CREATE TABLE Product (
  Product_ID   NUMBER PRIMARY KEY,
  Product_Name VARCHAR2(100),
  Brand_ID     NUMBER,
  Category_ID  NUMBER,
  Store_ID     NUMBER,
  Price        NUMBER(10,2),
  Stock        NUMBER,
  Added_Date   DATE,
  FOREIGN KEY (Brand_ID) REFERENCES Brands(Brand_ID),
  FOREIGN KEY (Category_ID) REFERENCES Categories(Category_ID),
  FOREIGN KEY (Store_ID) REFERENCES Stores(Store_ID)
);

CREATE TABLE Customer_Cart (
  Cart_ID   NUMBER PRIMARY KEY,
  Cust_Name VARCHAR2(100),
  Mobile_No VARCHAR2(15)
);

CREATE TABLE Select_Product (
  Cart_ID     NUMBER,
  Product_ID  NUMBER,
  Quantity    NUMBER,
  PRIMARY KEY (Cart_ID, Product_ID),
  FOREIGN KEY (Cart_ID) REFERENCES Customer_Cart(Cart_ID),
  FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

CREATE TABLE Transaction_Details (
  Transaction_ID NUMBER PRIMARY KEY,
  Cart_ID        NUMBER,
  Total_Amount   NUMBER(10,2),
  Paid_Amount    NUMBER(10,2),
  Payment_Type   VARCHAR2(20),
  Transaction_Date DATE,
  FOREIGN KEY (Cart_ID) REFERENCES Customer_Cart(Cart_ID)
);

CREATE TABLE Invoice (
  Invoice_ID     NUMBER PRIMARY KEY,
  Transaction_ID NUMBER,
  Product_Name   VARCHAR2(100),
  Quantity       NUMBER,
  Net_Price      NUMBER(10,2),
  FOREIGN KEY (Transaction_ID) REFERENCES Transaction_Details(Transaction_ID)
);
