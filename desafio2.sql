CREATE VIEW estatisticas_musicais AS
SELECT COUNT(*) AS 'cancoes',
(SELECT COUNT(*) FROM SpotifyClone.singer) AS 'artistas',
(SELECT COUNT(*) FROM SpotifyClone.album) AS 'albuns'
FROM SpotifyClone.song;
