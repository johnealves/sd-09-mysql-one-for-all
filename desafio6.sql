CREATE VIEW faturamento_atual AS
    SELECT 
        CONVERT( TRUNCATE(MIN(p.valor_plano), 2) , CHAR) AS faturamento_minimo,
        CONVERT( ROUND(MAX(p.valor_plano), 2) , CHAR) AS faturamento_maximo,
        CONVERT( ROUND(AVG(ROUND(p.valor_plano)), 2) , CHAR) AS faturamento_medio,
        CONVERT( ROUND(SUM(p.valor_plano), 2) , CHAR) AS faturamento_total
    FROM
        SpotifyClone.planos AS p
            INNER JOIN
        SpotifyClone.usuarios AS u ON u.plano_id = p.plano_id;
        