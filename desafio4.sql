CREATE VIEW top_3_artistas AS
    SELECT
        art.artista_nome AS artista,
        COUNT(segArt.artista_id) AS seguidores
    FROM artista AS art
        INNER JOIN seguindo_artistas AS segArt ON segArt.artista_id = art.artista_id
    GROUP BY artista
        ORDER BY seguidores DESC, artista
        LIMIT 3;
