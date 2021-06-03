CREATE VIEW historico_reproducao_usuarios AS
SELECT 
    U.usuario_nome AS usuario, cancao_nome AS nome
FROM
    SpotifyClone.usuarios AS U
        INNER JOIN
    SpotifyClone.historico_reproducoes AS HR ON U.usuario_id = HR.usuario_id
        INNER JOIN
    SpotifyClone.cancoes AS C ON HR.cancao_id = C.cancao_id
ORDER BY usuario;
