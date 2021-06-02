CREATE VIEW SpotifyClone.top_3_artistas AS
SELECT 
    a.nome as artista, COUNT(f.artist_id) AS seguidores
FROM
    SpotifyClone.follows AS f
        INNER JOIN
    SpotifyClone.artists AS a ON a.artist_id = f.artist_id
GROUP BY f.artist_id
ORDER BY `seguidores` DESC, artista
LIMIT 3;
