CREATE VIEW perfil_artistas AS
    SELECT 
        art.artist_name AS 'artista',
        al.album_name AS 'album',
        COUNT(fol.artist_id) AS 'seguidores'
    FROM
        SpotifyClone.artists_table AS art
            JOIN
        SpotifyClone.albums_table AS al ON art.artist_id = al.artist_id
            JOIN
        SpotifyClone.following_artists_table AS fol ON art.artist_id = fol.artist_id
    GROUP BY `artista` , `album`
    ORDER BY `seguidores` DESC , `artista` ASC , `album` ASC;
