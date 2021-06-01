USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE musicas_historico INT;
	SELECT
    COUNT(*) AS quantidade_musicas_no_historico
	FROM
    SpotifyClone.historico_reproducoes AS historico
	WHERE
    id = historico.usuario_id INTO musicas_historico;
    RETURN musicas_historico ;
END $$

DELIMITER ;
