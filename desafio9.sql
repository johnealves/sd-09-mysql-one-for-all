DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(100))
BEGIN
    SELECT art.artista AS 'artista', al.album AS 'album'
    FROM SpotifyClone.artista AS art
    INNER JOIN SpotifyClone.album AS al ON al.artista_id = art.artista_id
    WHERE art.artista LIKE CONCAT('%',artist,'%')
    ORDER BY `album`;
END $$
DELIMITER ;

