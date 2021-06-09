CREATE VIEW faturamento_atual AS
SELECT LTRIM(CONVERT(MIN(VALOR), DECIMAL(3,2))) AS 'faturamento_minimo',
LTRIM(MAX(VALOR)) AS 'faturamento_maximo',
LTRIM(CONVERT(SUM(VALOR) / (
SELECT count(*) FROM SpotifyClone.USUARIOS), DECIMAL(3,2))) AS 'faturamento_medio',
LTRIM(SUM(VALOR)) AS 'faturamento_total'
FROM SpotifyClone.PLANOS;
