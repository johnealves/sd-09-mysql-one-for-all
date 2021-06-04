DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(100))
BEGIN
    SELECT ar.artista AS artista, al.album AS album FROM SpotifyClone.artistas AS ar 
    INNER JOIN SpotifyClone.albuns AS al ON ar.artista_id = al.artista_id
    WHERE ar.artista = nome_artista
    ORDER BY album ASC;
    END $$

DELIMITER ;
