CREATE VIEW historico_reproducao_usuarios AS
    SELECT
        usuarios.usuario AS usuario, musicas.musica AS nome
    FROM
        SpotifyClone.usuarios AS usuarios
            INNER JOIN
        SpotifyClone.historico_reproducoes AS historico ON historico.usuario_id = usuarios.usuario_id
            INNER JOIN
        SpotifyClone.musicas AS musicas ON historico.musica_id = musicas.musica_id
    ORDER BY usuario , nome;
