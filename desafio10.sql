USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id_to_search INT)
RETURNS INT READS SQL DATA
BEGIN 

DECLARE number_musics INT;
SELECT 
COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.playback_history AS playback_history
WHERE playback_history.user_id = user_id_to_search
GROUP BY playback_history.user_id
INTO number_musics
;

RETURN number_musics;
END $$

DELIMITER ;
