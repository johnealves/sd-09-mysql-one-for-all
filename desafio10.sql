DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE musicas_totais INT;
    SELECT COUNT(*) FROM SpotifyClone.play_history AS ph
    WHERE user_id = ph.user_id INTO musicas_totais;
    RETURN musicas_totais;
END $$

DELIMITER ;
