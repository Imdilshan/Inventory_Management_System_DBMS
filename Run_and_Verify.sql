-- Run the sale
BEGIN
  Update_Stock_After_Sale(101, 3);  -- Sell 3 iPhones
END;
/

-- Verify stock was reduced
SELECT Product_ID, Product_Name, Stock FROM Product WHERE Product_ID = 101;

-- Optionally check stock again
BEGIN
  Check_Stock_Level(101);
END;
/

-- Or simply query directly
SELECT Product_ID, Product_Name, Stock FROM Product;
