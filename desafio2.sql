CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(s.song_id) AS cancoes,
        COUNT(DISTINCT a.album_id) AS albuns,
        COUNT(DISTINCT ar.artist_id) AS artistas
    FROM
        songs s
            INNER JOIN
        albums AS a ON s.album_id = a.album_id
            INNER JOIN
        artists AS ar ON a.artist_id = ar.artist_id;
        