CREATE VIEW `faturamento_atual` AS
SELECT
  ROUND(MIN(VALOR), 2) AS `faturamento_minimo`,
  ROUND(MAX(VALOR), 2) AS `faturamento_maximo`,
  ROUND(AVG(VALOR), 2) AS `faturamento_medio`,
  ROUND(SUM(VALOR), 2) AS `faturamento_total`
FROM
  PLANOS
  JOIN USUARIOS ON USUARIOS.ID_PLANO = PLANOS.ID_PLANO;
