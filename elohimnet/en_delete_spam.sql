DELIMITER //

CREATE PROCEDURE `SP_delete_spam` (
    IN pEmail VARCHAR(254)
)  
BEGIN
    DECLARE iCodeRaelian INT;

    SELECT coderaelian 
    INTO iCodeRaelian
    FROM e107_db_raelians
    WHERE email = pEmail;

    DELETE FROM e107_db_raelians_ipt WHERE ipt_coderaelian = iCodeRaelian;
    DELETE FROM e107_db_raelians WHERE email = pEmail;
END //

DELIMITER ;


-- CALL SP_delete_spam('');
