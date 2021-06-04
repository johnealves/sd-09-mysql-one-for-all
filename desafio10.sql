USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE musicas_total INT;
SELECT 
    COUNT(ph.cancao_id)
FROM
    SpotifyClone.playlist_history AS ph
        JOIN
    SpotifyClone.users AS u ON ph.usuario_id = u.usuario_id
WHERE
    ph.usuario_id = id_usuario INTO musicas_total;
RETURN musicas_total;
END $$

DELIMITER ;
