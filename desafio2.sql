CREATE VIEW estatisticas_musicais AS
SELECT COUNT(S.song_id) AS `cancoes`,
  (SELECT COUNT(A.artist_id) FROM SpotifyClone.Artists AS A) AS `artistas`,
  (SELECT COUNT(AL.album_id) FROM SpotifyClone.Albums AS AL) AS `albuns`
FROM SpotifyClone.Songs AS S;
