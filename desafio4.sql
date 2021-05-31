CREATE VIEW top_3_artistas AS
	SELECT a.artista AS `artista`, COUNT(s.artista_id) as `seguidores` FROM SpotifyClone.seguindo as s
    INNER JOIN SpotifyClone.artista as a ON a.artista_id = s.artista_id
    GROUP BY `artista`
    ORDER BY `seguidores` DESC, `artista`
    LIMIT 3;

Error Code: 1054. Unknown column 's.artista_id' in 'field list'
