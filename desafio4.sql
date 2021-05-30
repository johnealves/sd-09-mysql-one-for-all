/* Crie uma VIEW com o nome top_3_artistas que deve mostrar somente as três pessoas artistas
 mais populares no banco SpotifyClone */
 
 CREATE VIEW top_3_artistas AS
    SELECT 
        a.nome_artista AS artista,
        COUNT(sa.usuario_id) AS seguidores
    FROM
        SpotifyClone.seguidores_artista AS sa
            INNER JOIN
        SpotifyClone.artistas AS a ON a.artista_id = sa.artista_id
    GROUP BY artista
    ORDER BY seguidores DESC , artista ASC
    LIMIT 3;
