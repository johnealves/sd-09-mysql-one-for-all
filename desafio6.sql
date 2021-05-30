SELECT FORMAT(ROUND(MIN(account_price), 2), 2) AS faturamento_minimo,
FORMAT(ROUND(MAX(account_price), 2), 2) AS faturamento_maximo,
FORMAT(ROUND(AVG(account_price), 2), 2) AS faturamento_medio,
FORMAT(ROUND(SUM(account_price), 2), 2) AS faturamento_total
FROM SpotifyClone.`user` as u
INNER JOIN SpotifyClone.`account` AS a ON u.account_id = a.account_id;
