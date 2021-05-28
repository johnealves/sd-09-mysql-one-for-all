CREATE VIEW faturamento_atual AS
SELECT
MIN(p.price) AS faturamento_minimo,
MAX(p.price) AS faturamento_maximo,
(
SELECT
ROUND(AVG(p.price), 2)
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.plans AS p
ON u.plans_id = p.plans_id
) AS faturamento_medio,
(
SELECT
ROUND(SUM(p.price), 2)
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.plans AS p
ON u.plans_id = p.plans_id
) AS faturamento_total
FROM SpotifyClone.plans AS p;
