CREATE VIEW faturamento_atual AS
SELECT ROUND(MIN(VALOR), 2)  AS 'faturamento_minimo',
MAX(VALOR) AS 'faturamento_maximo',
ROUND(SUM(VALOR) / 4, 2) AS 'faturamento_medio',
SUM(VALOR) AS 'faturamento_total' FROM SpotifyClone.PLANOS;
