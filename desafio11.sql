CREATE VIEW cancoes_premium AS
  SELECT
    s.song as 'nome',
    COUNT(lt.user_id) as 'reproducoes'
  FROM
    SpotifyClone.Listened_to lt
    INNER JOIN SpotifyClone.Songs s ON lt.song_id = s.song_id
    INNER JOIN SpotifyClone.Users u ON lt.user_id = u.user_id
    INNER JOIN SpotifyClone.Plans p ON u.plan_id = p.plan_id
  WHERE p.plan IN ('familiar', 'universitário')
  GROUP BY s.song_id
  ORDER BY s.song;