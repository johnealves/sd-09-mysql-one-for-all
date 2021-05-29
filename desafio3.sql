CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.nome AS usuario, c.cancao AS nome
    FROM
        SpotifyClone.usuarios AS u
            INNER JOIN
        SpotifyClone.historico_reproducao AS hr ON hr.usuario_id = u.usuario_id
            INNER JOIN
        SpotifyClone.cancoes AS c ON hr.cancao_id = c.cancao_id
    ORDER BY usuario ASC , nome ASC;
