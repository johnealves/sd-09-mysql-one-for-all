CREATE VIEW estatisticas_musicais AS
SELECT COUNT(S.song_id) AS `cancoes`,
  (SELECT COUNT(A.artist_id) FROM SpotifyClone.artists AS A) AS `artistas`,
  (SELECT COUNT(AL.album_id) FROM SpotifyClone.albums AS AL) AS `albuns`
FROM SpotifyClone.songs AS S;
