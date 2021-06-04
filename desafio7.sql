CREATE VIEW perfil_artistas
AS SELECT ar.nome AS 'artista', al.nome AS 'album', COUNT(*) AS 'seguidores'
FROM albuns al
INNER JOIN artistas ar ON ar.artista_id = al.artista_id
INNER JOIN usuario_seguindo_artistas s ON s.artista_id = ar.artista_id
GROUP BY ar.nome, al.nome
ORDER BY COUNT(*) DESC, ar.nome, al.nome;
