CREATE OR REPLACE PROCEDURE Update_Stock_After_Sale(
  p_product_id IN NUMBER,
  p_quantity   IN NUMBER
) AS
  v_current_stock NUMBER;
BEGIN
  SELECT Stock INTO v_current_stock
  FROM Product
  WHERE Product_ID = p_product_id;

  IF v_current_stock >= p_quantity THEN
    UPDATE Product
    SET Stock = Stock - p_quantity
    WHERE Product_ID = p_product_id;

    DBMS_OUTPUT.PUT_LINE('Stock updated successfully!');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Not enough stock! Only ' || v_current_stock || ' left.');
  END IF;

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Product not found.');
END;
/
