CREATE VIEW historico_reproducao_usuarios AS
SELECT
  u.`user` AS 'usuario',
  s.songs AS 'nome'
FROM
  `SpotifyClone`.`Users_history_songs` h
  INNER JOIN `SpotifyClone`.`Songs` s ON c.songs_id = h.songs_id
  INNER JOIN `SpotifyClone`.`Users` u ON u.`user_id` = h.`user_id`
ORDER BY
  u.`user` ASC,
  s.songs ASC;
