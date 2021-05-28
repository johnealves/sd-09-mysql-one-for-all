CREATE VIEW historico_reproducao_usuarios AS
  SELECT
    u.user as 'usuario',
    s.song as 'nome'
  FROM
    spotifyclone.listened_to lt
    INNER JOIN spotifyclone.users u ON u.user_id = lt.user_id
    INNER JOIN spotifyclone.songs s ON s.song_id = lt.song_id
  ORDER BY `usuario` ASC, `nome` ASC;