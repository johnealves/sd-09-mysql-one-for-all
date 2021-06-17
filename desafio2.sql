CREATE VIEW estatisticas_musicais AS
    SELECT
        (SELECT COUNT(*) FROM spotifyclone.song) AS 'cancoes',
        (SELECT COUNT(*) FROM spotifyclone.musician) AS 'artistas',
        (SELECT COUNT(*) FROM spotifyclone.album) AS 'albuns';
