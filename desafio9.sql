DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN selected_name VARCHAR(50))
BEGIN
SELECT 
    ar.artist_name AS 'artista', al.album_title AS 'album'
FROM
    albuns AS al
        INNER JOIN
    artists AS ar ON al.artist_id = ar.artist_id
WHERE
    artist_name = selected_name;
END $$

DELIMITER ;
