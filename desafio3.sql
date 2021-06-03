USE SpotifyClone;

CREATE VIEW historico_reproducao_usuarios AS
SELECT 
    u.usuario,
    m.musica AS `nome`
FROM
    usuario AS u
INNER JOIN historico_reproducoes AS hr
ON hr.usuario_id = u.id
INNER JOIN musica AS m
ON m.id = hr.musica_id
ORDER BY u.usuario, `nome`;
            