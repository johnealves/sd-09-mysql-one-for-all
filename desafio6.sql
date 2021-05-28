CREATE VIEW faturamento_atual AS
SELECT
ROUND(MIN(P.plan_price), 2) AS faturamento_minimo,
ROUND(MAX(P.plan_price), 2) AS faturamento_maximo,
ROUND(AVG(P.plan_price), 2) AS faturamento_medio,
ROUND(SUM(P.plan_price), 2) AS faturamento_total
FROM SpotifyClone.spotify_plans AS P
INNER JOIN SpotifyClone.spotify_users AS U ON P.plan_id = U.plan_id;