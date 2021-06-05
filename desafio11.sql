CREATE VIEW cancoes_premium AS
    SELECT 
        mus.musica AS nome,
        (SELECT COUNT(DISTINCT um.usuario_id)) AS reproducoes
    FROM
        SpotifyClone.musicas AS mus
            INNER JOIN
        SpotifyClone.usuarioMusicas AS um ON mus.musica_id = um.musica_id
            INNER JOIN
        SpotifyClone.usuarios AS u ON um.usuario_id = u.usuario_id
            INNER JOIN
        SpotifyClone.planos AS p ON u.plano_id = p.plano_id
    WHERE
        p.plano = 'familiar'
            OR p.plano = 'universitário'
    GROUP BY mus.musica
    ORDER BY mus.musica ASC;