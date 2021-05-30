/* Crie uma VIEW chamada estatisticas_musicais que exiba três colunas: */

CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(DISTINCT c.cancao_id) AS `cancoes`,
        COUNT(DISTINCT ar.artista_id) `artistas`,
        COUNT(DISTINCT al.album_id) AS `albuns`
    FROM
        SpotifyClone.cancoes AS c
            INNER JOIN
        SpotifyClone.albuns AS al ON al.album_id = c.album_id
            INNER JOIN
        SpotifyClone.artistas AS ar ON ar.artista_id = al.artista_id;
