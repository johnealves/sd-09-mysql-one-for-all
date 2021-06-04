DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista_nome VARCHAR(50))
BEGIN
    SELECT AR.artista_nome AS artista, AL.album_nome AS album
    FROM SpotifyClone.artistas AS AR
    INNER JOIN  SpotifyClone.albuns AS AL ON AL.artista_id = AR.artista_id
    WHERE AR.artista_nome = artista_nome;
END $$

DELIMITER ;
