DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(100))
BEGIN
    SELECT art.artist_name AS 'artista', al.album_name AS 'album'
    FROM SpotifyClone.artist AS art
    INNER JOIN SpotifyClone.album AS al ON al.artist_id = art.artist_id
    WHERE art.artist_name LIKE CONCAT('%',artist,'%')
    ORDER BY `album`;
END $$
DELIMITER ;
