DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE musicas_total INT;
	SELECT 
		COUNT(*) AS `quantidade_musicas_no_historico`
	FROM
		historico_reproducoes AS hr
	WHERE hr.usuario_id = 3 INTO musicas_total;
    RETURN musicas_total;
END $$

DELIMITER ;