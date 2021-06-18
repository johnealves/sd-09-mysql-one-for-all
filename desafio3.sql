CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        user_name AS `usuario`, song_name AS `nome`
    FROM
        SpotifyClone.playing_history
            JOIN
        SpotifyClone.song ON SpotifyClone.song.song_id = SpotifyClone.playing_history.song_id
            JOIN
        SpotifyClone.user ON SpotifyClone.user.user_id = SpotifyClone.playing_history.user_id
    ORDER BY `usuario` , `nome`;
