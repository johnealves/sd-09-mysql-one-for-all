CREATE VIEW perfil_artistas
AS SELECT
T2.nome AS 'artista',
T3.album AS 'album',
COUNT(*) AS 'seguidores'
FROM SpotifyClone.Seguindo AS T1
INNER JOIN SpotifyClone.Artista AS T2
ON T1.artista_id = T2.artista_id
INNER JOIN SpotifyClone.Album AS T3
ON T1.artista_id = T3.artista_id
GROUP BY `album`, `artista`
ORDER BY `seguidores` DESC, `artista` ASC, `album`ASC;
