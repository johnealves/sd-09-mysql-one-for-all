DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome_do_artista VARCHAR(50))
BEGIN
SELECT ar.artista_nome AS artista,
a.album_nome AS album
FROM SpotifyClone.albuns AS a
INNER JOIN SpotifyClone.artistas AS ar ON a.artista_id = ar.artista_id
WHERE ar.artista_nome = nome_do_artista
ORDER BY a.album_nome;
END $$
DELIMITER ;
