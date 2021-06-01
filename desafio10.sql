DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (usuario_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT 
    COUNT(h.usuario_id)
FROM
    SpotifyClone.historico_reproducao AS h
WHERE
    h.usuario_id = usuario_id INTO total;
RETURN total;
END $$

DELIMITER ;
