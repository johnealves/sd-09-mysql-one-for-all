CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(musica_id) AS cancoes, 
(SELECT COUNT(*) FROM SpotifyClone.Artistas) AS artistas,
(SELECT COUNT(*) FROM SpotifyClone.Albuns) AS albuns
FROM SpotifyClone.Musicas;
