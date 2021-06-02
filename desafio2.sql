CREATE VIEW estatisticas_musicais AS
SELECT 
    COUNT(*) AS 'cancoes',
    (SELECT COUNT(*) FROM SpotifyClone.singers) AS 'artistas',
    (SELECT COUNT(*) FROM SpotifyClone.albums) AS 'albuns'
FROM
    SpotifyClone.songs;
