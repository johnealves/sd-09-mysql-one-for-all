CREATE VIEW cancoes_premium AS
    SELECT m.musica AS 'nome', COUNT(*) AS 'reproducoes'
    FROM SpotifyClone.historico_de_reproducao AS h
    INNER JOIN SpotifyClone.musica AS m ON m.musica_id = h.musica_id
    INNER JOIN SpotifyClone.`usuario` AS u ON u.usuario_id = h.usuario_id
    WHERE u.plano_id IN (2,3)
    GROUP BY m.musica	
    ORDER BY `nome`;