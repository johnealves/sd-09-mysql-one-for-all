DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(selected_id INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE amount_of_songs INT;
SELECT 
    COUNT(*)
FROM
    reproduction_history
WHERE
    eproduction_history.user_id = selected_id INTO amount_of_songs;
    RETURN songs_total;
END $$

DELIMITER ;
