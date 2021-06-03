CREATE VIEW perfil_artistas AS
    SELECT 
        a.artista_nome AS 'artista',
        al.album_nome AS 'album',
        COUNT(uf.artista_id) AS 'seguidores'
    FROM
        SpotifyClone.artists AS a
            JOIN
        SpotifyClone.albums AS al ON a.artista_id = al.artista_id
            JOIN
        SpotifyClone.user_follows AS uf ON a.artista_id = uf.artista_id
    GROUP BY `artista` , `album`
    ORDER BY `seguidores` DESC , `artista` ASC , `album` ASC;
