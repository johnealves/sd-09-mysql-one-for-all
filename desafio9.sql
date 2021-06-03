DELIMITER $$

CREATE PROCEDURE SpotifyClone.albuns_do_artista(IN artist_name VARCHAR(200))
BEGIN
    SELECT ar.artist_name AS artista, al.album_name AS album
    FROM SpotifyClone.album AS al
    INNER JOIN SpotifyClone.artist AS ar ON ar.artist_id = al.artist_id
    WHERE ar.artist_name = artist_name
    ORDER BY al.album_name;
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
