CREATE VIEW cancoes_premium AS
    SELECT 
        C.cancao AS 'nome', COUNT(H.usuario_id) AS 'reproducoes'
    FROM
        SpotifyClone.cancoes AS C
            INNER JOIN
        SpotifyClone.historico AS H ON H.cancao_id = C.cancao_id
            INNER JOIN
        SpotifyClone.usuarios AS U ON U.usuario_id = H.usuario_id
    WHERE
        U.plano_id IN (2 , 3)
    GROUP BY H.cancao_id
    ORDER BY nome ASC;
