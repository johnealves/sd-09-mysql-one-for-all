USE spotifyclone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INTEGER)
RETURNS INTEGER READS SQL DATA
BEGIN
	DECLARE total INTEGER;
	SELECT 
    COUNT(song_id)
FROM
    users_songs_history AS ush
WHERE
    ush.user_id = id INTO total;
    RETURN total;
END $$

DELIMITER ;
