-- Create a trigger to decrease item quantity after adding a new order
DROP TRIGGER IF EXISTS decrease_quantity_after_order;
DELIMITER //
CREATE TRIGGER decrease_quantity_after_order
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
    SET quantity = quantity - NEW.number
    WHERE id = NEW.item_name;
END //
DELIMITER ;
