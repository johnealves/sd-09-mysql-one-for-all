CREATE VIEW perfil_artistas AS
    SELECT 
        a.name AS 'artista',
        al.name AS 'album',
        COUNT(ua.user_id) AS 'seguidores'
    FROM
        SpotifyClone.artist AS a
            JOIN
        SpotifyClone.album AS al ON al.artist_id = a.artist_id
            JOIN
        SpotifyClone.user_artist AS ua ON ua.artist_id = a.artist_id
    GROUP BY a.name , al.name
    ORDER BY COUNT(ua.user_id) DESC , a.name , al.name;
