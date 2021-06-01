CREATE VIEW perfil_artistas AS
    SELECT 
        ARTISTA.artista_name AS 'artista',
        ALBUM.album_name AS 'album',
        (SELECT 
                COUNT(artista_id)
            FROM
                SpotifyClone.artistas_seguindo
            WHERE
                artista_id = ARTISTA.artista_id) AS 'seguidores'
    FROM
        SpotifyClone.album AS ALBUM
            INNER JOIN
        SpotifyClone.artista AS ARTISTA ON ALBUM.artista_id = ARTISTA.artista_id
    ORDER BY 3 DESC , 1 , 2;