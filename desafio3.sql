CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        usr.user_name AS 'usuario', sng.song_name AS 'nome'
    FROM
        SpotifyClone.history_table AS his
            JOIN
        SpotifyClone.users_table AS usr ON his.user_id = usr.user_id
            JOIN
        SpotifyClone.songs_table AS sng ON his.song_id = sng.song_id
    ORDER BY `usuario` ASC , `nome` ASC;
