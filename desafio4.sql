CREATE VIEW top_3_artistas AS
    SELECT 
        musician_name AS artista, COUNT(user_id) AS seguidores
    FROM
        SpotifyClone.musician
            JOIN
        SpotifyClone.`following` ON SpotifyClone.musician.musician_id = SpotifyClone.`following`.musician_id
    GROUP BY `artista`
    ORDER BY `seguidores` DESC, `artista` ASC
    LIMIT 3;
