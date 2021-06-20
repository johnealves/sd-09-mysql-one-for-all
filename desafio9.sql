USE SpotifyClone; -- obrigatório para criar a procedure no banco correto

DELIMITER $$ -- definindo delimitador

CREATE PROCEDURE albuns_do_artista (IN nomeArtista VARCHAR(50))
BEGIN
    SELECT a.artista_nome AS artista, b.album_nome AS album FROM artists AS a
    INNER JOIN albuns AS b ON a.artista_id = b.artista_id
    WHERE a.artista_nome = nomeArtista;

DELIMITER ;
