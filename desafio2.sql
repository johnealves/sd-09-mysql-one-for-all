CREATE VIEW estatisticas_musicais AS 
SELECT COUNT(*) AS 'cancoes',
(SELECT COUNT(*) FROM spotifyclone.artist ) AS 'artistas',
(SELECT COUNT(*) FROM spotifyclone.album) AS 'albuns'
FROM spotifyclone.songs;
