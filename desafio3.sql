CREATE VIEW historico_reproducao_usuarios AS
SELECT  usuario.usuario AS `usuario`,
        musica.musica AS `nome`
FROM SpotifyClone.usuario
JOIN SpotifyClone.historico_de_reproducao ON usuario.usuario_id = historico_de_reproducao.usuario_id
JOIN SpotifyClone.musica ON musica.musica_id = historico_de_reproducao.musica_id
ORDER BY  `usuario`,
          `nome`;
