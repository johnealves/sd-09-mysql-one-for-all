DELIMITER $$
CREATE FUNCTION SpotifyClone.quantidade_musicas_no_historico (idUser INT)
RETURNS DOUBLE READS SQL DATA
BEGIN
	DECLARE sumOfSongs INT;
    SELECT COUNT(h.usuario_id) AS quantidade_musicas_no_historico
	FROM SpotifyClone.Historicos AS h
	INNER JOIN SpotifyClone.Cancoes AS c
	ON h.cancao_id = c.cancao_id
	INNER JOIN SpotifyClone.Usuarios as u
	ON h.usuario_id = u.usuario_id
	WHERE u.usuario_id = idUser
	GROUP BY h.usuario_id
    INTO sumOfSongs;
RETURN sumOfSongs;
END $$
DELIMITER ;
