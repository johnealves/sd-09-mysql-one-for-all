USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nomeArtista VARCHAR(50))
BEGIN
	SELECT ar.artista AS artista, al.album AS album
    FROM SpotifyClone.artistas ar
    INNER JOIN SpotifyClone.albuns al ON ar.artista_id = al.artista_id
    WHERE ar.artista = nomeArtista;
END $$

DELIMITER ;
