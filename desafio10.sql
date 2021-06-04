USE SpotifyClone;
DELIMITER $

CREATE FUNCTION quantidade_musicas_no_historico(users_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE tot_musicas INT;
SELECT COUNT(songs_id)
FROM `history` AS h
INNER JOIN users AS u
ON r.users_id = u.users_id
WHERE users = u.users_id INTO tot_musicas;
RETURN tot_musicas;
END $$

DELIMITER ;