CREATE VIEW 
SpotifyClone.historico_reproducao_usuarios AS
SELECT 
    s.song as nome, u.usuario
FROM
    SpotifyClone.history AS h
        INNER JOIN
    SpotifyClone.songs AS s ON s.song_id = h.song_id
        INNER JOIN
    SpotifyClone.users AS u ON u.usuario_id = h.usuario_id
ORDER BY u.usuario ASC, `nome` ASC;
