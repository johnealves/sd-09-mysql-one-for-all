CREATE VIEW perfil_artistas AS SELECT ar.artista_name AS "artista", 
al.album_name AS "album",
COUNT(*) AS "seguidores"
FROM SpotifyClone.seguidores AS s
INNER JOIN SpotifyClone.album AS al ON al.artista_id = s.artista_id
INNER JOIN SpotifyClone.artistas AS ar ON ar.artista_id = s.artista_id
ORDER BY seguidores DESC, artista, album;