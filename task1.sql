USE final_homework;
DROP FUNCTION IF EXISTS time_converter;
DELIMITER $$
CREATE FUNCTION time_converter (time_quantity INT)
RETURNS VARCHAR(100) READS SQL DATA
BEGIN
	DECLARE converted_time VARCHAR(100);
    SET converted_time = CONCAT(
		time_quantity DIV 86400, ' days ',
        (time_quantity % 86400) DIV 3600, ' hours ',
        ((time_quantity % 86400) % 3600) DIV 60, ' minutes ',
		((time_quantity % 86400) % 3600) % 60, ' seconds '
        );
RETURN converted_time;
END$$
DELIMITER ;
SELECT time_converter(2829044);