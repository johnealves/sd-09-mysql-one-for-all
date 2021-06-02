USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50))
BEGIN
    SELECT 
    al.album,
    ar.nome as artista
FROM
    SpotifyClone.albuns AS al
        INNER JOIN
    SpotifyClone.artists AS ar ON al.artist_id = ar.artist_id
WHERE
    ar.nome LIKE CONCAT('%', artista, '%');
END $$

DELIMITER ;
