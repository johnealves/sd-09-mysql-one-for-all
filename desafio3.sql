CREATE VIEW historico_reproducao_usuarios AS 
	SELECT 
    us.usuario AS 'usuario', cancoes AS 'nome'
FROM
    SpotifyClone.usuario AS us
        INNER JOIN
    SpotifyClone.historico AS his ON us.usuario_id = his.usuario_id
        INNER JOIN
    SpotifyClone.cancoes_por_album AS can ON his.cancoes_id = can.cancoes_id
ORDER BY usuario , nome;
