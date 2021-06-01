SELECT 
    nome_artista AS artista,
    COUNT(id_usuario) AS seguidores
FROM
    SpotifyClone.seguindo AS s
    
INNER JOIN
SpotifyClone.artistas AS a ON s.id_artista = a.id_artista

GROUP BY nome_artista

ORDER BY COUNT(id_usuario) DESC, nome_artista

LIMIT 3;    
