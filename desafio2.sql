CREATE VIEW estatisticas_musicais AS 
SELECT COUNT(*) AS 'cancoes',
(SELECT COUNT(*) FROM spotifyclone.artista ) AS 'artistas',
(SELECT COUNT(*) FROM spotifyclone.album) AS 'albuns'
FROM spotifyclone.musicas;
