/* Crie uma VIEW chamada cancoes_premium que exiba o nome e a quantidade de vezes
 que cada canção foi tocada por pessoas usuárias do plano familiar ou universitário */
 
 CREATE VIEW cancoes_premium AS
    SELECT 
        c.nome_cancao AS nome, COUNT(hu.cancao_id) AS reproducoes
    FROM
        SpotifyClone.historico_usuario AS hu
            INNER JOIN
        SpotifyClone.cancoes AS c ON c.cancao_id = hu.cancao_id
            INNER JOIN
        SpotifyClone.usuarios AS u ON u.usuario_id = hu.usuario_id
            INNER JOIN
        SpotifyClone.planos AS p ON p.plano_id = u.plano_id
    WHERE
        p.plano_id IN (2 , 3)
    GROUP BY nome
    ORDER BY nome ASC;
