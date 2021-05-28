CREATE VIEW top_3_artistas AS
SELECT
A.artist_name AS artista,
COUNT(FA.user_id) AS seguidores
FROM
SpotifyClone.spotify_artists AS A
INNER JOIN SpotifyClone.followed_artists AS FA ON FA.artist_id = A.artist_id
GROUP BY A.artist_id
ORDER BY seguidores DESC, artista ASC
LIMIT 3;