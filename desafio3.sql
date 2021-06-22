CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.usuario AS 'usuario', m.musica AS 'nome'
    FROM
        SpotifyClone.historico_de_reproducao AS hr
            INNER JOIN
        SpotifyClone.usuario AS u ON u.usuario_id = hr.usuario_id
            INNER JOIN
        SpotifyClone.musica AS m ON m.musica_id = hr.musica_id
    ORDER BY u.usuario , m.musica