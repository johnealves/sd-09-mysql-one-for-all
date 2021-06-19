DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(p_id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE tot_musicas INT;
  SELECT COUNT(cancao_id) INTO tot_musicas
  FROM SpotifyClone.Historico_Reproducoes
  WHERE usuario_id = p_id;
  RETURN tot_musicas;
END $$
DELIMITER ;
