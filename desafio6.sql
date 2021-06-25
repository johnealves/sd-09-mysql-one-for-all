CREATE VIEW faturamento_atual AS
SELECT  MIN(plano.valor) AS `faturamento_minimo`,
        MAX(plano.valor) AS `faturamento_maximo`,
        ROUND(AVG(plano.valor), 2) AS `faturamento_medio`,
        SUM(plano.valor) AS `faturamento_total`
FROM SpotifyClone.plano
JOIN SpotifyClone.usuario ON plano.plano_id = usuario.plano_id;
