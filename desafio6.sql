CREATE VIEW faturamento_atual AS
    SELECT 
        MIN(valor) AS faturamento_minimo,
        MAX(valor) AS faturamento_maximo,
        ROUND((SUM(valor) / 4), 2) AS faturamento_medio,
        SUM(valor) AS faturamento_total
    FROM
        SpotifyClone.plano