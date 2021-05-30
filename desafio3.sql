CREATE VIEW historico_reproducao_usuarios AS
SELECT 
    S.song_name AS nome, U.user_name AS usuario
FROM SpotifyClone.users AS U
INNER JOIN SpotifyClone.songs_history AS SH ON U.user_id = SH.user_id
INNER JOIN SpotifyClone.songs AS S ON SH.song_id = S.song_id
ORDER BY usuario ASC , nome ASC;
