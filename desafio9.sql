USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(100))
  BEGIN
    SELECT ar.nome AS 'artista', al.nome AS 'album'
    FROM albuns al
    INNER JOIN artistas ar ON ar.artista_id = al.artista_id
    WHERE ar.nome = artista
    ORDER BY al.nome;
  END $$

DELIMITER ;
