CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        usuarios.usuario AS usuario, cancoes.cancao AS nome
    FROM
        SpotifyClone.historico_de_reproducoes AS historico_de_reproducoes
            INNER JOIN
        SpotifyClone.usuarios AS usuarios ON historico_de_reproducoes.usuario_id = usuarios.usuario_id
            INNER JOIN
        SpotifyClone.cancoes AS cancoes ON historico_de_reproducoes.cancao_id = cancoes.cancao_id
    ORDER BY usuario ASC , nome ASC;