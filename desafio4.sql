CREATE VIEW top_3_artistas AS
SELECT A.artist_name AS "artista", COUNT(FA.artist_id) AS "seguidores"
FROM SpotifyClone.artists AS A
INNER JOIN SpotifyClone.following_artist AS FA ON FA.artist_id = A.artist_id
GROUP BY FA.artist_id
ORDER BY `seguidores` DESC, A.artist_name ASC
LIMIT 3;
    