USE final_homework;
DROP FUNCTION IF EXISTS even_numbers;
DELIMITER $$
CREATE FUNCTION even_numbers (num INT)
RETURNS VARCHAR(50) READS SQL DATA
BEGIN
	DECLARE num_list VARCHAR(50) DEFAULT '2';
    DECLARE n INT DEFAULT 4;
    WHILE (n <= num) DO
		SET num_list = CONCAT(num_list, ',', n);
        SET n = n + 2;
	END WHILE;
RETURN num_list;
END$$
DELIMITER ;
SELECT even_numbers(10);
		