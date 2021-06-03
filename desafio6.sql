CREATE VIEW faturamento_atual AS
SELECT 
    MIN(pla.valor_plano) AS faturamento_minimo,
    MAX(pla.valor_plano) AS faturamento_maximo,
    ROUND(AVG(pla.valor_plano),2) AS faturamento_medio,
    SUM(pla.valor_plano) AS faturamento_total
FROM
    SpotifyClone.usuario AS usu
        INNER JOIN
    SpotifyClone.plano AS pla ON usu.id_plano = pla.id_plano;