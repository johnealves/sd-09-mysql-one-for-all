CREATE VIEW perfil_artistas AS
SELECT A.`artist_name` AS `artista`, AL.`album_name` AS `album`, COUNT(F.artist_id) AS `seguidores`
FROM SpotifyClone.Artists AS A
INNER JOIN SpotifyClone.Albums AS AL ON AL.artist_id = A.artist_id
INNER JOIN SpotifyClone.Following AS F ON F.artist_id = A.artist_id
GROUP BY AL.`album_name`, A.`artist_name`
ORDER BY `seguidores` DESC, `artist_name` ASC, `album` ASC;
