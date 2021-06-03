CREATE VIEW cancoes_premium AS
    SELECT 
        songs.title AS nome, COUNT(ush.song_id) AS reproducoes
    FROM
        users_songs_history AS ush
            INNER JOIN
        songs ON ush.song_id = songs.song_id
			INNER JOIN users ON ush.user_id = users.user_id
            WHERE users.plan_id IN ("2", "3")
    GROUP BY ush.song_id
    ORDER BY nome ASC;
    