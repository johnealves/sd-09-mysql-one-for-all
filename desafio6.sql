CREATE VIEW SpotifyClone.faturamento_atual AS
    SELECT 
        CONVERT( MIN(p.valor_plano) , DECIMAL (11 , 2 )) AS faturamento_minimo,
        CONVERT( MAX(p.valor_plano) , DECIMAL (11 , 2 )) AS faturamento_maximo,
        CONVERT( ROUND(AVG(p.valor_plano), 2) , DECIMAL (11 , 2 )) AS faturamento_medio,
        CONVERT( SUM(p.valor_plano) , DECIMAL (11 , 2 )) AS faturamento_total
    FROM
        SpotifyClone.users AS u
            INNER JOIN
        SpotifyClone.plans AS p ON u.plan_id = p.plan_id;
