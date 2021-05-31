-- INNER JOIN
-- CREATE VIEW faturamento_atual AS
-- SELECT
-- FORMAT(MIN(P.valor), 2) AS faturamento_minimo,
-- FORMAT(MAX(P.valor), 2) AS faturamento_maximo,
-- FORMAT(AVG(P.valor), 2) AS faturamento_medio,
-- FORMAT(SUM(P.valor), 2) AS faturamento_total
-- FROM SpotifyClone.usuario_plano AS UP
-- INNER JOIN SpotifyClone.planos AS P ON P.plano_id = UP.plano_id;

-- SUBQUERIES
CREATE VIEW faturamento_atual AS
SELECT
FORMAT(MIN(valor), 2) AS faturamento_minimo,
FORMAT(MAX(valor), 2) AS faturamento_maximo,
FORMAT(AVG(valor), 2) AS faturamento_medio,
FORMAT(SUM(valor), 2) AS faturamento_total
FROM
(SELECT
(SELECT valor FROM SpotifyClone.planos WHERE plano_id = UP.plano_id) AS valor
FROM SpotifyClone.usuario_plano AS UP) AS P;
