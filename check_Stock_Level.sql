CREATE OR REPLACE PROCEDURE Check_Stock_Level(p_product_id IN NUMBER) AS
  v_stock NUMBER;
  v_name  VARCHAR2(100);
BEGIN
  SELECT Product_Name, Stock INTO v_name, v_stock
  FROM Product
  WHERE Product_ID = p_product_id;

  IF v_stock < 5 THEN
    DBMS_OUTPUT.PUT_LINE('Low stock for ' || v_name || ' (Stock: ' || v_stock || ')');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Stock sufficient for ' || v_name || ' (Stock: ' || v_stock || ')');
  END IF;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Product not found.');
END;
/
