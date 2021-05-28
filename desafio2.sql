CREATE VIEW SpotifyClone.estatisticas_musicais AS
    SELECT 
        COUNT(DISTINCT c.cancao_id) AS cancoes,
        COUNT(DISTINCT ar.artista_id) AS artistas,
        COUNT(DISTINCT al.album_id) AS albuns
    FROM
        SpotifyClone.Cancoes AS c
            INNER JOIN
        SpotifyClone.Albums AS al ON c.album_id = al.album_id
            INNER JOIN
        SpotifyClone.Artistas AS ar ON ar.artista_id = al.artista_id;
