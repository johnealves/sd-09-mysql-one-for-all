CREATE VIEW estatisticas_musicais AS
SELECT
    COUNT(m.music_id) AS 'cancoes',
    COUNT(DISTINCT ar.artist_id) AS 'artistas',
    COUNT(DISTINCT al.album_id) AS 'albuns'
    FROM SpotifyClone.music AS m
    INNER JOIN SpotifyClone.album AS al ON al.album_id = m.album_id
    INNER JOIN SpotifyClone.artist AS ar ON ar.artist_id = al.artist_id;
