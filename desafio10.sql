DELIMITER !!
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
  RETURNS INT READS SQL DATA
  BEGIN
    RETURN (SELECT COUNT(cancao_id)
      FROM SpotifyClone.historico_reproducoes
      WHERE usuario_id = id);
  END
!! DELIMITER ;
