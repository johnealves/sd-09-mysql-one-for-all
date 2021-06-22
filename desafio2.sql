-- USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(DISTINCT m.musica_id) AS 'cancoes',
        COUNT(DISTINCT a.artista_id) AS 'artistas',
        COUNT(DISTINCT a.album_id) AS 'albuns'
    FROM
        SpotifyClone.album AS a
            INNER JOIN
        SpotifyClone.musica AS m ON m.album_id = a.album_id;
