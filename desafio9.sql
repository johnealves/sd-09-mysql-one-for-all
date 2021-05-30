DELIMITER $$

CREATE PROCEDURE albuns_do_artista(nome VARCHAR(45))
BEGIN
SELECT
T2.nome AS 'artista',
T1.album AS 'album'
FROM SpotifyClone.Album AS T1
INNER JOIN SpotifyClone.Artista AS T2
ON T1.artista_id = T2.artista_id
WHERE T2.nome = nome;
END $$

DELIMITER ;
