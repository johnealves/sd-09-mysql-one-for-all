CREATE VIEW `estatisticas_musicais` AS
SELECT * FROM song;
SELECT 
    COUNT(*) AS `cancoes`,
    (SELECT 
            COUNT(*)
        FROM
            `artist`) AS `artistas`,
    (SELECT 
            COUNT(*)
        FROM
            `album`) AS `albuns`
FROM
    SpotifyClone.`song`;
