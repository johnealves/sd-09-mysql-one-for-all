/* Crie uma procedure chamada albuns_do_artista que recebe como parâmetro o nome de uma pessoa artista e em retorno deve exibir as seguintes colunas:

O nome da pessoa artista, com o alias "artista".

O nome do álbum, com o alias "album".

Os resultados devem ser ordenados pelo nome do álbum em ordem alfabética. */

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(50))
BEGIN
  SELECT art.artist AS artista,
    alb.album AS album
  FROM album alb
    INNER JOIN artist art ON alb.artist_id = art.artist_id
  WHERE art.artist = nome
  ORDER BY album;
END $$

DELIMITER ;
