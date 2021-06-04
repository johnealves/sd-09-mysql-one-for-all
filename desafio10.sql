USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_songs INT;
SELECT 
    COUNT(his.song_id)
FROM
    SpotifyClone.history_table AS his
        JOIN
    SpotifyClone.users_table AS usr ON his.user_id = usr.user_id
WHERE
    his.user_id = user_id INTO total_songs;
RETURN total_songs;
END $$

DELIMITER ;
