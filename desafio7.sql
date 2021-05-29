CREATE VIEW perfil_artistas AS
SELECT 
AR.artista AS artista, 
AL.album AS album, 
(SELECT COUNT(*) FROM SpotifyClone.Seguidores WHERE artista_id = AR.artista_id) AS seguidores 
FROM SpotifyClone.Albuns AS AL
INNER JOIN SpotifyClone.Artistas AS AR ON AL.artista_id = AR.artista_id 
ORDER BY seguidores DESC, artista ASC, album ASC;
