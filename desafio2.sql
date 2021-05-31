CREATE VIEW estatisticas_musicais AS 
SELECT COUNT(*) AS cancoes,
(SELECT COUNT(*) FROM SpotifyClone.ARTISTS) AS artistas,
(SELECT COUNT(*) FROM SpotifyClone.ALBUMS) AS albuns
FROM SpotifyClone.SONGS;
