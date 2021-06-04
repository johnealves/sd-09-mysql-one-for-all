DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id int)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total_reproducoes INT;
    SELECT 
    COUNT(*)
FROM
    SpotifyClone.historico AS h
    where (h.usuario_id = id) INTO total_reproducoes;
    RETURN total_reproducoes;
END $$

DELIMITER ;