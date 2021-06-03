CREATE VIEW SpotifyClone.perfil_artistas AS
    SELECT 
        a.artista AS 'artista',
        al.album AS 'album',
        (SELECT 
                COUNT(*)
            FROM
                SpotifyClone.seguindo_artistas AS sa
            WHERE
                a.artista_id = sa.artista_id) AS 'seguidores'
    FROM
        SpotifyClone.artistas AS a
            INNER JOIN
        SpotifyClone.albuns AS al ON a.artista_id = al.artista_id
        ORDER BY 3 DESC, 1, 2;
