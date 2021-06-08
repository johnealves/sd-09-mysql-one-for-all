DELIMITER $$
CREATE FUNCTION `quantidade_musicas_no_historico`(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE `numero` INT;
SELECT COUNT(*) FROM SpotifyClone.`historico` where user_id = id
INTO `numero`;
RETURN `numero`;
END $$
DELIMITER ;

