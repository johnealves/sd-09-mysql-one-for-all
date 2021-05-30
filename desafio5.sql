CREATE VIEW top_2_hits_do_momento
AS SELECT
T2.cancao AS 'cancao',
COUNT(*) AS 'reproducoes'
FROM SpotifyClone.Historico AS T1
INNER JOIN SpotifyClone.Cancao AS T2
ON T1.cancao_id = T2.cancao_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;
