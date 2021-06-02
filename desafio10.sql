USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_musicas INT;
    SELECT 
    COUNT(*)
FROM
    SpotifyClone.history AS h
        INNER JOIN
    SpotifyClone.users AS u ON h.usuario_id = u.usuario_id
WHERE
    u.usuario_id = usuario
GROUP BY u.usuario_id INTO quantidade_musicas;
    RETURN quantidade_musicas;
END $$

DELIMITER ;
