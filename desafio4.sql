CREATE VIEW top_3_artistas AS
SELECT 
    S.singer AS 'artista', COUNT(*) AS 'seguidores'
FROM
    SpotifyClone.users_singers AS US
        INNER JOIN
    singers AS S ON S.id = US.singer_id
GROUP BY S.singer
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
