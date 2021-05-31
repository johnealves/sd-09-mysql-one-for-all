CREATE VIEW top_3_artistas AS 
SELECT 
ARTIST_NAME AS artista,
COUNT(FOLLOW.USER_ID) AS seguidores
FROM SpotifyClone.ARTISTS
INNER JOIN SpotifyClone.FOLLOW ON FOLLOW.ARTIST_ID = ARTISTS.ARTIST_ID
GROUP BY ARTIST_NAME
ORDER BY seguidores DESC, artista LIMIT 3;
