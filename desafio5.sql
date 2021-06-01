CREATE VIEW top_2_hits_do_momento AS
SELECT  musica.musica AS `cancao`,
        COUNT(musica.musica) AS `reproducoes`
FROM SpotifyClone.musica
JOIN SpotifyClone.historico_de_reproducao ON musica.musica_id = historico_de_reproducao.musica_id
GROUP BY `cancao`
ORDER BY  `reproducoes` DESC,
          `cancao`
LIMIT 2;
