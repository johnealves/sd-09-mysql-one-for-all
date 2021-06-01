CREATE VIEW faturamento_atual AS
    SELECT 
        MIN(PLANOS.valor) AS 'faturamento_minimo',
        MAX(PLANOS.valor) AS 'faturamento_maximo',
        ROUND(AVG(PLANOS.valor), 2) AS 'faturamento_medio',
        ROUND(SUM(PLANOS.valor), 2) AS 'faturamento_total'
    FROM
        SpotifyClone.usuario AS USUARIO
            INNER JOIN
        SpotifyClone.plano AS PLANOS ON USUARIO.plano_id = PLANOS.plano_id;