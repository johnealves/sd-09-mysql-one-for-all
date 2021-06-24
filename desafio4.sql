CREATE VIEW top_3_artistas AS
    SELECT 
        art.artista AS 'artista',
        COUNT(seg.usuario_id) AS seguidores
    FROM
        SpotifyClone.artistas AS art
            INNER JOIN
        SpotifyClone.seguindo AS seg ON art.artista_id = seg.artista_id
    GROUP BY artista
    ORDER BY seguidores DESC , artista
    LIMIT 3;
