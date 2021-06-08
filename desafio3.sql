CREATE VIEW historico_reproducao_usuarios AS
SELECT
    u.user_name AS `usuario`,
    m.music_name AS `nome`
FROM users AS u
INNER JOIN histories AS h
  ON h.user_id = u.user_id
INNER JOIN musics AS m
  ON m.music_id = h.music_id
ORDER BY `usuario`, `nome`;
