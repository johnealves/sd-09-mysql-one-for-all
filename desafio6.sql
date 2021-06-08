CREATE VIEW faturamento_atual AS 
SELECT 
MIN(subscriptions.price) AS faturamento_minimo,
MAX(subscriptions.price) AS faturamento_maximo,
ROUND(AVG(subscriptions.price), 2) AS faturamento_medio,
SUM(subscriptions.price) AS faturamento_total
FROM
SpotifyClone.subscriptions AS subscriptions
INNER JOIN SpotifyClone.users AS users
ON subscriptions.subscription_id = users.subscription_id
;
