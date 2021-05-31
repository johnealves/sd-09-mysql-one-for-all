CREATE VIEW estatisticas_musicais AS
	SELECT COUNT(c.cancao) as `cancoes`, COUNT(a.artista) as `artistas`, COUNT(al.album) as `albuns` FROM SpotifyClone.cancao as c
    INNER JOIN SpotifyClone.album as al ON al.album_id = c.album_id
    INNER JOIN SpotifyClone.artista as a ON a.artista_id = al.artista_id;