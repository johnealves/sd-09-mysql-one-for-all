CREATE VIEW perfil_artistas AS
  SELECT
    art.artist as 'artista',
    alb.album as 'album',
    COUNT(fb.user_id) as 'seguidores'
  FROM
    SpotifyClone.Albums alb
    INNER JOIN SpotifyClone.Artists art ON alb.artist_id = art.artist_id
    INNER JOIN SpotifyClone.Followed_by fb ON alb.artist_id = fb.artist_id
    GROUP BY alb.album_id
    ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
