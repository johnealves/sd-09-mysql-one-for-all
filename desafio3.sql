/* Crie uma VIEW chamada historico_reproducao_usuarios. Essa VIEW deverá ter apenas duas colunas: */

CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.nome_usuario AS usuario, c.nome_cancao AS nome
    FROM
        SpotifyClone.historico_usuario AS hu
            INNER JOIN
        SpotifyClone.usuarios AS u ON u.usuario_id = hu.usuario_id
            INNER JOIN
        SpotifyClone.cancoes AS c ON c.cancao_id = hu.cancao_id
    ORDER BY usuario , nome;
