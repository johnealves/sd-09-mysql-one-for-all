DELIMITER //
CREATE FUNCTION quantidade_musicas_no_historico(pessoa_usuaria INT) RETURNS INT
READS SQL DATA
BEGIN
    RETURN (SELECT COUNT(*)
                    AS quantidade_musicas_no_historico
                FROM SpotifyClone.playing_history
                WHERE user_id = pessoa_usuaria);
END //
DELIMITER ;
