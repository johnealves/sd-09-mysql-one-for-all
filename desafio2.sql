CREATE VIEW estatisticas_musicais AS
SELECT 
    COUNT(s.cancao_titulo) AS 'cancoes',
    (SELECT 
            COUNT(a.artista_nome)
        FROM
            spotifyclone.artists AS a) AS 'artistas',
    (SELECT 
            COUNT(al.album_nome)
        FROM
            spotifyclone.albums AS al) AS 'albuns'
FROM
    spotifyclone.songs AS s;
