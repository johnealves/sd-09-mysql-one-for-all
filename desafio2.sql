CREATE VIEW estatisticas_musicais AS
SELECT COUNT(S.song_id) AS `cancoes`,
  (SELECT COUNT(A.artist_id) FROM spotifyclone.artists AS A) AS `artistas`,
  (SELECT COUNT(AL.album_id) FROM spotifyclone.albums AS AL) AS `albuns`
FROM spotifyclone.songs AS S;



