CREATE VIEW top_3_artistas AS
    SELECT 
        a.artista_nome AS 'artista',
        COUNT(uf.artista_id) AS 'seguidores'
    FROM
        SpotifyClone.user_follows AS uf
            JOIN
        SpotifyClone.artists AS a ON uf.artista_id = a.artista_id
    GROUP BY `artista`
    ORDER BY `seguidores` DESC , `artista` ASC
    LIMIT 3;
