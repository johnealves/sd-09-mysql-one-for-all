USE spotifyclone;

CREATE VIEW perfil_artistas AS
    SELECT 
        a.name AS 'artista',
        al.name AS 'album',
        COUNT(ua.user_id) AS 'seguidores'
    FROM
        artist AS a
            JOIN
        album AS al ON al.artist_id = a.artist_id
            JOIN
        user_artist AS ua ON ua.artist_id = a.artist_id
    GROUP BY a.name , al.name
    ORDER BY COUNT(ua.user_id) DESC , a.name , al.name;
