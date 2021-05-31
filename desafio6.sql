CREATE VIEW faturamento_atual AS
SELECT 
ROUND(MIN(PLAN_VALUE), 2) AS faturamento_minimo,
ROUND(MAX(PLAN_VALUE), 2) AS faturamento_maximo,
ROUND(AVG(PLAN_VALUE), 2) AS faturamento_medio,
ROUND(SUM(PLAN_VALUE), 2) AS faturamento_total
FROM SpotifyClone.USERS
INNER JOIN SpotifyClone.PLANS ON PLANS.PLAN_ID = USERS.PLAN_ID;
