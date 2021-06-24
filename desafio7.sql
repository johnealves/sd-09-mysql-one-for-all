CREATE VIEW perfil_artistas AS
    SELECT 
        art.artista AS 'artista',
        alb.album AS 'album',
        COUNT(seg.usuario_id) AS 'seguidores'
    FROM
        SpotifyClone.artistas AS art
            RIGHT JOIN
        SpotifyClone.albuns AS alb ON art.artista_id = alb.artista_id
            INNER JOIN
        SpotifyClone.seguindo AS seg ON art.artista_id = seg.artista_id
    GROUP BY album , artista
    ORDER BY seguidores DESC , artista , album;
