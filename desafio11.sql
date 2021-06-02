CREATE VIEW cancoes_premium AS
SELECT 
    S.song AS 'nome', COUNT(*) AS 'reproducoes'
FROM
    SpotifyClone.users_songs AS US
        INNER JOIN
    songs AS S ON S.id = US.song_id
		INNER JOIN
	users AS U ON U.id = US.user_id
WHERE U.plan_id <> 1
GROUP BY song
ORDER BY `nome`;
