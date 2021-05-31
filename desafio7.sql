CREATE VIEW perfil_artistas AS
SELECT t1.artist AS artista, t2.album AS album, COUNT(t3.user_id) AS seguidores
FROM SpotifyClone.artists AS t1
INNER JOIN SpotifyClone.albums AS t2 ON t1.artist_id = t2.artist_id
INNER JOIN SpotifyClone.followers AS t3 ON t1.artist_id = t3.artist_id
GROUP BY t1.artist_id , t2.album_id ORDER BY 3 DESC , 1 ASC , 2 ASC;
