CREATE VIEW estatisticas_musicais AS
    SELECT 
        (SELECT 
                COUNT(cancao_id)
            FROM
                SpotifyClone.cancoes) AS cancoes,
        (SELECT 
                COUNT(*)
            FROM
                SpotifyClone.artistas) AS artistas,
        (SELECT 
                COUNT(*)
            FROM
                SpotifyClone.albuns) AS albuns;
