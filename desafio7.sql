CREATE VIEW perfil_artistas AS
SELECT
AR.artista artista,
AL.album album,
COUNT(US.usuario_id) seguidores
FROM
SpotifyClone.artistas AR
INNER JOIN
SpotifyClone.seguindo S ON S.artista_id = AR.artista_id
INNER JOIN
SpotifyClone.albuns AL ON AR.artista_id = AL.artista_id
GROUP BY 
AR.artista_nome, AL.album
ORDER BY 
seguidores DESC, artista, album;
