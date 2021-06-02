CREATE VIEW perfil_artistas AS
SELECT 
    S.singer AS 'artista',
    A.album AS 'album',
    COUNT(*) AS 'seguidores'
FROM
    SpotifyClone.singers AS S
        INNER JOIN
    albums AS A ON A.singer_id = S.id
        INNER JOIN
    users_singers AS US ON US.singer_id = S.id
GROUP BY S.singer , A.album
ORDER BY `seguidores` DESC , `artista` , `album`;
