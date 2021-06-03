SELECT 
    nome_artista AS artista,
    nome_album AS album,
    COUNT(*) AS seguidores
FROM
    SpotifyClone.albuns AS alb
    
INNER JOIN
SpotifyClone.artistas AS art ON alb.id_artista = art.id_artista

INNER JOIN
SpotifyClone.seguindo AS s ON s.id_artista = alb.id_artista

GROUP BY art.nome_artista, alb.nome_album

ORDER BY seguidores DESC, artista, album;
