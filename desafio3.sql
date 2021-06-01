CREATE VIEW historico_reproducao_usuarios AS
SELECT U.`name` AS `usuario`, S.`song_name` AS `nome`
FROM SpotifyClone.users AS U
INNER JOIN SpotifyClone.History AS H ON H.user_id = U.user_id
INNER JOIN SpotifyClone.Songs AS S ON S.song_id = H.song_id
ORDER BY `usuario` ASC, `nome` ASC;
