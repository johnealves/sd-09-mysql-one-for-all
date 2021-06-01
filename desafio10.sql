DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico (usuario_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE tota INT;
SELECT 
    COUNT(histori.usuario_id)
FROM
    SpotifyClone.historico_reproducao AS histori
WHERE
    histori.usuario_id = usuario_id INTO total;
RETURN total;
END $$
DELIMITER ;