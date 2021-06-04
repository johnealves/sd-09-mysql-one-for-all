CREATE VIEW faturamento_atual AS
    SELECT 
        MIN(t.valor) AS 'faturamento_minimo',
        MAX(t.valor) AS 'faturamento_maximo',
        ROUND(AVG(t.valor), 2) AS 'faturamento medio',
        SUM(t.valor) AS 'faturamento total'
    FROM
        (SELECT 
            u.plan_id AS 'plano', p.plan_value AS 'valor'
        FROM
            SpotifyClone.users AS u
        INNER JOIN SpotifyClone.plans AS p ON u.plan_id = p.plan_id) AS t;
