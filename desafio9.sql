DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(60))
	BEGIN
		SELECT A.nome AS 'artista', ALB.album AS 'album'
		FROM SpotifyClone.artistas AS A
		INNER JOIN SpotifyClone.albuns AS ALB
		ON A.artista_id = ALB.artista_id
		WHERE A.nome = nome_artista
		ORDER BY album ASC;
	END $$
DELIMITER ;