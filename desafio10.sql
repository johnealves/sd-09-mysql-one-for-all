DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA 
BEGIN 
DECLARE count_music INT;
SELECT COUNT(*) 
FROM SpotifyClone.Historico AS h 
INNER JOIN SpotifyClone.Usuarios AS u ON h.usuario_id = u.usuario_id 
WHERE u.usuario_id = id 
INTO count_music;
RETURN count_music;
END $$ 
DELIMITER ;
