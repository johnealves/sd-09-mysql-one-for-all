CREATE VIEW top_3_artistas AS
SELECT 
    art.nome AS artista, COUNT(seg.id_usuario) AS seguidores
FROM
    SpotifyClone.user_seguindo AS seg
        INNER JOIN
    SpotifyClone.artista AS art ON seg.id_artista = art.id_artista
GROUP BY artista
ORDER BY seguidores DESC, artista ASC
LIMIT 3;