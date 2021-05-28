CREATE VIEW top_3_artistas AS
  SELECT
    art.artist as 'artista',
    COUNT(fb.user_id) as 'seguidores'
  FROM
    SpotifyClone.Followed_by fb
    INNER JOIN SpotifyClone.Artists art ON fb.artist_id = art.artist_id
  GROUP BY art.artist
  ORDER BY `seguidores` DESC, `artista` ASC
  LIMIT 3;
