CREATE VIEW faturamento_atual AS
  SELECT
    FORMAT(MIN(p.price), 2) as 'faturamento_minimo',
    FORMAT(MAX(p.price), 2) as 'faturamento_maximo',
    FORMAT(AVG(p.price), 2) as 'faturamento_medio',
    FORMAT(SUM(p.price), 2) as 'faturamento_total'
  FROM
    SpotifyClone.Users u
    INNER JOIN SpotifyClone.Plans p ON u.plan_id = p.plan_id
