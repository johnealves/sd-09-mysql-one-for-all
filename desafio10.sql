DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd_musicas INT;
SELECT COUNT(*) FROM SpotifyClone.historico_reproducoes
WHERE usuario_id = id_usuario INTO qtd_musicas;
RETURN qtd_musicas;
END $$
DELIMITER ;
