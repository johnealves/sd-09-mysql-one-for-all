CREATE VIEW faturamento_atual AS
    SELECT 
        CONVERT( MIN(FORMAT(p.valor, 2)) , CHAR) AS faturamento_minimo,
        CONVERT( MAX(p.valor) , CHAR) AS faturamento_maximo,
        CONVERT( ROUND(AVG(ROUND(p.valor)), 2) , CHAR) AS faturamento_medio,
        CONVERT( SUM(p.valor) , CHAR) AS faturamento_total
    FROM
        SpotifyClone.planos AS p
            INNER JOIN
        SpotifyClone.usuarios AS u ON p.plano_id = u.plano_id;
