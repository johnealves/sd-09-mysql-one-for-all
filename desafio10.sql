USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (UserID INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT 
COUNT(*) AS quantidade_musicas_no_historico
FROM
historico
WHERE
usuario_id = UserID INTO quantidade;
RETURN quantidade;
END $$

DELIMITER ;
