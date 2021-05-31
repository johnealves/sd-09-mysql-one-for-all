CREATE VIEW faturamento_atual AS
SELECT
    MIN(plano_valor) AS faturamento_minimo,
    MAX(plano_valor) AS faturamento_maximo,
    ROUND(AVG(plano_valor), 2) AS faturamento_medio,
    SUM(plano_valor) AS faturamento_total
FROM
	  usuario AS usu
INNER JOIN plano ON plano.plano_id = usu.plano_id;
