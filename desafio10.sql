DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(selId INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE musica_historico INT;
SELECT COUNT(*) FROM SpotifyClone.usuario_historico
WHERE usuario_id = selId INTO musica_historico;
RETURN musica_historico;
END $$

DELIMITER ;
