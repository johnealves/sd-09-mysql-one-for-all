/* Tendo como base o valor dos planos e o plano que cada pessoa usuária cadastrada possui no banco,
 queremos algumas informações sobre o faturamento da empresa. 
 Crie uma VIEW chamada faturamento_atual que deve exibir quatro dados: */
 
 CREATE VIEW faturamento_atual AS
    SELECT 
    MIN(p.valor_plano) AS faturamento_minimo,
    MAX(p.valor_plano) AS faturamento_maximo,
    ROUND(AVG(p.valor_plano), 2) AS faturamento_medio,
    SUM(p.valor_plano) AS faturamento_total
FROM
    SpotifyClone.planos AS p
        INNER JOIN
    SpotifyClone.usuarios AS u ON u.plano_id = p.plano_id;
