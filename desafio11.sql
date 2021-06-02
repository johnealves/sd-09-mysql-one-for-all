CREATE VIEW cancoes_premium AS
SELECT  musica.musica AS `nome`,
        COUNT(musica.musica) AS `reproducoes`
FROM SpotifyClone.musica
JOIN SpotifyClone.historico_de_reproducao ON musica.musica_id = historico_de_reproducao.musica_id
JOIN SpotifyClone.usuario ON historico_de_reproducao.usuario_id = usuario.usuario_id
JOIN SpotifyClone.plano ON usuario.plano_id = plano.plano_id AND plano.plano_id IN (2, 3)
GROUP BY `nome`
ORDER BY `nome`;
