USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(idUsuario INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE musicas INT;
    SELECT COUNT(*) as quantidade_musicas_no_historico
    FROM historico_de_reproducoes
    WHERE usuario_id = idUsuario INTO musicas;
    RETURN musicas;
END $$

DELIMITER ;
