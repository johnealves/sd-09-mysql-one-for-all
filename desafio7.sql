CREATE VIEW perfil_artistas AS
SELECT
    a.artista,
    al.album AS `album`,
    (
		SELECT 
			COUNT(sa.artista_id)
		FROM 
			seguindo_artistas AS sa
		WHERE sa.artista_id = a.id
    ) AS `seguidores`
FROM
    artista AS a
INNER JOIN 
	album as al
ON al.artista_id = a.id
ORDER BY `seguidores` DESC, a.artista, al.album;
