-- USERS
INSERT INTO Inv_User VALUES ('admin01', 'Rahul', '1234', 'Admin');
INSERT INTO Inv_User VALUES ('user01', 'Priya', 'abcd', 'Cashier');

-- BRANDS
INSERT INTO Brands VALUES (1, 'Apple');
INSERT INTO Brands VALUES (2, 'Samsung');

-- CATEGORIES
INSERT INTO Categories VALUES (1, 'Electronics');
INSERT INTO Categories VALUES (2, 'Accessories');

-- STORES
INSERT INTO Stores VALUES (1, 'Tech Store', 'Chennai', '9876543210');
INSERT INTO Stores VALUES (2, 'Mobile World', 'Vellore', '9998887770');

-- PRODUCTS
INSERT INTO Product VALUES (101, 'iPhone 15', 1, 1, 1, 75000, 10, SYSDATE);
INSERT INTO Product VALUES (102, 'Samsung Galaxy', 2, 1, 2, 65000, 8, SYSDATE);
INSERT INTO Product VALUES (103, 'Apple Airpods', 1, 2, 1, 15000, 5, SYSDATE);

-- CUSTOMER CART
INSERT INTO Customer_Cart VALUES (1, 'Ramesh', '9990001111');

-- SELECTED PRODUCTS
INSERT INTO Select_Product VALUES (1, 101, 1);
INSERT INTO Select_Product VALUES (1, 103, 2);

-- TRANSACTION DETAILS
INSERT INTO Transaction_Details VALUES (1001, 1, 105000, 105000, 'Cash', SYSDATE);

-- INVOICE
INSERT INTO Invoice VALUES (5001, 1001, 'iPhone 15', 1, 75000);
INSERT INTO Invoice VALUES (5002, 1001, 'Apple Airpods', 2, 30000);

COMMIT;
