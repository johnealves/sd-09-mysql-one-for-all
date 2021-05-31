DELIMITER $
CREATE TRIGGER trigger_usuario_delete BEFORE DELETE ON SpotifyClone.usuario FOR EACH ROW BEGIN
DELETE FROM
    SpotifyClone.historico_reproducao
WHERE
    SpotifyClone.usuario_id = OLD.SpotifyClone.usuario_id;

DELETE FROM
    SpotifyClone.usuario_artista
WHERE
    SpotifyClone.usuario_id = OLD.SpotifyClone.usuario_id;

END $
DELIMITER;
