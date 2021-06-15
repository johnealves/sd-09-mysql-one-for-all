CREATE VIEW perfil_artistas AS
SELECT a.artista_nome AS 'artista',
b.album_nome AS 'album',
COUNT(s.usuario_id) AS 'seguidores'
FROM spotifyclone.album AS b
INNER JOIN
spotifyclone.artista AS a ON b.artista_id = a.artista_id
INNER JOIN
spotifyclone.seguindo AS s ON s.artista_id = b.artista_id
GROUP BY 2
ORDER BY 3 DESC, 1, 2;
