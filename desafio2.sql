CREATE VIEW estatisticas_musicais AS
SELECT 
    COUNT(s.cancao_titulo) AS 'cancoes',
    (SELECT 
            COUNT(a.artista_nome)
        FROM
            SpotifyClone.artists AS a) AS 'artistas',
    (SELECT 
            COUNT(al.album_nome)
        FROM
            SpotifyClone.albums AS al) AS 'albuns'
FROM
    SpotifyClone.songs AS s;
