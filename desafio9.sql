DELIMITER $$
CREATE PROCEDURE SpotifyClone.albuns_do_artista(IN artistaNome VARCHAR(40))
BEGIN
    SELECT ar.artista_nome AS artista,
		al.album_nome AS album
	FROM SpotifyClone.Artistas AS ar
	INNER JOIN SpotifyClone.Albums AS al
	ON ar.artista_id = al.artista_id
	WHERE ar.artista_nome = artistaNome
	ORDER BY album;
END $$
DELIMITER ;