CREATE VIEW faturamento_atual AS
    SELECT 
        MIN(plano_valor) AS faturamento_minimo,
        MAX(plano_valor) AS faturamento_maximo,
        (SELECT 
                ROUND(AVG(plano_valor), 2)
            FROM
                SpotifyClone.usuarios AS U
                    INNER JOIN
                SpotifyClone.planos AS P ON U.plano_id = P.plano_id) AS faturamento_medio,
        (SELECT 
                SUM(plano_valor)
            FROM
                SpotifyClone.usuarios AS U
                    INNER JOIN
                SpotifyClone.planos AS P ON U.plano_id = P.plano_id) AS faturamento_total
    FROM
        SpotifyClone.planos;
