CREATE VIEW historico_reproducao_usuarios AS
SELECT
  u.user_name AS usuario,
  s.song_name AS nome
FROM
  SpotifyClone.user AS u
  INNER JOIN SpotifyClone.history AS h ON u.user_id = h.user_id
  INNER JOIN SpotifyClone.song AS s ON s.song_id = h.song_id
ORDER BY
  usuario ASC,
  nome ASC;