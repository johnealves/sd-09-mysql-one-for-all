/* Crie uma procedure chamada albuns_do_artista que recebe como parâmetro o nome de uma pessoa artista
 e em retorno deve exibir as seguintes colunas: */
 
USE SpotifyClone;
 DELIMITER $$
 CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(40))
 BEGIN 
	SELECT ar.nome_artista AS artista, al.nome_album AS album
    FROM artistas AS ar
    INNER JOIN albuns AS al ON al.artista_id = ar.artista_id
    WHERE ar.nome_artista = artist
    ORDER BY album ASC;
 END $$
 DELIMITER ;
