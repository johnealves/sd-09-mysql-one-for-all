DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(quantidade INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE music_total INT;
SELECT 
    COUNT(his.cancoes_id)
FROM
    SpotifyClone.historico AS his
GROUP BY usuario_id
HAVING usuario_id = quantidade INTO music_total;
    RETURN music_total;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
