CREATE VIEW historico_reproducao_usuarios AS
  SELECT
    u.user as 'usuario',
    s.song as 'nome'
  FROM
    SpotifyClone.Listened_to lt
    INNER JOIN SpotifyClone.Users u ON u.user_id = lt.user_id
    INNER JOIN SpotifyClone.Songs s ON s.song_id = lt.song_id
  ORDER BY `usuario` ASC, `nome` ASC;