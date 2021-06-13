CREATE VIEW perfil_artistas AS
    SELECT 
        ar.artist_name AS 'artista',
        al.album_title AS 'album',
        (SELECT 
                COUNT(*)
            FROM
                following_artists AS fa
            WHERE
                fa.artist_id = ar.artist_id) AS 'seguidores'
    FROM
        artists AS ar
            INNER JOIN
        albums AS al ON ar.artist_id = al.artist_id
    ORDER BY 3 DESC , 1 ASC , 2 ASC;
