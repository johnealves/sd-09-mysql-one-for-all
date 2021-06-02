CREATE VIEW historico_reproducao_usuarios AS
SELECT 
    U.`user` AS 'usuario', SO.song AS 'nome'
FROM
    SpotifyClone.users_songs AS US
        INNER JOIN
    users AS U ON U.id = US.user_id
        INNER JOIN
    songs AS SO ON SO.id = US.song_id
ORDER BY `usuario`, `nome`;
