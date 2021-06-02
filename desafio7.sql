CREATE VIEW perfil_artistas AS
    SELECT 
        al.album AS album,
        ar.nome as artista,
        (SELECT 
                COUNT(*)
            FROM
                SpotifyClone.follows AS f
            WHERE
                f.artist_id = al.artist_id
            GROUP BY f.artist_id) AS seguidores
    FROM
        SpotifyClone.albuns al
            INNER JOIN
        SpotifyClone.artists AS ar ON al.artist_id = ar.artist_id
    ORDER BY seguidores DESC, artista ASC, album ASC;
