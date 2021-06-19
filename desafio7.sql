CREATE VIEW perfil_artistas AS
SELECT ar.nome_artista AS 'artista', 
al.titulo_album AS 'album',
COUNT(al.artista_id) AS 'seguidores' FROM SpotifyClone.Seguidores_Artistas sa
INNER JOIN SpotifyClone.Albuns al ON sa.artista_id = al.artista_id
INNER JOIN SpotifyClone.Artistas ar ON sa.artista_id = ar.artista_id
GROUP BY ar.nome_artista, titulo_album
ORDER BY `seguidores` DESC, `artista`, `album` ASC;
