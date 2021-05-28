-- 9 - Crie uma procedure chamada albuns_do_artista que recebe como parâmetro o nome de uma pessoa artista e em retorno deve exibir as seguintes colunas:
-- O nome da pessoa artista, com o alias "artista".
-- O nome do álbum, com o alias "album".
USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN nomeArtista VARCHAR(50))
BEGIN
    SELECT a.artist_name AS artista, ab.album_name AS album FROM artists AS a
    INNER JOIN albums AS ab ON a.artist_id = ab.artist_id
    WHERE a.artist_name = nomeArtista;
END $$

DELIMITER ;
