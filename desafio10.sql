DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(nome VARCHAR(45))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE quantidade INT;
	SELECT (SELECT COUNT(*) FROM SpotifyClone.historico_de_reproducoes AS hr GROUP BY hr.usuario_id HAVING hr.usuario_id = u.usuario_id) AS 'quantidade_musicas_no_historico' FROM SpotifyClone.usuarios AS u WHERE u.usuario = nome INTO quantidade;
    RETURN quantidade;
END $$

DELIMITER ;