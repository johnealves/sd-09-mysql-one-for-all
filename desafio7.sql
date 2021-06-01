CREATE VIEW perfil_artistas AS
    SELECT art.artist_name AS 'artista',
    a.album_name AS 'album',
    COUNT(f.artist_id) AS 'seguidores'
    FROM SpotifyClone.album AS a
    INNER JOIN SpotifyClone.artist AS art ON art.artist_id = a.artist_id
    INNER JOIN SpotifyClone.followers AS f ON f.artist_id = a.artist_id
    GROUP BY f.artist_id, a.album_name, art.artist_name
    ORDER BY `seguidores` DESC, `artista`, `album`;
