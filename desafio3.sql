CREATE VIEW historico_reproducao_usuarios AS
	SELECT 
    users.name AS usuario, songs.title AS nome
FROM
    users_songs_history AS ush
        INNER JOIN
    users ON ush.user_id = users.user_id
        INNER JOIN
    songs ON ush.song_id = songs.song_id
ORDER BY usuario ASC , nome ASC;
