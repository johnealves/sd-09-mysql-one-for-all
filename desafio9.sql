DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN name VARCHAR(100))
BEGIN
SELECT 
    a.artista, ab.album
FROM
    SpotifyClone.albuns AS ab
        INNER JOIN
    SpotifyClone.artistas AS a ON a.artista_id = ab.artista_id
    where(a.artista = name);
END $$

DELIMITER ;
