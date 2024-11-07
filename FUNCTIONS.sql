/*
drop function sumatoria;
DELIMITER //
CREATE FUNCTION sumatoria(n INT) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE suma INT DEFAULT 0; 
    DECLARE i INT DEFAULT 1;

    WHILE i <= n DO
        SET suma = suma + i;
        SET i = i + 1;
    END WHILE;

    RETURN suma;
END //*/

/*Select sumatoria(100);*/

/*drop function factorial;
DELIMITER //
CREATE FUNCTION factorial(n INT) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE fact INT DEFAULT 1; 
    DECLARE i INT DEFAULT 1;

    WHILE i <= n DO
        SET fact = fact * i;
        SET i = i + 1;
    END WHILE;

    RETURN fact;
END //*/

 /*Select factorial(5);*/

drop function perfecto;
DELIMITER //
CREATE FUNCTION perfecto(n BIGINT) 
RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    DECLARE suma INT DEFAULT 0;
    DECLARE i INT DEFAULT 1;

    IF n <= 1 THEN
        RETURN FALSE;  
    END IF;

    WHILE i < n DO
        IF n % i = 0 THEN
            SET suma = suma + i;
        END IF;
        SET i = i + 1;
    END WHILE;

    RETURN suma = n;
END //

select perfecto(2305843008139952);

