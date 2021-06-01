DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nomeDoArtista VARCHAR(45))
BEGIN
	SELECT artist_name AS artista, album_title AS album FROM SpotifyClone.artists a INNER JOIN SpotifyClone.albums al ON a.artist_id = al.artist_id WHERE artist_name = nomeDoArtista;
END $$
DELIMITER ;
