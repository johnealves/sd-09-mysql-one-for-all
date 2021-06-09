DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(idUser INT)
RETURNS INT READS SQL DATA

BEGIN
DECLARE numReproducoes INT;
SELECT
COUNT(cancao_id)
INTO numReproducoes
FROM SpotifyClone.historico_de_reproducoes
WHERE usuario_id = idUser
LIMIT 1;

RETURN numReproducoes;
END $$

DELIMITER ;

--Honestidade Acadêmica; Repositório consultado: https://github.com/tryber/sd-05-mysql-one-for-all/pull/5 