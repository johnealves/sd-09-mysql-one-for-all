CREATE VIEW perfil_artistas AS
SELECT ar.artista AS artista, al.album AS album, COUNT(sa.usuario_id) AS seguidores
FROM SpotifyClone.artistas ar
INNER JOIN SpotifyClone.albuns al ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindo_artistas sa ON ar.artista_id = sa.artista_id
GROUP BY ar.artista_id, al.album
ORDER BY COUNT(sa.usuario_id) DESC, ar.artista ASC, al.album ASC;
