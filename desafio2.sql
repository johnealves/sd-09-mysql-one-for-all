USE SpotifyClone;

CREATE VIEW estatisticas_musicais AS
SELECT 
    (SELECT 
            COUNT(musica)
        FROM
            musica) AS `cancoes`,
    (SELECT 
            COUNT(artista)
        FROM
            artista) AS `artistas`,
    (SELECT 
            COUNT(album)
        FROM
            album) AS `albuns`;
            