CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        usu.nome AS usuario, can.nome AS nome
    FROM
        SpotifyClone.user_reproducoes AS rep
            INNER JOIN
        SpotifyClone.usuario AS usu ON rep.id_usuario = usu.id_usuario
            INNER JOIN
        SpotifyClone.cancoes AS can ON rep.id_cancao = can.id_cancao
    ORDER BY usuario ASC, nome ASC;
