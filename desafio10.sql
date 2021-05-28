USE SpotifyClone;

DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;

SELECT 
COUNT(*)
FROM
SpotifyClone.historico AS h
GROUP BY h.user_id
HAVING h.user_id = user_id INTO quantidade;

RETURN quantidade;

END
$$ DELIMITER ;