CREATE VIEW top_2_hits_do_momento AS
  SELECT
    s.song as 'cancao',
    COUNT(lt.user_id) as 'reproducoes'
  FROM
    SpotifyClone.Listened_to lt
    INNER JOIN SpotifyClone.Songs s ON s.song_id = lt.song_id
  GROUP BY lt.song_id
  ORDER BY `reproducoes` DESC, `cancao` ASC
  LIMIT 2;
