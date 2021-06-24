CREATE VIEW estatisticas_musicais AS
    SELECT 
        (SELECT 
                COUNT(cancoes)
            FROM
                cancoes_por_album) AS 'cancoes',
        (SELECT 
                COUNT(artista)
            FROM
                artistas) AS 'artistas',
        (SELECT 
                COUNT(album)
            FROM
                albuns) AS 'albuns';
