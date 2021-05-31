CREATE VIEW perfil_artistas AS
SELECT
	  sArt.artista_nome AS artista,
    sAlb.album_nome AS album,
    COUNT(sSArt.artista_id) AS seguidores
FROM
	  SpotifyClone.artista AS sArt,
    SpotifyClone.album AS sAlb,
    SpotifyClone.seguindo_artistas AS sSArt
WHERE
	  sArt.artista_id = sSArt.artista_id
    AND sAlb.artista_id = sArt.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
