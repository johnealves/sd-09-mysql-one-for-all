USE SpotifyClone;
DELIMITER //

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE amount_in_history INT;
  SELECT
    COUNT(lt.song_id)
  FROM
    SpotifyClone.Listened_to lt
    INNER JOIN SpotifyClone.Users u ON lt.user_id = u.user_id
  GROUP BY u.user_id
  HAVING u.user_id = id
  INTO amount_in_history;
  RETURN amount_in_history;
END //

DELIMITER ;