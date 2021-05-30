CREATE VIEW estatisticas_musicais AS
    SELECT 
        (SELECT 
                COUNT(cancao_id)
            FROM
                SpotifyClone.Cancoes) AS cancoes,
        (SELECT 
                COUNT(artista_id)
            FROM
                SpotifyClone.Artistas) AS Artistas,
        (SELECT 
                COUNT(album_id)
            FROM
                SpotifyClone.Albums) AS Albuns;
