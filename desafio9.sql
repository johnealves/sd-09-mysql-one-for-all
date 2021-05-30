USE SpotifyClone;
DELIMITER //

CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(255))
BEGIN

  SELECT
    art.artist as 'artista',
    alb.album as 'album'
  FROM
    SpotifyClone.Albums alb
    INNER JOIN SpotifyClone.Artists art ON alb.artist_id = art.artist_id
  WHERE art.artist = artist;

END //

DELIMITER ;