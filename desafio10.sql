-- 10 - Crie uma function chamada de quantidade_musicas_no_historico que exibe a quantidade de músicas que estão presentes atualmente no histórico de reprodução de
-- uma pessoa usuária. Ao receber o código identificador da pessoa, exiba a quantidade de canções em seu histórico de reprodução.
USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (UserID INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT 
    COUNT(*) AS quantidade_musicas_no_historico
FROM
    user_history
WHERE
    user_id = UserID INTO quantidade;
RETURN quantidade;
END $$

DELIMITER ;
