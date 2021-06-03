CREATE VIEW estatisticas_musicais AS
    SELECT 
        (SELECT 
                COUNT(can.nome)
            FROM
                SpotifyClone.cancoes AS can) AS cancoes,
        (SELECT 
                COUNT(art.nome)
            FROM
                SpotifyClone.artista AS art) AS artistas,
        (SELECT 
                COUNT(alb.nome)
            FROM
                SpotifyClone.album AS alb) AS albuns;