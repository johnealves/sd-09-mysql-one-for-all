CREATE VIEW faturamento_atual AS
SELECT CONVERT(MIN(VALOR), DECIMAL(3,2))  AS 'faturamento_minimo',
MAX(VALOR) AS 'faturamento_maximo',
CONVERT(SUM(VALOR) / 4, DECIMAL(3,2)) AS 'faturamento_medio',
SUM(VALOR) AS 'faturamento_total' FROM SpotifyClone.PLANOS;
