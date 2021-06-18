USE SpotifyClone;

CREATE VIEW estatisticas_musicais AS
    SELECT 
        (SELECT 
                COUNT(*)
            FROM
                SpotifyClone.song) AS `cancoes`,
        (SELECT 
                COUNT(*)
            FROM
                SpotifyClone.musician) AS `artistas`,
        (SELECT 
                COUNT(*)
            FROM
                SpotifyClone.album) AS `albuns`;
