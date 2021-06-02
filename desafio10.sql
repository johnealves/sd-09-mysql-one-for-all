DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario_id 	INT)
RETURNS INT READS SQL DATA
	BEGIN
		DECLARE quantidade_musicas INT;
		SELECT count(hr.usuario_id) INTO quantidade_musicas
		FROM SpotifyClone.historico_reproducao AS hr
		INNER JOIN SpotifyClone.usuarios AS u
		ON hr.usuario_id = u.usuario_id
		WHERE u.usuario_id = usuario_id;
		RETURN quantidade_musicas;
	END $$

DELIMITER ;
