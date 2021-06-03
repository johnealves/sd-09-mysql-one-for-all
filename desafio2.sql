CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(m.musica) AS 'cancoes',
        (SELECT 
                COUNT(ar.artista)
            FROM
                SpotifyClone.artistas AS ar) AS 'artistas',
        (SELECT 
                COUNT(al.album)
            FROM
                SpotifyClone.albuns AS al) AS 'albuns'
    FROM
        SpotifyClone.musicas AS m;
