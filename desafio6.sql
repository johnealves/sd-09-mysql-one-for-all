CREATE VIEW faturamento_atual AS
SELECT 
FORMAT(MIN(P.plano_valor), 2) AS faturamento_minimo, 
FORMAT(MAX(P.plano_valor), 2) AS faturamento_maximo, 
FORMAT(AVG(P.plano_valor), 2) AS faturamento_medio, 
FORMAT(SUM(P.plano_valor), 2) AS faturamento_total
FROM SpotifyClone.Usuarios AS U 
INNER JOIN SpotifyClone.Planos AS P ON U.plano_id = P.plano_id;
