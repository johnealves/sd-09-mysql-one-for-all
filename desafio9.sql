DELIMITER !!
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(25))
  BEGIN
    SELECT ar.nome AS 'artista',
      al.album AS 'album'
    FROM SpotifyClone.artistas AS ar
      INNER JOIN SpotifyClone.albums AS al ON al.artista_id = ar.artista_id
    WHERE ar.nome = nome
    ORDER BY 2;
  END
!! DELIMITER ;
