CREATE VIEW estatisticas_musicais AS
  SELECT
    COUNT(DISTINCT s.song_id) as 'cancoes',
    COUNT(DISTINCT art.artist_id) as 'artistas',
    COUNT(DISTINCT alb.album_id) as 'albuns'
  FROM
    SpotifyClone.Artists art
    INNER JOIN SpotifyClone.Albums alb ON alb.artist_id = art.artist_id
    INNER JOIN SpotifyClone.Songs s ON s.album_id = alb.album_id;