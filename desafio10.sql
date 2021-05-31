DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico (usuario_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_de_musicas INT;
SELECT COUNT(historico.usuario_id)
FROM SpotifyClone.historico_de_reproducoes AS historico
WHERE historico.usuario_id = usuario_id INTO total_de_musicas;
RETURN total_de_musicas;
END $$
DELIMITER ;
