CREATE VIEW SpotifyClone.perfil_artistas AS
    SELECT 
        art.artist_name AS 'artista',
        alb.album_name AS 'album',
        (SELECT 
                COUNT(*)
            FROM
                SpotifyClone.UserFollowing AS f
            WHERE
                f.artist_id = art.artist_id) AS 'seguidores'
    FROM
        SpotifyClone.Artists AS art
            INNER JOIN
        SpotifyClone.Albuns AS alb ON art.artist_id = alb.artist_id
    ORDER BY 3 DESC , 1 ASC , 2 ASC;
        