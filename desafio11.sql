CREATE VIEW cancoes_premium AS
SELECT 
    sng.song_name AS 'nome',
    COUNT(his.user_id) AS 'reproducoes'
FROM
    SpotifyClone.songs_table AS sng
        JOIN
    SpotifyClone.history_table AS his ON sng.song_id = his.song_id
          JOIN
    SpotifyClone.users_table AS usr ON usr.user_id = his.user_id WHERE usr.plan_id != 1
GROUP BY `nome`
ORDER BY `nome` ASC;
