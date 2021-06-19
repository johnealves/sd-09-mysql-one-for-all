DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario varchar(50))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_musicas INT;
  SELECT COUNT(*)
	FROM Historico_Reproducoes as h
    INNER JOIN SpotifyClone.Usuarios u
    ON h.usuario_id = u.usuario_id
	WHERE u.usuario_id = usuario INTO total_musicas;
  RETURN total_musicas;
END $$
DELIMITER ;
