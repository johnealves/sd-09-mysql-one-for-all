DELIMITER $$
CREATE FUCNTION quantidade_musicas_no_historico(id INT)
RETURN INT READS SQL DATA
BEGIN
DECLARE `numero`;
SELECT COUTN(*) FROM SpotifyClone.historico where user_id = id
INTO `numero`;
RETURN `numero`;
END $$
DELIMITER ;
