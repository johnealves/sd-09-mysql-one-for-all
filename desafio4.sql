CREATE VIEW top_3_artistas AS
    SELECT 
        art.artist_name AS 'artista',
        COUNT(fol.artist_id) AS 'seguidores'
    FROM
        SpotifyClone.following_artists_table AS fol
            JOIN
        SpotifyClone.artists_table AS art ON fol.artist_id = art.artist_id
    GROUP BY `artista`
    ORDER BY `seguidores` DESC , `artista` ASC
    LIMIT 3;
